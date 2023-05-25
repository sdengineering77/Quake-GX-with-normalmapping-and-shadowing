#ifdef GXGL

#include <system.h>
#include "quakedef.h"


static byte 		*shadowtexbuf;
static GXTexObj		shadowtexobj;
static GXTexRegion  shadowtexregion;


void R_SetupFrame(void);
void R_SetFrustum(void);
void R_SetupGL(void);
void R_MarkLeaves(void);
void R_MarkEntitiesOnList(void);
void R_DrawAmbientEntities(void);
void R_DrawEntitiesShadowVolumes(int type);
void GX_LoadGLModelView(void);

/*
================
void SHADOW_InitTex(int width, int height)

DRS TODO: Not so happy with this, need relocate?
================
*/
void SHADOW_InitTex(int width, int height) {
	int size = width * height;
	shadowtexbuf = (byte *) align32(malloc(size+32)); // 8bpp
	GX_InitTexObj(&shadowtexobj, shadowtexbuf, width, height, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
	
	// this region doesn't conflict with ogc default non 32 bit non mipmap texture setting
	// DRS TODO: make ogc more advanced
	GX_InitTexCacheRegion(&shadowtexregion, GX_FALSE, 0x80000, GX_TEXCACHE_512K, 0, GX_TEXCACHE_NONE);
	GX_LoadTexObjPreloaded(&shadowtexobj, &shadowtexregion, GX_TEXMAP5);
}


/*
================
R_RenderScene

r_refdef must be set before the first call
DRS: modified for GX
================
*/
void R_RenderScene (void)
{
	int i, scizzX, scizzY, scizzW,scizzH;
	shadowlight_t *l = NULL;
	
	R_SetupFrame ();
	R_SetFrustum ();

	R_SetupGL ();

	R_MarkLeaves ();	// done here so we know if we're in water, gaat visible leafs marken

	//if (!mirror)
	R_InitShadowsForFrame ();

	R_InitDrawWorld();

	//if (!mirror) {
		//To ensure invariance we have to enable scissoring even for the ambient term
		//But in reality this doen't work (at least on my Geforce2 card) and you still
		//get (few) z-buffer fighting.
	if (!sh_noscissor.value) {
		GX_SetScissor(r_Iviewport[0], r_Iviewport[1], r_Iviewport[2], r_Iviewport[3]);
	}

	//Ambient light drawing
	//this uses the light maps as an ambient term
    //it fills the z buffer
	R_SetupInstants();

	GX_SetupGLRender();
	GX_LoadGLModelView();

	//	DRS TODO R_DrawViewModel();
	R_DrawAmbientEntities();

	GX_LoadGLModelView();
	R_WorldMultiplyTextures();

	numClearsSaved = 0;
	aliasCacheRequests = aliasFullCacheHits = aliasPartialCacheHits = 0;
	brushCacheRequests = brushFullCacheHits = brushPartialCacheHits = 0;

	// DRS TODO: fog? glFogfv(GL_FOG_COLOR, color_black);
//Sys_Printf(">>>>> lighting\n");
	for (i=0; i<numUsedShadowLights; i++) {

		// DRS: don't bother finding a light that fits the unused stencil space as we'll clear when export to texture
		l = usedshadowlights[i];
		currentshadowlight = l;

		//Find the polygons that cast shadows for this light
		if (!R_FillShadowChain(l)) {
			continue;
		}
//Sys_Printf("light %p pos %4.1f %4.1f %4.1f radius %4.1f static %d OK\n", currentshadowlight, 
//	currentshadowlight->origin[0], 
//	currentshadowlight->origin[1], 
//	currentshadowlight->origin[2], 
//	currentshadowlight->radius,
//	currentshadowlight->isStatic);

		//All right now the shadow stuff

//Sys_Printf("scizzcoords %f %f %f %f\n", (float) l->scizz.coords[0], (float) l->scizz.coords[1],
//			(float) l->scizz.coords[2]-l->scizz.coords[0],  (float) l->scizz.coords[3]-l->scizz.coords[1]);
		scizzX = l->scizz.coords[0];
		scizzY = l->scizz.coords[1]; 
		scizzW = l->scizz.coords[2]-l->scizz.coords[0];
		scizzH = l->scizz.coords[3]-l->scizz.coords[1];
		GX_SetScissor(scizzX, scizzY, scizzW, scizzH);

		R_MarkEntitiesOnList();

		//Shadow casting is on by default
		if (l->castShadow)
		{
		    //Calculate the shadow volume (does nothing when static)
		    R_ConstructShadowVolume(l);

// DRS TODO: shadows
			//Pass 1 increase
			GX_LoadGLModelView();
			if (sh_worldshadows.value) {
				GX_InitShadowShader(true, false);
				R_DrawShadowVolume(l);

				// Second Pass. Decrease Stencil Value In The Shadow
				GX_InitShadowShader(false, false);
				R_DrawShadowVolume(l);
			}
			//PENTA: we could do the same thing for brushes as for aliasses // DRS It now does
			//Pass 1 increase
			if (sh_entityshadows.value) { 
				GX_InitShadowShader(true, false);
				R_DrawEntitiesShadowVolumes(mod_brush);
			
				// Second Pass. Decrease Stencil Value In The Shadow
				GX_InitShadowShader(false, false);
				R_DrawEntitiesShadowVolumes(mod_brush);
				
				GX_InitShadowShader(true, true);
				R_DrawEntitiesShadowVolumes(mod_alias);
				
				GX_InitShadowShader(false, true);
				R_DrawEntitiesShadowVolumes(mod_alias);

			}
		

			GX_GrabEFB(scizzX, scizzY, scizzW, scizzH, GX_CTF_A8, GX_TRUE, GX_FALSE, 1, shadowtexbuf);
			GX_InvalidateTexRegion(&shadowtexregion);
		}
		
		if (!sh_visiblevolumes.value) {
			GX_LoadGLModelView();
			R_DrawWorldBumped();
			// Z-buffer offset not available in GX glPolygonOffset(0,-5);
			R_DrawLightEntities(l);
		}

		if (!sh_visiblevolumes.value) {
//	DRS TODO			R_DrawLightSprites ();
		}

		if ((i%8) == 0) 
			// don't let sound get messed up if going slow
			S_ExtraUpdate ();	

		l->visible = false;
	}

	GX_SetScissor(0, 0, r_Iviewport[2], r_Iviewport[3]);

	// DRS TODO: fog? glFogfv(GL_FOG_COLOR, color_black);

	// DRS TODO R_DrawFullbrightSprites();
	
	if (skytexturenum >= 0) {
		// DRS TODO glColor3f(1,1,1);
		// DRS TODO R_DrawSkyChain (cl.worldmodel->textures[skytexturenum]->texturechain);
		cl.worldmodel->textures[skytexturenum]->texturechain = NULL;
	}


	// DRS TODO R_DrawCaustics();

	//Removed to fix particle & water bug (see R_RenderView) - Eradicator
	//R_DrawParticles (); //to fix the particles triangles showing up after water
						//put this behind the water drawing#ifdef GLTEST
	// DRS TODO R_DrawDecals();

	// DRS TODO again... fog... perhaps black color is just disabling it? glFogfv(GL_FOG_COLOR, fog_color);
	
}

/*
=================
R_SetupAliasFrame
DRS: modified for GX (and renamed form R_SetupAliasFrame)
=================
*/
void R_DrawAliasFrame (aliashdr_t *paliashdr, aliasframeinstant_t *instant)
{
	int		num;
	float   *texcoos, *vertices;
	float   *v, *t;
	int     *indecies, i;

	texcoos = (float *)((byte *)paliashdr + paliashdr->texcoords);
	indecies = (int *)((byte *)paliashdr + paliashdr->indecies);

	//glVertexPointer(3, GL_FLOAT, 0, instant->vertices); DRS TODO: will be faster too I guesssss
	//glEnableClientState(GL_VERTEX_ARRAY);
	
	//glNormalPointer(GL_FLOAT, 0, instant->normals);
	//glEnableClientState(GL_NORMAL_ARRAY);
	
	//glTexCoordPointer(2, GL_FLOAT, 0, texcoos);
	//glEnableClientState(GL_TEXTURE_COORD_ARRAY);
	num = paliashdr->numtris * 3; // 3 verts per tri
	vertices = (float *) &instant->vertices[0];
	//glDrawElements(GL_TRIANGLES, paliashdr->numtris*3, GL_UNSIGNED_INT, indecies);
	GX_Begin(GX_TRIANGLES, GX_VTXFMT1, num);
	for (i=0; i<num; i++) {
		v = &vertices[indecies[i]*3];
		t = &texcoos[indecies[i]*2];
		GX_Position3f32(v[0], v[1], v[2]);
		GX_TexCoord2f32(t[0], t[1]);
		GX_TexCoord2f32(t[0], t[1]);
//Sys_Printf("getting here\n");

	}
	
	GX_End();
}


/*
=================
R_DrawAliasSurface
DC : draw one surface from a model
DRS: modified for GX
=================
*/
void R_DrawAliasSurface (aliashdr_t *paliashdr, float bright, aliasframeinstant_t *instant) {

    int i;
	int	anim = (int)(cl.time*10) & 3;

	//
	// draw all the triangles
	//

	if (!busy_caustics) {
		// anim = (int)(cl.time*10) & 3;
		//GL_Bind(paliashdr->gl_texturenum[currententity->skinnum][anim]);

		// we can't dynamically colormap textures, so they are cached
		// seperately for the players.  Heads are just uncolored.
		if (currententity->colormap != vid.colormap && !gl_nocolors.value) {
			i = currententity - cl_entities;
			if (i >= 1 && i<=cl.maxclients /* && !strcmp (currententity->model->name, "progs/player.mdl") */) {
				GX_BindGLTex(GX_TEXMAP0, playertextures - 1 + i);
				//GL_Bind(playertextures - 1 + i);
			}
		} else { // DRS TODO: is this right? Players dont have anim?
			anim = (int)(cl.time*10) & 3;
			GX_BindGLTex(GX_TEXMAP0, paliashdr->gl_texturenum[currententity->skinnum][anim]);
		}
	}

	//XYZ

	// DRS: is this required? glColor3f(bright, bright, bright);

	// Draw luma if present
	if ( !busy_caustics ) {
	
		bool hasLuma = paliashdr->gl_lumatex[currententity->skinnum][anim] != 0;
		GX_InitAmbientShader(hasLuma);

		anim = (int)(cl.time*10) & 3;
		if (hasLuma) {
			GX_BindGLTex(GX_TEXMAP2, paliashdr->gl_lumatex[currententity->skinnum][anim]);
		}
		R_DrawAliasFrame (paliashdr, instant);

	} else {
		R_DrawAliasFrame (paliashdr, instant);
	}

	// DRS TODO:
	//if ((sh_showtangent.value) && (!busy_caustics)) {
	//	glDisable(GL_TEXTURE_2D);
    //  R_DrawAliasTangent(paliashdr, instant);
	//	glEnable(GL_TEXTURE_2D);
	//}

	c_alias_polys += paliashdr->numtris;


}



/*
================
R_DrawAliasModel (float bright)

DRS: modified for GX
================
*/
void R_DrawAliasModel (float bright)
{
	int			i,maxnumsurf;
	aliashdr_t	*paliashdr;
	aliasframeinstant_t *aliasframeinstant;
	alias3data_t *data;

	glPushMatrix ();

	R_RotateForEntity (currententity);
	GX_LoadGLModelView();

	data = (alias3data_t *)Mod_Extradata (currententity->model);
	maxnumsurf = data->numSurfaces;        

	aliasframeinstant = currententity->aliasframeinstant;
        
	//if (gl_affinemodels.value) {
	
        for (i=0;i<maxnumsurf;++i){

             paliashdr = (aliashdr_t *)((char*)data + data->ofsSurfaces[i]);
             
             if (!aliasframeinstant) {
                  glPopMatrix();
                  Con_Printf("R_DrawAliasModel: missing instant for ent %s\n", currententity->model->name);	
                  return;
             }
             
             /* disabled for now because it doesn't work with viewent 
             VectorAdd (currententity->origin,paliashdr->mins, mins);
             VectorAdd (currententity->origin,paliashdr->maxs, maxs);

             if (!R_CullBox (mins, maxs))   DRS: seems like a want to fix               */
                  R_DrawAliasSurface (paliashdr, bright, aliasframeinstant);                          
             aliasframeinstant = aliasframeinstant->_next; 
        }
	//}

	glPopMatrix ();
        
}
  

/*
================
R_DrawAliasFrameShadowVolume2 (aliashdr_t *paliashdr,aliasframeinstant_t *instant) {

DRS: modified for GX
================
*/
void R_DrawAliasFrameShadowVolume2 (aliashdr_t *paliashdr,aliasframeinstant_t *instant) {
    float *v;

	mtriangle_t	*tris, *triangle;
	int i, j;
	aliaslightinstant_t *linstant = instant->lightinstant;

	tris = (mtriangle_t *)((byte *)paliashdr + paliashdr->triangles);


	//FIXME: what's faster? less begin/ends or iterating the list multiple times?
	//extude vertices // DRS I think a choise was made or is this about separating
	// front and back caps and volume surfaces?
	triangle = tris;
	for (i=0; i<paliashdr->numtris; i++, triangle++) {

		if (linstant->triangleVis[i]) {

			for (j=0; j<3; j++) {

				qboolean shadow = false;
				if (triangle->neighbours[j] == -1) {
					shadow = true;
				} else if (!linstant->triangleVis[triangle->neighbours[j]]) {
					shadow = true;
				}

				if (shadow) {
					int index = triangle->vertindex[j];

					GX_Begin(GX_TRIANGLESTRIP, GX_VTXFMT3, 4);

					v = &instant->vertices[index][0];
					GX_Position3f32(v[0], v[1], v[2]);
					v = &linstant->extvertices[index][0];
					GX_Position3f32(v[0], v[1], v[2]);

					index = triangle->vertindex[(j+1)%3];
					v = &instant->vertices[index][0];
					GX_Position3f32(v[0], v[1], v[2]);
					v = &linstant->extvertices[index][0];
					GX_Position3f32(v[0], v[1], v[2]);

					GX_End();

				}
			}


			GX_Begin(GX_TRIANGLES, GX_VTXFMT3, 3);
			for (j=0; j<3; j++) {
				int index = triangle->vertindex[j];
				v = &instant->vertices[index][0];
				GX_Position3f32(v[0], v[1], v[2]);
			}
			GX_End();
			
			GX_Begin(GX_TRIANGLES, GX_VTXFMT3, 3);
			for (j=2; j>=0; j--) {
				v = &linstant->extvertices[triangle->vertindex[j]][0];
				GX_Position3f32(v[0], v[1], v[2]);
			}
			GX_End();
			
		}

	}
}


/*
================
void R_DrawAliasShadowVolume (entity_t *e)

DRS: modified for GX
================
*/
void R_DrawAliasShadowVolume (entity_t *e) {

    model_t		*clmodel;
    aliashdr_t	*paliashdr;
    alias3data_t    *data;
    aliasframeinstant_t *aliasframeinstant;        
    int i,maxnumsurf;

    currententity = e; // DRS TODO: seems unnecessary
	
    clmodel = currententity->model;

    /* no shadows casting for these */
    if (clmodel->flags & EF_NOSHADOW)
		return;

    //
    // locate the proper data
    //
    if (!e->aliasframeinstant) {
		Con_Printf("no instant for ent %s\n", clmodel->name);	
		return;
    }

    /*
      Don't cull to frustum models behind you may still cast shadows
  
      if (R_CullBox (mins, maxs))
      return;
    */

    VectorCopy (currententity->origin, r_entorigin);
    VectorSubtract (r_origin, r_entorigin, modelorg);

    //
    // locate the proper data
    //
    aliasframeinstant = e->aliasframeinstant;

    data = (alias3data_t *)Mod_Extradata (e->model);
    maxnumsurf = data->numSurfaces;        
        
    glPushMatrix ();
    R_RotateForEntity (e);
	GX_LoadGLModelView();
	
    for (i=0;i<maxnumsurf;++i) {
	
		paliashdr = (aliashdr_t *)((char*)data + data->ofsSurfaces[i]);
		
		if (!aliasframeinstant) {
			glPopMatrix ();
            Con_Printf("R_DrawAliasShadowVolume: missing instant for ent %s\n", e->model->name);	
			return;
		}
		
		if ((e->frame >= paliashdr->numframes) || (e->frame < 0))
		{
			glPopMatrix ();
			return;
		}
		
		//
		// draw all the triangles 
		// DRS: In contrast to GL version, this doesn't draw both front and back faces,
		// instead it's done like PENTA mentioned in renderScene (it saves some slow state changes...)
		// Its more likely to overflow the stencil buffer (alpha 6 bit) this way though...
		//GX_InitShadowShader(true);
		R_DrawAliasFrameShadowVolume2(paliashdr, aliasframeinstant);
		//GX_InitShadowShader(false);
		//R_DrawAliasFrameShadowVolume2(paliashdr, aliasframeinstant);
		aliasframeinstant = aliasframeinstant->_next;
    } /* for paliashdr */

    glPopMatrix();
}


#endif


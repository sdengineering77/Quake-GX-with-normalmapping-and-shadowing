
#include "quakedef.h"

/*
 * ===================================
 * void R_DrawWorldBumped()
 *
 * originally from glbumpdriver.c and implemented 
 * by card specific methods.
 * ===================================
 */
void R_DrawWorldBumped() { 

	GXColor color;

	int command, num, i;
	int lightPos = 0;
	lightcmd_t *lightCmds = currentshadowlight->lightCmds;

	//edit: modulation of light maps
	msurface_t *surf;
	float			*v, b;
	texture_t	*diffuse; // 
	
	if (!currentshadowlight->visible)
		return;

	// setup shader
	GX_InitWorldBumpShader(currentshadowlight, &r_worldentity);

	//support flickering lights
	b = d_lightstylevalue[currentshadowlight->style]/255.0f;
	if (b > 1.0f) { // DRS clamp top
		b = 1.0f;
	}
	
	while (1) {
		
		command = lightCmds[lightPos++].asInt;
		if (command == 0) break; //end of list

		//edit: modulation of light maps
		surf = lightCmds[lightPos++].asVoid;

		if (surf->visframe != r_framecount) {
			lightPos+=(4+surf->polys->numverts*(2+3));
			continue;
		}

		// diffuse texure
		diffuse = R_TextureAnimation (surf->texinfo->texture);
	    GX_BindGLTex(GX_TEXMAP0, diffuse->gl_texturenum);
	
		num = surf->polys->numverts;
		v = (float *)(&globalVertexTable[surf->polys->firstvertex]);
			
		// lightcolor
		color.r = 255 * (&lightCmds[lightPos].asFloat)[0] * b;
		color.g = 255 * (&lightCmds[lightPos].asFloat)[1] * b;
		color.b = 255 * (&lightCmds[lightPos].asFloat)[2] * b;
		color.a = 255 * b;
		GX_SetTevColor(GX_TEVREG2, color);
		
		lightPos+=4;

		GX_Begin(GX_AsGXPrimitiveType(command), GX_VTXFMT2, num);
		for (i=0; i<num; i++, v+= VERTEXSIZE) {
			float *attnVertices = &lightCmds[lightPos].asFloat;
			GX_Position3f32(v[0], v[1], v[2]);		
			GX_TexCoord2f32(v[3], v[4]); // diffuse
			GX_TexCoord2f32(attnVertices[0], attnVertices[1]); // attenuation
//Sys_Printf("attn s,t %4.4f %4.4f\n", attnVertices[0], attnVertices[1]);			
			lightPos+=2;
			lightPos+=3;
		}

		GX_End();

	}
	
}


/*
=============
GL_DrawBrushBumped

Draw a brush entity with bump maps
=============
*/
void R_DrawBrushBumped(entity_t *e) {
	GXColor color;

	msurface_t	*surf;
	glpoly_t	*poly;
	int			i, j, count, countc;
	float		*v, bright;
	texture_t	*t;

	model_t				*model = e->model;
	brushlightinstant_t *ins = e->brushlightinstant;

	count = 0;
	countc = 0;
	
	// setup shader
	GX_InitWorldBumpShader(currentshadowlight, e);
	
	surf = &model->surfaces[model->firstmodelsurface];
	for (i=0; i<model->nummodelsurfaces; i++, surf++) 	{
	
		if (!ins->polygonVis[i]) continue;

		poly = surf->polys;

		bright = ins->colorscales[countc];
		if (bright > 1.0f) { // DRS clamp top
			bright = 1.0f;
		}
		countc++;

		//XYZ
		t = R_TextureAnimation (surf->texinfo->texture);
	    GX_BindGLTex(GX_TEXMAP0, t->gl_texturenum);

		// lightcolor
		color.r = 255 * currentshadowlight->color[0] * bright; // DRS TODO: for colormap currentshadowlight->baseColor[0]...
		color.g = 255 * currentshadowlight->color[1] * bright;
		color.b = 255 * currentshadowlight->color[2] * bright;
		color.a = 255 * bright;
		GX_SetTevColor(GX_TEVREG2, color);

		GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT2, poly->numverts);

		v = (float *)(&globalVertexTable[poly->firstvertex]);
		for (j=0 ; j<poly->numverts ; j++, v+= VERTEXSIZE) {
	
			float *attnVertices = &ins->atencoords[count+j][0];
			GX_Position3f32(v[0], v[1], v[2]);		
			GX_TexCoord2f32(v[3], v[4]); // diffuse
			GX_TexCoord2f32(attnVertices[0], attnVertices[1]); // attenuation
			
		}
		GX_End();
		
		count+=surf->numedges;
	}	
}


/*
=============
R_DrawBrushObjectLight

Idea: Creepy object oriented programming by using function pointers.
Function: Puts the light into object space, adapts the world->eye matrix
and calls BrushGeoSender if all that has been done.
Cleans up afterwards so nothing has changed.
=============
*/
void R_DrawBrushObjectLightGX(entity_t *e) {
	
	model_t		*clmodel;
	
	vec3_t oldlightorigin;
	//backup light origin since we will have to translate
	//light into model space
	VectorCopy (currentshadowlight->origin, oldlightorigin);
	
	currententity = e;
	currenttexture = -1;
	
	clmodel = e->model;
	
    glPushMatrix ();
	e->angles[0] = -e->angles[0];	// stupid quake bug
	R_RotateForEntity (e);
	e->angles[0] = -e->angles[0];	// stupid quake bug
	
	GX_LoadGLModelView();
	R_DrawBrushBumped(e);
	
	VectorCopy(oldlightorigin,currentshadowlight->origin);
	glPopMatrix ();
}

/*
 * ===================================
 * void R_DrawLightEntities()
 *
 * originally from glbumpdriver.c and implemented 
 * by card specific methods.
 * ===================================
 */
void R_DrawLightEntities (shadowlight_t *l)
{
    int		i;
    //float	pos[4];
    if (!r_drawentities.value)
		return;

    if (!currentshadowlight->visible)
		return; 

    //Meshes: Atten & selfshadow via vertex ligting

	// DRS TODO: is this required? pos[0] = l->origin[0];
	//   pos[1] = l->origin[1];
	//   pos[2] = l->origin[2];
	//   pos[3] = 1;
	//   glLightfv(GL_LIGHT0, GL_POSITION,&pos[0]);
	//   glLightfv(GL_LIGHT0, GL_DIFFUSE, &l->color[0]);
	//   glLightfv(GL_LIGHT0, GL_AMBIENT, &gl_Light_Ambience2[0]);
	//   glLightfv(GL_LIGHT0, GL_SPECULAR, &gl_Light_Specular2[0]);
    //   glEnable(GL_COLOR_MATERIAL);


    /*for (i=0 ; i<cl_numlightvisedicts ; i++) {
	
		currententity = cl_lightvisedicts[i];

		if (currententity->model->type == mod_alias) {
			//these models are full bright 
			if (currententity->model->flags & EF_FULLBRIGHT) continue;
			if (!currententity->aliasframeinstant) continue;
			if ( ((aliasframeinstant_t *)currententity->aliasframeinstant)->shadowonly) continue;

			R_DrawAliasObjectLight(currententity, R_DrawAliasBumped);
		}
	}

    if (R_ShouldDrawViewModel()) {
		R_DrawAliasObjectLight(&cl.viewent, R_DrawAliasBumped);
    }*/


    // Brushes: we use the same thecnique as the world
    for (i=0 ; i<cl_numlightvisedicts ; i++) {
		currententity = cl_lightvisedicts[i];

		if (currententity->model->type == mod_brush) {
			if (!currententity->brushlightinstant) 
				continue;
			if ( ((brushlightinstant_t *)currententity->brushlightinstant)->shadowonly) 
				continue;
			// DRS don't bother to use func() as this is GX only
			R_DrawBrushObjectLightGX(currententity);
		}
	
    }
	
}





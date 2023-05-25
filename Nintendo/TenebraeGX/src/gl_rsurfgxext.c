/**
 * GPL License blah blah blah....
 * 
 * DRS
 *
 */


#include "quakedef.h"

extern int			lightmap_textures;
extern glpoly_t		*lightmap_polys[MAX_LIGHTMAPS];


void GX_LoadGLModelView(void);

/*
================
DrawTextureChainsGX
DRS: gx specific version (stage 0=read colortex, stage 1=modulate with legacy lightmap, stage 2=add luma)
We fill the causistics chain here!
================
*/

void DrawTextureChainsGX (void)
{
//	testGX();
	int		i, j;
	msurface_t	*s;
	texture_t	*t, *tani;
	glpoly_t *p;
	float	*v;
	qboolean	hasLuma;
	qboolean	found = false;

//	TODO: glColor3f(sh_lightmapbright.value,sh_lightmapbright.value,sh_lightmapbright.value);
//  TODO: if (sh_colormaps.value) {
//  TODO: if (gl_wireframe.value) {
	causticschain = NULL; //clear chain here

	for (i=0 ; i<cl.worldmodel->numtextures ; i++)
	{
		t = cl.worldmodel->textures[i];
		if (!t)
			continue;

		s = t->texturechain;
		if (!s)
			continue;

		found = true;

		if (i == skytexturenum) {
			continue;
		}
		{ // DRS: messy....
			//PENTA: water at end of frame
			if (s->flags & SURF_DRAWTURB)
				continue;

			// bind the diffuse map
			tani = R_TextureAnimation (s->texinfo->texture);
			GX_BindGLTex(GX_TEXMAP0, tani->gl_texturenum);
			
			// bind the luma map 
			hasLuma = t->gl_lumitex ? true : false;
			if (hasLuma) {
				GX_BindGLTex(GX_TEXMAP2, t->gl_lumitex);
			}
			
			//Do the ambient pass
			//now with arrays! // DRS ehm, TODO
			while (s) {
				GX_BindGLTex(GX_TEXMAP1, lightmap_textures + s->lightmaptexturenum);
				GX_InitAmbientShader(hasLuma);

				p = s->polys;
				v = (float *)(&globalVertexTable[p->firstvertex]);
				
				GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT1, p->numverts);

				for (j=0; j<p->numverts; j++, v+= VERTEXSIZE) {
					GX_Position3f32(v[0], v[1], v[2]);
					GX_TexCoord2f32(v[3], v[4]); // diffuse, luma
					GX_TexCoord2f32(v[5], v[6]); // lightmap
				}

				GX_End();					
				
				// TODO???: glDrawArrays(GL_TRIANGLE_FAN,s->polys->firstvertex,s->polys->numverts);

				s=s->texturechain;
				c_brush_polys ++;
			}

			s = t->texturechain;
			//Make cauistics list // DRS TODO: perhaps could be drawn in this pass just as well...
			while (s) {
				msurface_t *olds;
				olds = s;
				s=s->texturechain;
				//attach the surface for caustics drawing (post multipyied later)
				if (olds->flags & SURF_UNDERWATER) {
					olds->texturechain = causticschain;
					causticschain = olds;
				}
			}

		}

		t->texturechain = NULL;
	}
}

/*
================
R_RenderBrushPoly

PENTA: Modifications
DRS: GX
================
*/
void R_RenderBrushPoly (msurface_t *fa)
{
	texture_t	*t;
	glpoly_t	*p;
	int		i;
	float	*v;
	qboolean	hasLuma;

	if (fa->flags & SURF_DRAWSKY)
	{	// warp texture, no lightmaps
		EmitBothSkyLayers (fa);
		return;
	}
	
	t = R_TextureAnimation (fa->texinfo->texture);
	GX_BindGLTex(GX_TEXMAP0, t->gl_texturenum);

	if (fa->flags & SURF_DRAWTURB)
	{	// warp texture, no lightmaps
		EmitWaterPolys (fa);
		return;
	}

	// bind the luma map 
	hasLuma = t->gl_lumitex ? true : false;
	if (hasLuma) {
		GX_BindGLTex(GX_TEXMAP2, t->gl_lumitex);
	}

	// bind the lightmap (once we get enough memory free to load em that is:)
	GX_BindGLTex(GX_TEXMAP1, lightmap_textures + fa->lightmaptexturenum);
	GX_InitAmbientShader(hasLuma);

	p = fa->polys;
	v = (float *)(&globalVertexTable[p->firstvertex]);
	
	GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT1, p->numverts);

	for (i=0; i<p->numverts; i++, v+= VERTEXSIZE) {
		GX_Position3f32(v[0], v[1], v[2]);
		GX_TexCoord2f32(v[3], v[4]); // diffuse, luma
		GX_TexCoord2f32(v[5], v[6]); // lightmap
	}

	GX_End();					
	
}


/*
=================
R_DrawBrushModel

PENTA: Modifications
DRS: GX
=================
*/
void R_DrawBrushModel (entity_t *e)
{
    vec3_t		mins, maxs;
    int			i;
    msurface_t	*psurf;
    mplane_t	*pplane;
    model_t		*clmodel;
    qboolean	rotated;

    currententity = e;
    currenttexture = -1;

    clmodel = e->model;

    if (e->angles[0] || e->angles[1] || e->angles[2])
    {
		rotated = true;
		for (i=0 ; i<3 ; i++)
		{
			mins[i] = e->origin[i] - clmodel->radius;
			maxs[i] = e->origin[i] + clmodel->radius;
		}
    }
    else
    {
		rotated = false;
		VectorAdd (e->origin, clmodel->mins, mins);
		VectorAdd (e->origin, clmodel->maxs, maxs);
    }

    if (R_CullBox (mins, maxs))
		return;

    memset (lightmap_polys, 0, sizeof(lightmap_polys));

    VectorSubtract (r_refdef.vieworg, e->origin, modelorg);
    if (rotated)
    {
		vec3_t	temp;
		vec3_t	forward, right, up;

		VectorCopy (modelorg, temp);
		AngleVectors (e->angles, forward, right, up);
		modelorg[0] = DotProduct (temp, forward);
		modelorg[1] = -DotProduct (temp, right);
		modelorg[2] = DotProduct (temp, up);
    }

    psurf = &clmodel->surfaces[clmodel->firstmodelsurface];

    glPushMatrix ();
    e->angles[0] = -e->angles[0];	// stupid quake bug
    R_RotateForEntity (e);
    e->angles[0] = -e->angles[0];	// stupid quake bug

	// DRS TODO: this isn't too handy (but probably stays)
	GX_LoadGLModelView();

    //Draw model with specified ambient color
    if (!busy_caustics) {
		// DRS TODO: load in KONST glColor3f(sh_lightmapbright.value,sh_lightmapbright.value,sh_lightmapbright.value);
    } else {
		// DRS TODO: load in KONST glColor3f(1,1,1);
		// might be a bad design as we need to setup the correct shader for this anyway
		// mmm perhaps Tenebrae reuses this method to draw caustics in fullbright?
		// in that case we could use another shader command to blend it in the ambient pass
    }

    //XYZ

    // DRS TODO: if (gl_wireframe.value) {

    c_brush_polys += clmodel->nummodelsurfaces;
    //
    // draw texture
    //
    for (i=0 ; i<clmodel->nummodelsurfaces ; i++, psurf++)
    {
		// find which side of the node we are on
		pplane = psurf->plane;

		R_RenderBrushPoly (psurf);
    }

    glPopMatrix ();

}





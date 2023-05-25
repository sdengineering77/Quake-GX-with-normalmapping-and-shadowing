/*
===========================================================================

Doom 3 GPL Source Code
Copyright (C) 1999-2011 id Software LLC, a ZeniMax Media company. 

This file is part of the Doom 3 GPL Source Code (?Doom 3 Source Code?).  

Doom 3 Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Doom 3 Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Doom 3 Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the Doom 3 Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the Doom 3 Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "Model_lwo.h"

/*
======================================================================

	Converted from lwobject sample prog from LW 6.5 SDK.

======================================================================
*/

/*
======================================================================
lwFreeClip()

Free memory used by an lwClip.
====================================================================== */

void lwFreeClip( lwClip *clip )
{
    Sys_Printf("void lwFreeClip( lwClip *clip )\r\n");
}



/*
======================================================================
lwGetClip()

Read image references from a CLIP chunk in an LWO2 file.
====================================================================== */

lwClip *lwGetClip( idFile *fp, int cksize )
{
    Sys_Printf("lwClip *lwGetClip( idFile *fp, int cksize )\r\n");
    return NULL;
}



/*
======================================================================
lwFindClip()

Returns an lwClip pointer, given a clip index.
====================================================================== */

lwClip *lwFindClip( lwClip *list, int index )
{
    Sys_Printf("lwClip *lwFindClip( lwClip *list, int index )\r\n");
    return NULL;
}



/*
======================================================================
lwFreeEnvelope()

Free the memory used by an lwEnvelope.
====================================================================== */

void lwFree( void *ptr ) {
    Sys_Printf("void lwFree( void *ptr )\r\n");
}


void lwFreeEnvelope( lwEnvelope *env )
{
    Sys_Printf("void lwFreeEnvelope( lwEnvelope *env )\r\n");
}



static int compare_keys( lwKey *k1, lwKey *k2 )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int compare_keys( lwKey *k1, lwKey *k2 )\r\n");
    return retVal;
}



/*
======================================================================
lwGetEnvelope()

Read an ENVL chunk from an LWO2 file.
====================================================================== */

lwEnvelope *lwGetEnvelope( idFile *fp, int cksize )
{
    Sys_Printf("lwEnvelope *lwGetEnvelope( idFile *fp, int cksize )\r\n");
    return NULL;
}



/*
======================================================================
lwFindEnvelope()

Returns an lwEnvelope pointer, given an envelope index.
====================================================================== */

lwEnvelope *lwFindEnvelope( lwEnvelope *list, int index )
{
    Sys_Printf("lwEnvelope *lwFindEnvelope( lwEnvelope *list, int index )\r\n");
    return NULL;
}



/*
======================================================================
range()

Given the value v of a periodic function, returns the equivalent value
v2 in the principal interval [lo, hi].  If i isn't NULL, it receives
the number of wavelengths between v and v2.

   v2 = v - i * (hi - lo)

For example, range( 3 pi, 0, 2 pi, i ) returns pi, with i = 1.
====================================================================== */

static float range( float v, float lo, float hi, int *i )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float range( float v, float lo, float hi, int *i )\r\n");
    return retVal;
}



/*
======================================================================
hermite()

Calculate the Hermite coefficients.
====================================================================== */

static void hermite( float t, float *h1, float *h2, float *h3, float *h4 )
{
    Sys_Printf("void hermite( float t, float *h1, float *h2, float *h3, float *h4 )\r\n");
}



/*
======================================================================
bezier()

Interpolate the value of a 1D Bezier curve.
====================================================================== */

static float bezier( float x0, float x1, float x2, float x3, float t )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float bezier( float x0, float x1, float x2, float x3, float t )\r\n");
    return retVal;
}



/*
======================================================================
bez2_time()

Find the t for which bezier() returns the input time.  The handle
endpoints of a BEZ2 curve represent the control points, and these have
(time, value) coordinates, so time is used as both a coordinate and a
parameter for this curve type.
====================================================================== */

static float bez2_time( float x0, float x1, float x2, float x3, float time,
   float *t0, float *t1 )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float bez2_time( float x0, float x1, float x2, float x3, float time, float *t0, float *t1 )\r\n");
    return retVal;
}



/*
======================================================================
bez2()

Interpolate the value of a BEZ2 curve.
====================================================================== */

static float bez2( lwKey *key0, lwKey *key1, float time )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float bez2( lwKey *key0, lwKey *key1, float time )\r\n");
    return retVal;
}



/*
======================================================================
outgoing()

Return the outgoing tangent to the curve at key0.  The value returned
for the BEZ2 case is used when extrapolating a linear pre behavior and
when interpolating a non-BEZ2 span.
====================================================================== */

static float outgoing( lwKey *key0, lwKey *key1 )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float outgoing( lwKey *key0, lwKey *key1 )\r\n");
    return retVal;
}



/*
======================================================================
incoming()

Return the incoming tangent to the curve at key1.  The value returned
for the BEZ2 case is used when extrapolating a linear post behavior.
====================================================================== */

static float incoming( lwKey *key0, lwKey *key1 )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float incoming( lwKey *key0, lwKey *key1 )\r\n");
    return retVal;
}



/*
======================================================================
evalEnvelope()

Given a list of keys and a time, returns the interpolated value of the
envelope at that time.
====================================================================== */

float evalEnvelope( lwEnvelope *env, float time )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float evalEnvelope( lwEnvelope *env, float time )\r\n");
    return retVal;
}




/*
======================================================================
lwListFree()

Free the items in a list.
====================================================================== */

void lwListFree( void *list, void ( *freeNode )( void * ))
{
   lwNode *node, *next;

   node = ( lwNode * ) list;
   while ( node ) {
      next = node->next;
      freeNode( node );
      node = next;
   }
}


/*
======================================================================
lwListAdd()

Append a node to a list.
====================================================================== */

void lwListAdd( void **list, void *node )
{
    Sys_Printf("void lwListAdd( void **list, void *node )\r\n");
}



/*
======================================================================
lwListInsert()

Insert a node into a list in sorted order.
====================================================================== */

void lwListInsert( void **vlist, void *vitem, int ( *compare )( void *, void * ))
{
   lwNode **list, *item, *node, *prev;

   if ( !*vlist ) {
      *vlist = vitem;
      return;
   }

   list = ( lwNode ** ) vlist;
   item = ( lwNode * ) vitem;
   node = *list;
   prev = NULL;

   while ( node ) {
      if ( 0 < compare( node, item )) break;
      prev = node;
      node = node->next;
   }

   if ( !prev ) {
      *list = item;
      node->prev = item;
      item->next = node;
   }
   else if ( !node ) {
      prev->next = item;
      item->prev = prev;
   }
   else {
      item->next = node;
      item->prev = prev;
      prev->next = item;
      node->prev = item;
   }
}

/*
======================================================================
flen

This accumulates a count of the number of bytes read.  Callers can set
it at the beginning of a sequence of reads and then retrieve it to get
the number of bytes actually read.  If one of the I/O functions fails,
flen is set to an error code, after which the I/O functions ignore
read requests until flen is reset.
====================================================================== */

#define FLEN_ERROR -9999

static int flen;

void set_flen( int i ) {
    Sys_Printf("void set_flen( int i )\r\n");
}


int get_flen( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int get_flen( void )\r\n");
    return retVal;
}


void *getbytes( idFile *fp, int size )
{
    Sys_Printf("void *getbytes( idFile *fp, int size )\r\n");
    return NULL;
}



void skipbytes( idFile *fp, int n )
{
    Sys_Printf("void skipbytes( idFile *fp, int n )\r\n");
}



int getI1( idFile *fp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int getI1( idFile *fp )\r\n");
    return retVal;
}



short getI2( idFile *fp )
{
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short getI2( idFile *fp )\r\n");
    return retVal;
}



int getI4( idFile *fp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int getI4( idFile *fp )\r\n");
    return retVal;
}



unsigned char getU1( idFile *fp )
{
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char getU1( idFile *fp )\r\n");
    return retVal;
}



unsigned short getU2( idFile *fp )
{
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short getU2( idFile *fp )\r\n");
    return retVal;
}



unsigned int getU4( idFile *fp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int getU4( idFile *fp )\r\n");
    return retVal;
}



int getVX( idFile *fp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int getVX( idFile *fp )\r\n");
    return retVal;
}



float getF4( idFile *fp )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float getF4( idFile *fp )\r\n");
    return retVal;
}



char *getS0( idFile *fp )
{
    Sys_Printf("char *getS0( idFile *fp )\r\n");
    return NULL;
}



int sgetI1( unsigned char **bp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int sgetI1( unsigned char **bp )\r\n");
    return retVal;
}



short sgetI2( unsigned char **bp )
{
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short sgetI2( unsigned char **bp )\r\n");
    return retVal;
}



int sgetI4( unsigned char **bp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int sgetI4( unsigned char **bp )\r\n");
    return retVal;
}



unsigned char sgetU1( unsigned char **bp )
{
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char sgetU1( unsigned char **bp )\r\n");
    return retVal;
}



unsigned short sgetU2( unsigned char **bp )
{
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short sgetU2( unsigned char **bp )\r\n");
    return retVal;
}



unsigned int sgetU4( unsigned char **bp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int sgetU4( unsigned char **bp )\r\n");
    return retVal;
}



int sgetVX( unsigned char **bp )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int sgetVX( unsigned char **bp )\r\n");
    return retVal;
}



float sgetF4( unsigned char **bp )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float sgetF4( unsigned char **bp )\r\n");
    return retVal;
}



char *sgetS0( unsigned char **bp )
{
    Sys_Printf("char *sgetS0( unsigned char **bp )\r\n");
    return NULL;
}


/*
======================================================================
lwFreeLayer()

Free memory used by an lwLayer.
====================================================================== */

void lwFreeLayer( lwLayer *layer )
{
    Sys_Printf("void lwFreeLayer( lwLayer *layer )\r\n");
}



/*
======================================================================
lwFreeObject()

Free memory used by an lwObject.
====================================================================== */

void lwFreeObject( lwObject *object )
{
    Sys_Printf("void lwFreeObject( lwObject *object )\r\n");
}



/*
======================================================================
lwGetObject()

Returns the contents of a LightWave object, given its filename, or
NULL if the file couldn't be loaded.  On failure, failID and failpos
can be used to diagnose the cause.

1.  If the file isn't an LWO2 or an LWOB, failpos will contain 12 and
    failID will be unchanged.

2.  If an error occurs while reading, failID will contain the most
    recently read IFF chunk ID, and failpos will contain the value
    returned by fp->Tell() at the time of the failure.

3.  If the file couldn't be opened, or an error occurs while reading
    the first 12 bytes, both failID and failpos will be unchanged.

If you don't need this information, failID and failpos can be NULL.
====================================================================== */

lwObject *lwGetObject( const char *filename, unsigned int *failID, int *failpos )
{
    Sys_Printf("lwObject *lwGetObject( const char *filename, unsigned int *failID, int *failpos )\r\n");
    return NULL;
}





/* IDs specific to LWOB */

#define ID_SRFS  LWID_('S','R','F','S')
#define ID_FLAG  LWID_('F','L','A','G')
#define ID_VLUM  LWID_('V','L','U','M')
#define ID_VDIF  LWID_('V','D','I','F')
#define ID_VSPC  LWID_('V','S','P','C')
#define ID_RFLT  LWID_('R','F','L','T')
#define ID_BTEX  LWID_('B','T','E','X')
#define ID_CTEX  LWID_('C','T','E','X')
#define ID_DTEX  LWID_('D','T','E','X')
#define ID_LTEX  LWID_('L','T','E','X')
#define ID_RTEX  LWID_('R','T','E','X')
#define ID_STEX  LWID_('S','T','E','X')
#define ID_TTEX  LWID_('T','T','E','X')
#define ID_TFLG  LWID_('T','F','L','G')
#define ID_TSIZ  LWID_('T','S','I','Z')
#define ID_TCTR  LWID_('T','C','T','R')
#define ID_TFAL  LWID_('T','F','A','L')
#define ID_TVEL  LWID_('T','V','E','L')
#define ID_TCLR  LWID_('T','C','L','R')
#define ID_TVAL  LWID_('T','V','A','L')
#define ID_TAMP  LWID_('T','A','M','P')
#define ID_TIMG  LWID_('T','I','M','G')
#define ID_TAAS  LWID_('T','A','A','S')
#define ID_TREF  LWID_('T','R','E','F')
#define ID_TOPC  LWID_('T','O','P','C')
#define ID_SDAT  LWID_('S','D','A','T')
#define ID_TFP0  LWID_('T','F','P','0')
#define ID_TFP1  LWID_('T','F','P','1')


/*
======================================================================
add_clip()

Add a clip to the clip list.  Used to store the contents of an RIMG or
TIMG surface subchunk.
====================================================================== */

static int add_clip( char *s, lwClip **clist, int *nclips )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int add_clip( char *s, lwClip **clist, int *nclips )\r\n");
    return retVal;
}



/*
======================================================================
add_tvel()

Add a triple of envelopes to simulate the old texture velocity
parameters.
====================================================================== */

static int add_tvel( float pos[], float vel[], lwEnvelope **elist, int *nenvs )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int add_tvel( float pos[], float vel[], lwEnvelope **elist, int *nenvs )\r\n");
    return retVal;
}



/*
======================================================================
get_texture()

Create a new texture for BTEX, CTEX, etc. subchunks.
====================================================================== */

static lwTexture *get_texture( char *s )
{
    Sys_Printf("lwTexture *get_texture( char *s )\r\n");
    return NULL;
}



/*
======================================================================
lwGetSurface5()

Read an lwSurface from an LWOB file.
====================================================================== */

lwSurface *lwGetSurface5( idFile *fp, int cksize, lwObject *obj )
{
    Sys_Printf("lwSurface *lwGetSurface5( idFile *fp, int cksize, lwObject *obj )\r\n");
    return NULL;
}



/*
======================================================================
lwGetPolygons5()

Read polygon records from a POLS chunk in an LWOB file.  The polygons
are added to the array in the lwPolygonList.
====================================================================== */

int lwGetPolygons5( idFile *fp, int cksize, lwPolygonList *plist, int ptoffset )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetPolygons5( idFile *fp, int cksize, lwPolygonList *plist, int ptoffset )\r\n");
    return retVal;
}



/*
======================================================================
getLWObject5()

Returns the contents of an LWOB, given its filename, or NULL if the
file couldn't be loaded.  On failure, failID and failpos can be used
to diagnose the cause.

1.  If the file isn't an LWOB, failpos will contain 12 and failID will
    be unchanged.

2.  If an error occurs while reading an LWOB, failID will contain the
    most recently read IFF chunk ID, and failpos will contain the
    value returned by fp->Tell() at the time of the failure.

3.  If the file couldn't be opened, or an error occurs while reading
    the first 12 bytes, both failID and failpos will be unchanged.

If you don't need this information, failID and failpos can be NULL.
====================================================================== */

lwObject *lwGetObject5( const char *filename, unsigned int *failID, int *failpos )
{
    Sys_Printf("lwObject *lwGetObject5( const char *filename, unsigned int *failID, int *failpos )\r\n");
    return NULL;
}


/*
======================================================================
lwFreePoints()

Free the memory used by an lwPointList.
====================================================================== */

void lwFreePoints( lwPointList *point )
{
    Sys_Printf("void lwFreePoints( lwPointList *point )\r\n");
}



/*
======================================================================
lwFreePolygons()

Free the memory used by an lwPolygonList.
====================================================================== */

void lwFreePolygons( lwPolygonList *plist )
{
    Sys_Printf("void lwFreePolygons( lwPolygonList *plist )\r\n");
}



/*
======================================================================
lwGetPoints()

Read point records from a PNTS chunk in an LWO2 file.  The points are
added to the array in the lwPointList.
====================================================================== */

int lwGetPoints( idFile *fp, int cksize, lwPointList *point )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetPoints( idFile *fp, int cksize, lwPointList *point )\r\n");
    return retVal;
}



/*
======================================================================
lwGetBoundingBox()

Calculate the bounding box for a point list, but only if the bounding
box hasn't already been initialized.
====================================================================== */

void lwGetBoundingBox( lwPointList *point, float bbox[] )
{
    Sys_Printf("void lwGetBoundingBox( lwPointList *point, float bbox[] )\r\n");
}



/*
======================================================================
lwAllocPolygons()

Allocate or extend the polygon arrays to hold new records.
====================================================================== */

int lwAllocPolygons( lwPolygonList *plist, int npols, int nverts )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwAllocPolygons( lwPolygonList *plist, int npols, int nverts )\r\n");
    return retVal;
}



/*
======================================================================
lwGetPolygons()

Read polygon records from a POLS chunk in an LWO2 file.  The polygons
are added to the array in the lwPolygonList.
====================================================================== */

int lwGetPolygons( idFile *fp, int cksize, lwPolygonList *plist, int ptoffset )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetPolygons( idFile *fp, int cksize, lwPolygonList *plist, int ptoffset )\r\n");
    return retVal;
}



/*
======================================================================
lwGetPolyNormals()

Calculate the polygon normals.  By convention, LW's polygon normals
are found as the cross product of the first and last edges.  It's
undefined for one- and two-point polygons.
====================================================================== */

void lwGetPolyNormals( lwPointList *point, lwPolygonList *polygon )
{
    Sys_Printf("void lwGetPolyNormals( lwPointList *point, lwPolygonList *polygon )\r\n");
}



/*
======================================================================
lwGetPointPolygons()

For each point, fill in the indexes of the polygons that share the
point.  Returns 0 if any of the memory allocations fail, otherwise
returns 1.
====================================================================== */

int lwGetPointPolygons( lwPointList *point, lwPolygonList *polygon )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetPointPolygons( lwPointList *point, lwPolygonList *polygon )\r\n");
    return retVal;
}



/*
======================================================================
lwResolvePolySurfaces()

Convert tag indexes into actual lwSurface pointers.  If any polygons
point to tags for which no corresponding surface can be found, a
default surface is created.
====================================================================== */

int lwResolvePolySurfaces( lwPolygonList *polygon, lwTagList *tlist,
   lwSurface **surf, int *nsurfs )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwResolvePolySurfaces( lwPolygonList *polygon, lwTagList *tlist, lwSurface **surf, int *nsurfs )\r\n");
    return retVal;
}



/*
======================================================================
lwGetVertNormals()

Calculate the vertex normals.  For each polygon vertex, sum the
normals of the polygons that share the point.  If the normals of the
current and adjacent polygons form an angle greater than the max
smoothing angle for the current polygon's surface, the normal of the
adjacent polygon is excluded from the sum.  It's also excluded if the
polygons aren't in the same smoothing group.

Assumes that lwGetPointPolygons(), lwGetPolyNormals() and
lwResolvePolySurfaces() have already been called.
====================================================================== */

void lwGetVertNormals( lwPointList *point, lwPolygonList *polygon )
{
    Sys_Printf("void lwGetVertNormals( lwPointList *point, lwPolygonList *polygon )\r\n");
}



/*
======================================================================
lwFreeTags()

Free memory used by an lwTagList.
====================================================================== */

void lwFreeTags( lwTagList *tlist )
{
    Sys_Printf("void lwFreeTags( lwTagList *tlist )\r\n");
}



/*
======================================================================
lwGetTags()

Read tag strings from a TAGS chunk in an LWO2 file.  The tags are
added to the lwTagList array.
====================================================================== */

int lwGetTags( idFile *fp, int cksize, lwTagList *tlist )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetTags( idFile *fp, int cksize, lwTagList *tlist )\r\n");
    return retVal;
}



/*
======================================================================
lwGetPolygonTags()

Read polygon tags from a PTAG chunk in an LWO2 file.
====================================================================== */

int lwGetPolygonTags( idFile *fp, int cksize, lwTagList *tlist, lwPolygonList *plist )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetPolygonTags( idFile *fp, int cksize, lwTagList *tlist, lwPolygonList *plist )\r\n");
    return retVal;
}



/*
======================================================================
lwFreePlugin()

Free the memory used by an lwPlugin.
====================================================================== */

void lwFreePlugin( lwPlugin *p )
{
    Sys_Printf("void lwFreePlugin( lwPlugin *p )\r\n");
}



/*
======================================================================
lwFreeTexture()

Free the memory used by an lwTexture.
====================================================================== */

void lwFreeTexture( lwTexture *t )
{
    Sys_Printf("void lwFreeTexture( lwTexture *t )\r\n");
}



/*
======================================================================
lwFreeSurface()

Free the memory used by an lwSurface.
====================================================================== */

void lwFreeSurface( lwSurface *surf )
{
    Sys_Printf("void lwFreeSurface( lwSurface *surf )\r\n");
}



/*
======================================================================
lwGetTHeader()

Read a texture map header from a SURF.BLOK in an LWO2 file.  This is
the first subchunk in a BLOK, and its contents are common to all three
texture types.
====================================================================== */

int lwGetTHeader( idFile *fp, int hsz, lwTexture *tex )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetTHeader( idFile *fp, int hsz, lwTexture *tex )\r\n");
    return retVal;
}



/*
======================================================================
lwGetTMap()

Read a texture map from a SURF.BLOK in an LWO2 file.  The TMAP
defines the mapping from texture to world or object coordinates.
====================================================================== */

int lwGetTMap( idFile *fp, int tmapsz, lwTMap *tmap )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetTMap( idFile *fp, int tmapsz, lwTMap *tmap )\r\n");
    return retVal;
}



/*
======================================================================
lwGetImageMap()

Read an lwImageMap from a SURF.BLOK in an LWO2 file.
====================================================================== */

int lwGetImageMap( idFile *fp, int rsz, lwTexture *tex )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetImageMap( idFile *fp, int rsz, lwTexture *tex )\r\n");
    return retVal;
}



/*
======================================================================
lwGetProcedural()

Read an lwProcedural from a SURF.BLOK in an LWO2 file.
====================================================================== */

int lwGetProcedural( idFile *fp, int rsz, lwTexture *tex )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetProcedural( idFile *fp, int rsz, lwTexture *tex )\r\n");
    return retVal;
}



/*
======================================================================
lwGetGradient()

Read an lwGradient from a SURF.BLOK in an LWO2 file.
====================================================================== */

int lwGetGradient( idFile *fp, int rsz, lwTexture *tex )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetGradient( idFile *fp, int rsz, lwTexture *tex )\r\n");
    return retVal;
}



/*
======================================================================
lwGetTexture()

Read an lwTexture from a SURF.BLOK in an LWO2 file.
====================================================================== */

lwTexture *lwGetTexture( idFile *fp, int bloksz, unsigned int type )
{
    Sys_Printf("lwTexture *lwGetTexture( idFile *fp, int bloksz, unsigned int type )\r\n");
    return NULL;
}



/*
======================================================================
lwGetShader()

Read a shader record from a SURF.BLOK in an LWO2 file.
====================================================================== */

lwPlugin *lwGetShader( idFile *fp, int bloksz )
{
    Sys_Printf("lwPlugin *lwGetShader( idFile *fp, int bloksz )\r\n");
    return NULL;
}



/*
======================================================================
compare_textures()
compare_shaders()

Callbacks for the lwListInsert() function, which is called to add
textures to surface channels and shaders to surfaces.
====================================================================== */

static int compare_textures( lwTexture *a, lwTexture *b )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int compare_textures( lwTexture *a, lwTexture *b )\r\n");
    return retVal;
}



static int compare_shaders( lwPlugin *a, lwPlugin *b )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int compare_shaders( lwPlugin *a, lwPlugin *b )\r\n");
    return retVal;
}



/*
======================================================================
add_texture()

Finds the surface channel (lwTParam or lwCParam) to which a texture is
applied, then calls lwListInsert().
====================================================================== */

static int add_texture( lwSurface *surf, lwTexture *tex )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int add_texture( lwSurface *surf, lwTexture *tex )\r\n");
    return retVal;
}



/*
======================================================================
lwDefaultSurface()

Allocate and initialize a surface.
====================================================================== */

lwSurface *lwDefaultSurface( void )
{
    Sys_Printf("lwSurface *lwDefaultSurface( void )\r\n");
    return NULL;
}



/*
======================================================================
lwGetSurface()

Read an lwSurface from an LWO2 file.
====================================================================== */

lwSurface *lwGetSurface( idFile *fp, int cksize )
{
    Sys_Printf("lwSurface *lwGetSurface( idFile *fp, int cksize )\r\n");
    return NULL;
}



float dot( float a[], float b[] )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float dot( float a[], float b[] )\r\n");
    return retVal;
}



void cross( float a[], float b[], float c[] )
{
    Sys_Printf("void cross( float a[], float b[], float c[] )\r\n");
}



void normalize( float v[] )
{
    Sys_Printf("void normalize( float v[] )\r\n");
}


/*
======================================================================
lwFreeVMap()

Free memory used by an lwVMap.
====================================================================== */

void lwFreeVMap( lwVMap *vmap )
{
    Sys_Printf("void lwFreeVMap( lwVMap *vmap )\r\n");
}



/*
======================================================================
lwGetVMap()

Read an lwVMap from a VMAP or VMAD chunk in an LWO2.
====================================================================== */

lwVMap *lwGetVMap( idFile *fp, int cksize, int ptoffset, int poloffset,
   int perpoly )
{
    Sys_Printf("lwVMap *lwGetVMap( idFile *fp, int cksize, int ptoffset, int poloffset, int perpoly )\r\n");
    return NULL;
}



/*
======================================================================
lwGetPointVMaps()

Fill in the lwVMapPt structure for each point.
====================================================================== */

int lwGetPointVMaps( lwPointList *point, lwVMap *vmap )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetPointVMaps( lwPointList *point, lwVMap *vmap )\r\n");
    return retVal;
}



/*
======================================================================
lwGetPolyVMaps()

Fill in the lwVMapPt structure for each polygon vertex.
====================================================================== */

int lwGetPolyVMaps( lwPolygonList *polygon, lwVMap *vmap )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int lwGetPolyVMaps( lwPolygonList *polygon, lwVMap *vmap )\r\n");
    return retVal;
}


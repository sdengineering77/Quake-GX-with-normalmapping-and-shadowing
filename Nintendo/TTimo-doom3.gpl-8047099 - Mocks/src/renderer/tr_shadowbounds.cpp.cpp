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

#include "tr_local.h"



// Compute conservative shadow bounds as the intersection
// of the object's bounds' shadow volume and the light's bounds.
// 
// --cass


template <class T, int N>
struct MyArray
{
	MyArray() : s(0) {}

	MyArray( const MyArray<T,N> & cpy ) : s(cpy.s)
	{
		for(int i=0; i < s; i++)
			v[i] = cpy.v[i];
	}

	void push_back(const T & i) {
    Sys_Printf("void push_back(const T & i)\r\n");
}


	T & operator[](int i) {
		return v[i];
	}

	const T & operator[](int i) const {
		return v[i];
	}

	unsigned int size() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int size()\r\n");
    return retVal;
}


	void empty() {
    Sys_Printf("void empty()\r\n");
}


	T v[N];
	int s;
//	static int max_size;
};

typedef MyArray<int, 4> MyArrayInt;
//int MyArrayInt::max_size = 0;
typedef MyArray<idVec4, 16> MyArrayVec4;
//int MyArrayVec4::max_size = 0;

struct poly
{
    MyArrayInt vi;
    MyArrayInt ni;
    idVec4 plane;
};

typedef MyArray<poly, 9> MyArrayPoly;
//int MyArrayPoly::max_size = 0;

struct edge
{
    int vi[2];
    int pi[2];
};

typedef MyArray<edge, 15> MyArrayEdge;
//int MyArrayEdge::max_size = 0;

MyArrayInt four_ints(int a, int b, int c, int d)
{
    MyArrayInt retVal;
    memset(&retVal, 0, sizeof(MyArrayInt));
    Sys_Printf("MyArrayInt four_ints(int a, int b, int c, int d)\r\n");
    return retVal;
}


idVec3 homogeneous_difference(idVec4 a, idVec4 b)
{
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 homogeneous_difference(idVec4 a, idVec4 b)\r\n");
    return retVal;
}


// handles positive w only
idVec4 compute_homogeneous_plane(idVec4 a, idVec4 b, idVec4 c)
{
    idVec4 retVal;
    memset(&retVal, 0, sizeof(idVec4));
    Sys_Printf("idVec4 compute_homogeneous_plane(idVec4 a, idVec4 b, idVec4 c)\r\n");
    return retVal;
}


struct polyhedron
{
    MyArrayVec4 v;
    MyArrayPoly  p;
    MyArrayEdge  e;

    void add_quad( int va, int vb, int vc, int vd )
    {
    Sys_Printf("void add_quad( int va, int vb, int vc, int vd )\r\n");
}


    void discard_neighbor_info()
    {
    Sys_Printf("void discard_neighbor_info()\r\n");
}


    void compute_neighbors()
    {
    Sys_Printf("void compute_neighbors()\r\n");
}


    void recompute_planes()
    {
    Sys_Printf("void recompute_planes()\r\n");
}


    void transform(const idMat4 & m)
    {
    Sys_Printf("void transform(const idMat4 & m)\r\n");
}


};

// make a unit cube
polyhedron PolyhedronFromBounds( const idBounds & b )
{
    polyhedron retVal;
    memset(&retVal, 0, sizeof(polyhedron));
    Sys_Printf("polyhedron PolyhedronFromBounds( const idBounds & b )\r\n");
    return retVal;
}



polyhedron make_sv(const polyhedron & oc, idVec4 light)
{
    polyhedron retVal;
    memset(&retVal, 0, sizeof(polyhedron));
    Sys_Printf("polyhedron make_sv(const polyhedron & oc, idVec4 light)\r\n");
    return retVal;
}


typedef MyArray<idVec4, 36> MySegments;
//int MySegments::max_size = 0;

void polyhedron_edges(polyhedron & a, MySegments & e)
{
    Sys_Printf("void polyhedron_edges(polyhedron & a, MySegments & e)\r\n");
}


// clip the segments of e by the planes of polyhedron a.
void clip_segments(const polyhedron & ph, MySegments & is, MySegments & os)
{
    Sys_Printf("void clip_segments(const polyhedron & ph, MySegments & is, MySegments & os)\r\n");
}


idMat4 make_idMat4(const float * m)
{
    idMat4 retVal;
    memset(&retVal, 0, sizeof(idMat4));
    Sys_Printf("idMat4 make_idMat4(const float * m)\r\n");
    return retVal;
}


idVec3 v4to3(const idVec4 & v)
{
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 v4to3(const idVec4 & v)\r\n");
    return retVal;
}


void draw_polyhedron( const viewDef_t *viewDef, const polyhedron & p, idVec4 color )
{
    Sys_Printf("void draw_polyhedron( const viewDef_t *viewDef, const polyhedron & p, idVec4 color )\r\n");
}


void draw_segments( const viewDef_t *viewDef, const MySegments & s, idVec4 color )
{
    Sys_Printf("void draw_segments( const viewDef_t *viewDef, const MySegments & s, idVec4 color )\r\n");
}


void world_to_hclip( const viewDef_t *viewDef, const idVec4 &global, idVec4 &clip ) {
    Sys_Printf("void world_to_hclip( const viewDef_t *viewDef, const idVec4 &global, idVec4 &clip )\r\n");
}


idScreenRect R_CalcIntersectionScissor( const idRenderLightLocal * lightDef,
									    const idRenderEntityLocal * entityDef,
										const viewDef_t * viewDef ) {
    idScreenRect retVal;
    memset(&retVal, 0, sizeof(idScreenRect));
    Sys_Printf("idScreenRect R_CalcIntersectionScissor( const idRenderLightLocal * lightDef, const idRenderEntityLocal * entityDef,const viewDef_t * viewDef )\r\n");
    return retVal;
}


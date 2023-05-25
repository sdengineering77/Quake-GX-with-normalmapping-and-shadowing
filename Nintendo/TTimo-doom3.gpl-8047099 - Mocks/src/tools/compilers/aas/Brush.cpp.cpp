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

#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "Brush.h"

#define BRUSH_EPSILON					0.1f
#define BRUSH_PLANE_NORMAL_EPSILON		0.00001f
#define BRUSH_PLANE_DIST_EPSILON		0.01f

#define OUTPUT_UPDATE_TIME				500		// update every 500 msec

//#define OUTPUT_CHOP_STATS

/*
============
DisplayRealTimeString
============
*/
void DisplayRealTimeString( char *string, ... ) {
    Sys_Printf("void DisplayRealTimeString( char *string, ... )\r\n");
}



//===============================================================
//
//	idBrushSide
//
//===============================================================

/*
============
idBrushSide::idBrushSide
============
*/
idBrushSide::idBrushSide( void ) {
	flags = 0;
	planeNum = -1;
	winding = NULL;
}

/*
============
idBrushSide::idBrushSide
============
*/
idBrushSide::idBrushSide( const idPlane &plane, int planeNum ) {
	this->flags = 0;
	this->plane = plane;
	this->planeNum = planeNum;
	this->winding = NULL;
}

/*
============
idBrushSide::~idBrushSide
============
*/
idBrushSide::~idBrushSide( void ) {
	if ( winding ) {
		delete winding;
	}
}

/*
============
idBrushSide::Copy
============
*/
idBrushSide *idBrushSide::Copy( void ) const {
    Sys_Printf("idBrushSide *idBrushSide::Copy( void )\r\n");
    return NULL;
}


/*
============
idBrushSide::Split
============
*/
int idBrushSide::Split( const idPlane &splitPlane, idBrushSide **front, idBrushSide **back ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBrushSide::Split( const idPlane &splitPlane, idBrushSide **front, idBrushSide **back )\r\n");
    return retVal;
}



//===============================================================
//
//	idBrushSide
//
//===============================================================

/*
============
idBrush::idBrush
============
*/
idBrush::idBrush( void ) {
	contents = flags = 0;
	bounds.Clear();
	sides.Clear();
	windingsValid = false;
}


/*
============
idBrush::~idBrush
============
*/
idBrush::~idBrush( void ) {
	for ( int i = 0; i < sides.Num(); i++ ) {
		delete sides[i];
	}
}

/*
============
idBrush::RemoveSidesWithoutWinding
============
*/
bool idBrush::RemoveSidesWithoutWinding( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrush::RemoveSidesWithoutWinding( void )\r\n");
    return retVal;
}


/*
============
idBrush::CreateWindings
============
*/
bool idBrush::CreateWindings( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrush::CreateWindings( void )\r\n");
    return retVal;
}


/*
============
idBrush::BoundBrush
============
*/
void idBrush::BoundBrush( const idBrush *original ) {
    Sys_Printf("void idBrush::BoundBrush( const idBrush *original )\r\n");
}


/*
============
idBrush::FromSides
============
*/
bool idBrush::FromSides( idList<idBrushSide *> &sideList ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrush::FromSides( idList<idBrushSide *> &sideList )\r\n");
    return retVal;
}


/*
============
idBrush::FromWinding
============
*/
bool idBrush::FromWinding( const idWinding &w, const idPlane &windingPlane ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrush::FromWinding( const idWinding &w, const idPlane &windingPlane )\r\n");
    return retVal;
}


/*
============
idBrush::FromBounds
============
*/
bool idBrush::FromBounds( const idBounds &bounds ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrush::FromBounds( const idBounds &bounds )\r\n");
    return retVal;
}


/*
============
idBrush::Transform
============
*/
void idBrush::Transform( const idVec3 &origin, const idMat3 &axis ) {
    Sys_Printf("void idBrush::Transform( const idVec3 &origin, const idMat3 &axis )\r\n");
}


/*
============
idBrush::GetVolume
============
*/
float idBrush::GetVolume( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idBrush::GetVolume( void )\r\n");
    return retVal;
}


/*
============
idBrush::Subtract
============
*/
bool idBrush::Subtract( const idBrush *b, idBrushList &list ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrush::Subtract( const idBrush *b, idBrushList &list )\r\n");
    return retVal;
}


/*
============
idBrush::TryMerge
============
*/
bool idBrush::TryMerge( const idBrush *brush, const idPlaneSet &planeList ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrush::TryMerge( const idBrush *brush, const idPlaneSet &planeList )\r\n");
    return retVal;
}


/*
============
idBrush::Split
============
*/
int idBrush::Split( const idPlane &plane, int planeNum, idBrush **front, idBrush **back ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBrush::Split( const idPlane &plane, int planeNum, idBrush **front, idBrush **back )\r\n");
    return retVal;
}


/*
============
idBrush::AddBevelsForAxialBox
============
*/
#define BRUSH_BEVEL_EPSILON		0.1f

void idBrush::AddBevelsForAxialBox( void ) {
    Sys_Printf("void idBrush::AddBevelsForAxialBox( void )\r\n");
}


/*
============
idBrush::ExpandForAxialBox
============
*/
void idBrush::ExpandForAxialBox( const idBounds &bounds ) {
    Sys_Printf("void idBrush::ExpandForAxialBox( const idBounds &bounds )\r\n");
}


/*
============
idBrush::Copy
============
*/
idBrush *idBrush::Copy( void ) const {
    Sys_Printf("idBrush *idBrush::Copy( void )\r\n");
    return NULL;
}



//===============================================================
//
//	idBrushList
//
//===============================================================

/*
============
idBrushList::idBrushList
============
*/
idBrushList::idBrushList( void ) {
	numBrushes = numBrushSides = 0;
	head = tail = NULL;
}

/*
============
idBrushList::~idBrushList
============
*/
idBrushList::~idBrushList( void ) {
}

/*
============
idBrushList::GetBounds
============
*/
idBounds idBrushList::GetBounds( void ) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idBrushList::GetBounds( void )\r\n");
    return retVal;
}


/*
============
idBrushList::AddToTail
============
*/
void idBrushList::AddToTail( idBrush *brush ) {
    Sys_Printf("void idBrushList::AddToTail( idBrush *brush )\r\n");
}


/*
============
idBrushList::AddToTail
============
*/
void idBrushList::AddToTail( idBrushList &list ) {
    Sys_Printf("void idBrushList::AddToTail( idBrushList &list )\r\n");
}


/*
============
idBrushList::AddToFront
============
*/
void idBrushList::AddToFront( idBrush *brush ) {
    Sys_Printf("void idBrushList::AddToFront( idBrush *brush )\r\n");
}


/*
============
idBrushList::AddToFront
============
*/
void idBrushList::AddToFront( idBrushList &list ) {
    Sys_Printf("void idBrushList::AddToFront( idBrushList &list )\r\n");
}


/*
============
idBrushList::Remove
============
*/
void idBrushList::Remove( idBrush *brush ) {
    Sys_Printf("void idBrushList::Remove( idBrush *brush )\r\n");
}


/*
============
idBrushList::Delete
============
*/
void idBrushList::Delete( idBrush *brush ) {
    Sys_Printf("void idBrushList::Delete( idBrush *brush )\r\n");
}


/*
============
idBrushList::Copy
============
*/
idBrushList *idBrushList::Copy( void ) const {
    Sys_Printf("idBrushList *idBrushList::Copy( void )\r\n");
    return NULL;
}


/*
============
idBrushList::Free
============
*/
void idBrushList::Free( void ) {
    Sys_Printf("void idBrushList::Free( void )\r\n");
}


/*
============
idBrushList::Split
============
*/
void idBrushList::Split( const idPlane &plane, int planeNum, idBrushList &frontList, idBrushList &backList, bool useBrushSavedPlaneSide ) {
    Sys_Printf("void idBrushList::Split( const idPlane &plane, int planeNum, idBrushList &frontList, idBrushList &backList, bool useBrushSavedPlaneSide )\r\n");
}


/*
============
idBrushList::Chop
============
*/
void idBrushList::Chop( bool (*ChopAllowed)( idBrush *b1, idBrush *b2 ) ) {
	idBrush	*b1, *b2, *next;
	idBrushList sub1, sub2, keep;
	int i, j, c1, c2;
	idPlaneSet planeList;

#ifdef OUTPUT_CHOP_STATS
	common->Printf( "[Brush CSG]\n");
	common->Printf( "%6d original brushes\n", this->Num() );
#endif

	CreatePlaneList( planeList );

	for ( b1 = this->Head(); b1; b1 = this->Head() ) {

		for ( b2 = b1->next; b2; b2 = next ) {

			next = b2->next;

			for ( i = 0; i < 3; i++ ) {
				if ( b1->bounds[0][i] >= b2->bounds[1][i] ) {
					break;
				}
				if ( b1->bounds[1][i] <= b2->bounds[0][i] ) {
					break;
				}
			}
			if ( i < 3 ) {
				continue;
			}

			for ( i = 0; i < b1->GetNumSides(); i++ ) {
				for ( j = 0; j < b2->GetNumSides(); j++ ) {
					if ( b1->GetSide(i)->GetPlaneNum() == ( b2->GetSide(j)->GetPlaneNum() ^ 1 ) ) {
						// opposite planes, so not touching
						break;
					}
				}
				if ( j < b2->GetNumSides() ) {
					break;
				}
			}
			if ( i < b1->GetNumSides() ) {
				continue;
			}

			sub1.Clear();
			sub2.Clear();

			c1 = 999999;
			c2 = 999999;

			// if b2 may chop up b1
			if ( !ChopAllowed || ChopAllowed( b2,  b1 ) ) {
				if ( !b1->Subtract( b2, sub1 ) ) {
					// didn't really intersect
					continue;
				}
				if ( sub1.IsEmpty() ) {
					// b1 is swallowed by b2
					this->Delete( b1 );
					break;
				}
				c1 = sub1.Num();
			}

			// if b1 may chop up b2
			if ( !ChopAllowed || ChopAllowed( b1,  b2 ) ) {
				if ( !b2->Subtract( b1, sub2 ) ) {
					// didn't really intersect
					continue;
				}
				if ( sub2.IsEmpty() ) {
					// b2 is swallowed by b1
					sub1.Free();
					this->Delete( b2 );
					continue;
				}
				c2 = sub2.Num();
			}

			if ( sub1.IsEmpty() && sub2.IsEmpty() ) {
				continue;
			}

			// don't allow too much fragmentation
			if ( c1 > 2 && c2 > 2 ) {
    fragmentation retVal;
    memset(&retVal, 0, sizeof(fragmentation));
    Sys_Printf("fragmentationif ( c1 > 2 && c2 > 2 )\r\n");
    return retVal;
}


			if ( c1 < c2 ) {
				sub2.Free();
				this->AddToTail( sub1 );
				this->Delete( b1 );
				break;
			}
			else {
				sub1.Free();
				this->AddToTail( sub2 );
				this->Delete( b2 );
				continue;
			}
		}

		if ( !b2 ) {
			// b1 is no longer intersecting anything, so keep it
			this->Remove( b1 );
			keep.AddToTail( b1 );
#ifdef OUTPUT_CHOP_STATS
			DisplayRealTimeString( "\r%6d", keep.numBrushes );
#endif
		}
	}

	*this = keep;

#ifdef OUTPUT_CHOP_STATS
	common->Printf( "\r%6d output brushes\n", Num() );
#endif
}


/*
============
idBrushList::Merge
============
*/
void idBrushList::Merge( bool (*MergeAllowed)( idBrush *b1, idBrush *b2 ) ) {
	idPlaneSet planeList;
	idBrush *b1, *b2, *nextb2;
	int numMerges;

	common->Printf( "[Brush Merge]\n");
	common->Printf( "%6d original brushes\n", Num() );

	CreatePlaneList( planeList );

	numMerges = 0;
	for ( b1 = Head(); b1; b1 = b1->next ) {

		for ( b2 = Head(); b2; b2 = nextb2 ) {
			nextb2 = b2->Next();

			if ( b2 == b1 ) {
				continue;
			}

			if ( MergeAllowed && !MergeAllowed( b1, b2 ) ) {
				continue;
			}

			if ( b1->TryMerge( b2, planeList ) ) {
				Delete( b2 );
				DisplayRealTimeString( "\r%6d", ++numMerges );
				nextb2 = Head();
			}
		}
	}

	common->Printf( "\r%6d brushes merged\n", numMerges );
}

/*
============
idBrushList::SetFlagOnFacingBrushSides
============
*/
void idBrushList::SetFlagOnFacingBrushSides( const idPlane &plane, int flag ) {
    Sys_Printf("void idBrushList::SetFlagOnFacingBrushSides( const idPlane &plane, int flag )\r\n");
}


/*
============
idBrushList::CreatePlaneList
============
*/
void idBrushList::CreatePlaneList( idPlaneSet &planeList ) const {
    Sys_Printf("void idBrushList::CreatePlaneList( idPlaneSet &planeList )\r\n");
}


/*
============
idBrushList::CreatePlaneList
============
*/
void idBrushList::WriteBrushMap( const idStr &fileName, const idStr &ext ) const {
    Sys_Printf("void idBrushList::WriteBrushMap( const idStr &fileName, const idStr &ext )\r\n");
}



//===============================================================
//
//	idBrushMap
//
//===============================================================

/*
============
idBrushMap::idBrushMap
============
*/
idBrushMap::idBrushMap( const idStr &fileName, const idStr &ext ) {
	idStr qpath;

	qpath = fileName;
	qpath.StripFileExtension();
	qpath += ext;
	qpath.SetFileExtension( "map" );

	common->Printf( "writing %s...\n", qpath.c_str() );

	fp = fileSystem->OpenFileWrite( qpath, "fs_devpath" );
	if ( !fp ) {
		common->Error( "Couldn't open %s\n", qpath.c_str() );
		return;
	}

	texture = "textures/washroom/btile01";

	fp->WriteFloatString( "Version %1.2f\n", (float) CURRENT_MAP_VERSION );
	fp->WriteFloatString( "{\n" );
	fp->WriteFloatString( "\"classname\" \"worldspawn\"\n" );

	brushCount = 0;
}

/*
============
idBrushMap::~idBrushMap
============
*/
idBrushMap::~idBrushMap( void ) {
	if ( !fp ) {
		return;
	}
	fp->WriteFloatString( "}\n" );
	fileSystem->CloseFile( fp );
}

/*
============
idBrushMap::WriteBrush
============
*/
void idBrushMap::WriteBrush( const idBrush *brush ) {
    Sys_Printf("void idBrushMap::WriteBrush( const idBrush *brush )\r\n");
}


/*
============
idBrushMap::WriteBrushList
============
*/
void idBrushMap::WriteBrushList( const idBrushList &brushList ) {
    Sys_Printf("void idBrushMap::WriteBrushList( const idBrushList &brushList )\r\n");
}


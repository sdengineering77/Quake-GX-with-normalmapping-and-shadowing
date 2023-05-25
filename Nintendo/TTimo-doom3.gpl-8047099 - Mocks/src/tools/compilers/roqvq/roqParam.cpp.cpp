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

#include "roqParam.h"

//
// read a parameter file in (true I bloddy well had to do this again) (and yet again to c++)
//

int parseRange(const char *rangeStr,int field, int skipnum[], int startnum[], int endnum[],int numfiles[],bool padding[],int numpadding[] );
int parseTimecodeRange(const char *rangeStr,int field, int skipnum[], int startnum[], int endnum[],int numfiles[],bool padding[],int numpadding[] );

void roqParam::InitFromFile( const char *fileName ) 
{
    Sys_Printf("void roqParam::InitFromFile( const char *fileName )\r\n");
}


void roqParam::GetNthInputFileName( idStr &fileName, int n ) {
    Sys_Printf("void roqParam::GetNthInputFileName( idStr &fileName, int n )\r\n");
}


const char* roqParam::GetNextImageFilename( void ) {
    Sys_Printf("char* roqParam::GetNextImageFilename( void )\r\n");
    return NULL;
}


const char* roqParam::RoqFilename( void ) {
    Sys_Printf("char* roqParam::RoqFilename( void )\r\n");
    return NULL;
}


const char* roqParam::SoundFilename( void ) {
    Sys_Printf("char* roqParam::SoundFilename( void )\r\n");
    return NULL;
}


const char* roqParam::RoqTempFilename( void ) {
    Sys_Printf("char* roqParam::RoqTempFilename( void )\r\n");
    return NULL;
}


bool roqParam::Timecode( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::Timecode( void )\r\n");
    return retVal;
}


bool roqParam::OutputVectors( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::OutputVectors( void )\r\n");
    return retVal;
}


bool roqParam::HasSound( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::HasSound( void )\r\n");
    return retVal;
}


bool roqParam::DeltaFrames( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::DeltaFrames( void )\r\n");
    return retVal;
}


bool roqParam::NoAlpha( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::NoAlpha( void )\r\n");
    return retVal;
}


bool roqParam::SearchType( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::SearchType( void )\r\n");
    return retVal;
}


bool roqParam::MoreFrames( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::MoreFrames( void )\r\n");
    return retVal;
}


bool roqParam::TwentyFourToThirty( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::TwentyFourToThirty( void )\r\n");
    return retVal;
}


int roqParam::NumberOfFrames( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roqParam::NumberOfFrames( void )\r\n");
    return retVal;
}


int roqParam::FirstFrameSize( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roqParam::FirstFrameSize( void )\r\n");
    return retVal;
}


int roqParam::NormalFrameSize( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roqParam::NormalFrameSize( void )\r\n");
    return retVal;
}


bool roqParam::IsScaleable( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roqParam::IsScaleable( void )\r\n");
    return retVal;
}


int roqParam::JpegQuality( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roqParam::JpegQuality( void )\r\n");
    return retVal;
}


int parseRange(const char *rangeStr,int field, int skipnum[], int startnum[], int endnum[],int numfiles[],bool padding[],int numpadding[] ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int parseRange(const char *rangeStr,int field, int skipnum[], int startnum[], int endnum[],int numfiles[],bool padding[],int numpadding[] )\r\n");
    return retVal;
}


int parseTimecodeRange(const char *rangeStr,int field, int skipnum[], int startnum[], int endnum[],int numfiles[],bool padding[],int numpadding[] )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int parseTimecodeRange(const char *rangeStr,int field, int skipnum[], int startnum[], int endnum[],int numfiles[],bool padding[],int numpadding[] )\r\n");
    return retVal;
}


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

#include "ListGUILocal.h"
#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"

extern idCVar r_skipGuiShaders;		// 1 = don't render any gui elements on surfaces

idUserInterfaceManagerLocal	uiManagerLocal;
idUserInterfaceManager *	uiManager = &uiManagerLocal;

/*
===============================================================================

	idUserInterfaceManagerLocal

===============================================================================
*/

void idUserInterfaceManagerLocal::Init() {
	screenRect = idRectangle(0, 0, 640, 480);
	dc.Init();
}

void idUserInterfaceManagerLocal::Shutdown() {
	guis.DeleteContents( true );
	demoGuis.DeleteContents( true );
	dc.Shutdown();
}

void idUserInterfaceManagerLocal::Touch( const char *name ) {
	idUserInterface *gui = Alloc();
	gui->InitFromFile( name );
//	delete gui;
}

void idUserInterfaceManagerLocal::WritePrecacheCommands( idFile *f ) {

	int c = guis.Num();
	for( int i = 0; i < c; i++ ) {
		char	str[1024];
		sprintf( str, "touchGui %s\n", guis[i]->Name() );
		common->Printf( "%s", str );
		f->Printf( "%s", str );
	}
}

void idUserInterfaceManagerLocal::SetSize( float width, float height ) {
	dc.SetSize( width, height );
}

void idUserInterfaceManagerLocal::BeginLevelLoad() {
	int c = guis.Num();
	for ( int i = 0; i < c; i++ ) {
		if ( (guis[ i ]->GetDesktop()->GetFlags() & WIN_MENUGUI) == 0 ) {
			guis[ i ]->ClearRefs();
			/*
			delete guis[ i ];
			guis.RemoveIndex( i );
			i--; c--;
			*/
		}
	}
}

void idUserInterfaceManagerLocal::EndLevelLoad() {
	int c = guis.Num();
	for ( int i = 0; i < c; i++ ) {
		if ( guis[i]->GetRefs() == 0 ) {
			//common->Printf( "purging %s.\n", guis[i]->GetSourceFile() );

			// use this to make sure no materials still reference this gui
			bool remove = true;
			for ( int j = 0; j < declManager->GetNumDecls( DECL_MATERIAL ); j++ ) {
				const idMaterial *material = static_cast<const idMaterial *>(declManager->DeclByIndex( DECL_MATERIAL, j, false ));
				if ( material->GlobalGui() == guis[i] ) {
					remove = false;
					break;
				}
			}
			if ( remove ) {
				delete guis[ i ];
				guis.RemoveIndex( i );
				i--; c--;
			}
		}
	}
}

void idUserInterfaceManagerLocal::Reload( bool all ) {
	ID_TIME_T ts;

	int c = guis.Num();
	for ( int i = 0; i < c; i++ ) {
		if ( !all ) {
			fileSystem->ReadFile( guis[i]->GetSourceFile(), NULL, &ts );
			if ( ts <= guis[i]->GetTimeStamp() ) {
				continue;
			}
		}

		guis[i]->InitFromFile( guis[i]->GetSourceFile() );
		common->Printf( "reloading %s.\n", guis[i]->GetSourceFile() );
	}
}

void idUserInterfaceManagerLocal::ListGuis() const {
	int c = guis.Num();
	common->Printf( "\n   size   refs   name\n" );
	size_t total = 0;
	int copies = 0;
	int unique = 0;
	for ( int i = 0; i < c; i++ ) {
		idUserInterfaceLocal *gui = guis[i];
		size_t sz = gui->Size();
		bool isUnique = guis[i]->interactive;
		if ( isUnique ) {
			unique++;
		} else {
			copies++;
		}
		common->Printf( "%6.1fk %4i (%s) %s ( %i transitions )\n", sz / 1024.0f, guis[i]->GetRefs(), isUnique ? "unique" : "copy", guis[i]->GetSourceFile(), guis[i]->desktop->NumTransitions() );
		total += sz;
	}
	common->Printf( "===========\n  %i total Guis ( %i copies, %i unique ), %.2f total Mbytes", c, copies, unique, total / ( 1024.0f * 1024.0f ) );
}

bool idUserInterfaceManagerLocal::CheckGui( const char *qpath ) const {
	idFile *file = fileSystem->OpenFileRead( qpath );
	if ( file ) {
		fileSystem->CloseFile( file );
		return true;
	}
	return false;
}

idUserInterface *idUserInterfaceManagerLocal::Alloc( void ) const {
	return new idUserInterfaceLocal();
}

void idUserInterfaceManagerLocal::DeAlloc( idUserInterface *gui ) {
	if ( gui ) {
		int c = guis.Num();
		for ( int i = 0; i < c; i++ ) {
			if ( guis[i] == gui ) {
				delete guis[i];
				guis.RemoveIndex( i );
				return;
			}
		}
	}
}


idUserInterface *idUserInterfaceManagerLocal::FindGui( const char *qpath, bool autoLoad, bool needUnique, bool forceNOTUnique ) {
	int c = guis.Num();

	for ( int i = 0; i < c; i++ ) {
		idUserInterfaceLocal *gui = guis[i];
		if ( !idStr::Icmp( guis[i]->GetSourceFile(), qpath ) ) {
			if ( !forceNOTUnique && ( needUnique || guis[i]->IsInteractive() ) ) {
				break;
			}
			guis[i]->AddRef();
			return guis[i];
		}
	}

	if ( autoLoad ) {
		idUserInterface *gui = Alloc();
		if ( gui->InitFromFile( qpath ) ) {
			gui->SetUniqued( forceNOTUnique ? false : needUnique );
			return gui;
		} else {
			delete gui;
		}
	}
	return NULL;
}


idUserInterface *idUserInterfaceManagerLocal::FindDemoGui( const char *qpath ) {
	int c = demoGuis.Num();
	for ( int i = 0; i < c; i++ ) {
		if ( !idStr::Icmp( demoGuis[i]->GetSourceFile(), qpath ) ) {
			return demoGuis[i];
		}
	}
	return NULL;
}


idListGUI *	idUserInterfaceManagerLocal::AllocListGUI( void ) const {
	return new idListGUILocal();
}


void idUserInterfaceManagerLocal::FreeListGUI( idListGUI *listgui ) {
	delete listgui;
}


/*
===============================================================================

	idUserInterfaceLocal

===============================================================================
*/

idUserInterfaceLocal::idUserInterfaceLocal() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idUserInterfaceLocal::idUserInterfaceLocal() size %d\r\n", sizeof(*this));
#endif

	cursorX = cursorY = 0.0;
	desktop = NULL;
	loading = false;
	active = false;
	interactive = false;
	uniqued = false;
	bindHandler = NULL;
	//so the reg eval in gui parsing doesn't get bogus values
	time = 0;
	refs = 1;
}

idUserInterfaceLocal::~idUserInterfaceLocal() {
	delete desktop;
	desktop = NULL;
}

const char *idUserInterfaceLocal::Name() const {
    Sys_Printf("char *idUserInterfaceLocal::Name()\r\n");
    return NULL;
}


const char *idUserInterfaceLocal::Comment() const {
    Sys_Printf("char *idUserInterfaceLocal::Comment()\r\n");
    return NULL;
}


bool idUserInterfaceLocal::IsInteractive() const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idUserInterfaceLocal::IsInteractive()\r\n");
    return retVal;
}


bool idUserInterfaceLocal::InitFromFile( const char *qpath, bool rebuild, bool cache ) {

	if ( !( qpath && *qpath ) ) {
		// FIXME: Memory leak!!
		return false;
	}

	int sz = sizeof( idWindow );
	sz = sizeof( idSimpleWindow );
	loading = true;

	if ( rebuild ) {
		delete desktop;
		desktop = new idWindow( this );
	} else if ( desktop == NULL ) {
		desktop = new idWindow( this );
	}

	source = qpath;
	state.Set( "text", "Test Text!" );

	idParser src( LEXFL_NOFATALERRORS | LEXFL_NOSTRINGCONCAT | LEXFL_ALLOWMULTICHARLITERALS | LEXFL_ALLOWBACKSLASHSTRINGCONCAT );

	//Load the timestamp so reload guis will work correctly
	fileSystem->ReadFile(qpath, NULL, &timeStamp);

	src.LoadFile( qpath );

	if ( src.IsLoaded() ) {
		idToken token;
		while( src.ReadToken( &token ) ) {
			if ( idStr::Icmp( token, "windowDef" ) == 0 ) {
				desktop->SetDC( &uiManagerLocal.dc );
				if ( desktop->Parse( &src, rebuild ) ) {
					desktop->SetFlag( WIN_DESKTOP );
					desktop->FixupParms();
				}
				continue;
			}
		}

		state.Set( "name", qpath );
	} else {
		desktop->SetDC( &uiManagerLocal.dc );
		desktop->SetFlag( WIN_DESKTOP );
		desktop->name = "Desktop";
		desktop->text = va( "Invalid GUI: %s", qpath );
		desktop->rect = idRectangle( 0.0f, 0.0f, 640.0f, 480.0f );
		desktop->drawRect = desktop->rect;
		desktop->foreColor = idVec4( 1.0f, 1.0f, 1.0f, 1.0f );
		desktop->backColor = idVec4( 0.0f, 0.0f, 0.0f, 1.0f );
		desktop->SetupFromState();
		common->Warning( "Couldn't load gui: '%s'", qpath );
	}

	interactive = desktop->Interactive();

	if ( uiManagerLocal.guis.Find( this ) == NULL ) {
		uiManagerLocal.guis.Append( this );
	}

	loading = false;

	return true;
}


const char *idUserInterfaceLocal::HandleEvent( const sysEvent_t *event, int _time, bool *updateVisuals ) {
    Sys_Printf("char *idUserInterfaceLocal::HandleEvent( const sysEvent_t *event, int _time, bool *updateVisuals )\r\n");
    return NULL;
}


void idUserInterfaceLocal::HandleNamedEvent ( const char* eventName ) {
    Sys_Printf("void idUserInterfaceLocal::HandleNamedEvent ( const char* eventName )\r\n");
}


void idUserInterfaceLocal::Redraw( int _time ) {
    Sys_Printf("void idUserInterfaceLocal::Redraw( int _time )\r\n");
}


void idUserInterfaceLocal::DrawCursor() {
    Sys_Printf("void idUserInterfaceLocal::DrawCursor()\r\n");
}


const idDict &idUserInterfaceLocal::State() const {
	return state;
}

void idUserInterfaceLocal::DeleteStateVar( const char *varName ) {
    Sys_Printf("void idUserInterfaceLocal::DeleteStateVar( const char *varName )\r\n");
}


void idUserInterfaceLocal::SetStateString( const char *varName, const char *value ) {
    Sys_Printf("void idUserInterfaceLocal::SetStateString( const char *varName, const char *value )\r\n");
}


void idUserInterfaceLocal::SetStateBool( const char *varName, const bool value ) {
    Sys_Printf("void idUserInterfaceLocal::SetStateBool( const char *varName, const bool value )\r\n");
}


void idUserInterfaceLocal::SetStateInt( const char *varName, const int value ) {
    Sys_Printf("void idUserInterfaceLocal::SetStateInt( const char *varName, const int value )\r\n");
}


void idUserInterfaceLocal::SetStateFloat( const char *varName, const float value ) {
    Sys_Printf("void idUserInterfaceLocal::SetStateFloat( const char *varName, const float value )\r\n");
}


const char* idUserInterfaceLocal::GetStateString( const char *varName, const char* defaultString ) const {
    Sys_Printf("char* idUserInterfaceLocal::GetStateString( const char *varName, const char* defaultString )\r\n");
    return NULL;
}


bool idUserInterfaceLocal::GetStateBool( const char *varName, const char* defaultString ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idUserInterfaceLocal::GetStateBool( const char *varName, const char* defaultString )\r\n");
    return retVal;
}


int idUserInterfaceLocal::GetStateInt( const char *varName, const char* defaultString ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idUserInterfaceLocal::GetStateInt( const char *varName, const char* defaultString )\r\n");
    return retVal;
}


float idUserInterfaceLocal::GetStateFloat( const char *varName, const char* defaultString ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idUserInterfaceLocal::GetStateFloat( const char *varName, const char* defaultString )\r\n");
    return retVal;
}


void idUserInterfaceLocal::StateChanged( int _time, bool redraw ) {
    Sys_Printf("void idUserInterfaceLocal::StateChanged( int _time, bool redraw )\r\n");
}


const char *idUserInterfaceLocal::Activate(bool activate, int _time) {
    Sys_Printf("char *idUserInterfaceLocal::Activate(bool activate, int _time)\r\n");
    return NULL;
}


void idUserInterfaceLocal::Trigger(int _time) {
    Sys_Printf("void idUserInterfaceLocal::Trigger(int _time)\r\n");
}


void idUserInterfaceLocal::ReadFromDemoFile( class idDemoFile *f ) {
    Sys_Printf("void idUserInterfaceLocal::ReadFromDemoFile( class idDemoFile *f )\r\n");
}


void idUserInterfaceLocal::WriteToDemoFile( class idDemoFile *f ) {
    Sys_Printf("void idUserInterfaceLocal::WriteToDemoFile( class idDemoFile *f )\r\n");
}


bool idUserInterfaceLocal::WriteToSaveGame( idFile *savefile ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idUserInterfaceLocal::WriteToSaveGame( idFile *savefile )\r\n");
    return retVal;
}


bool idUserInterfaceLocal::ReadFromSaveGame( idFile *savefile ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idUserInterfaceLocal::ReadFromSaveGame( idFile *savefile )\r\n");
    return retVal;
}


size_t idUserInterfaceLocal::Size() {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idUserInterfaceLocal::Size()\r\n");
    return retVal;
}


void idUserInterfaceLocal::RecurseSetKeyBindingNames( idWindow *window ) {
    Sys_Printf("void idUserInterfaceLocal::RecurseSetKeyBindingNames( idWindow *window )\r\n");
}


/*
==============
idUserInterfaceLocal::SetKeyBindingNames
==============
*/
void idUserInterfaceLocal::SetKeyBindingNames( void ) {
    Sys_Printf("void idUserInterfaceLocal::SetKeyBindingNames( void )\r\n");
}


/*
==============
idUserInterfaceLocal::SetCursor
==============
*/
void idUserInterfaceLocal::SetCursor( float x, float y ) {
    Sys_Printf("void idUserInterfaceLocal::SetCursor( float x, float y )\r\n");
}



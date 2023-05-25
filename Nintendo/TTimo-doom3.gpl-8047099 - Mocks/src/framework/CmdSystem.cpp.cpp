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

/*
===============================================================================

	idCmdSystemLocal

===============================================================================
*/

typedef struct commandDef_s {
	struct commandDef_s *	next;
	char *					name;
	cmdFunction_t			function;
	argCompletion_t			argCompletion;
	int						flags;
	char *					description;
} commandDef_t;


class idCmdSystemLocal : public idCmdSystem {
public:
	virtual void			Init( void );
	virtual void			Shutdown( void );

	virtual void			AddCommand( const char *cmdName, cmdFunction_t function, int flags, const char *description, argCompletion_t argCompletion = NULL );
	virtual void			RemoveCommand( const char *cmdName );
	virtual void			RemoveFlaggedCommands( int flags );

	virtual void			CommandCompletion( void(*callback)( const char *s ) );
	virtual void			ArgCompletion( const char *cmdString, void(*callback)( const char *s ) );

	virtual void			BufferCommandText( cmdExecution_t exec, const char *text );
	virtual void			ExecuteCommandBuffer( void );

	virtual void			ArgCompletion_FolderExtension( const idCmdArgs &args, void(*callback)( const char *s ), const char *folder, bool stripFolder, ... );
	virtual void			ArgCompletion_DeclName( const idCmdArgs &args, void(*callback)( const char *s ), int type );

	virtual void			BufferCommandArgs( cmdExecution_t exec, const idCmdArgs &args );

	virtual void			SetupReloadEngine( const idCmdArgs &args );
	virtual bool			PostReloadEngine( void );

	void					SetWait( int numFrames ) {
    Sys_Printf("voidSetWait( int numFrames )\r\n");
}

	commandDef_t *			GetCommands( void ) const {
    Sys_Printf("commandDef_t *GetCommands( void )\r\n");
    return NULL;
}


private:
	static const int		MAX_CMD_BUFFER = 0x10000;

	commandDef_t *			commands;

	int						wait;
	int						textLength;
	byte					textBuf[MAX_CMD_BUFFER];

	idStr					completionString;
	idStrList				completionParms;

	// piggybacks on the text buffer, avoids tokenize again and screwing it up
	idList<idCmdArgs>		tokenizedCmds;

	// a command stored to be executed after a reloadEngine and all associated commands have been processed
	idCmdArgs				postReload;

private:	
	void					ExecuteTokenizedString( const idCmdArgs &args );
	void					ExecuteCommandText( const char *text );
	void					InsertCommandText( const char *text );
	void					AppendCommandText( const char *text );

	static void				ListByFlags( const idCmdArgs &args, cmdFlags_t flags );
	static void				List_f( const idCmdArgs &args );
	static void				SystemList_f( const idCmdArgs &args );
	static void				RendererList_f( const idCmdArgs &args );
	static void				SoundList_f( const idCmdArgs &args );
	static void				GameList_f( const idCmdArgs &args );
	static void				ToolList_f( const idCmdArgs &args );
	static void				Exec_f( const idCmdArgs &args );
	static void				Vstr_f( const idCmdArgs &args );
	static void				Echo_f( const idCmdArgs &args );
	static void				Parse_f( const idCmdArgs &args );
	static void				Wait_f( const idCmdArgs &args );
	static void				PrintMemInfo_f( const idCmdArgs &args );
};

idCmdSystemLocal			cmdSystemLocal;
idCmdSystem *				cmdSystem = &cmdSystemLocal;


/*
============
idCmdSystemLocal::ListByFlags
============
*/
// NOTE: the const wonkyness is required to make msvc happy
template<>
ID_INLINE int idListSortCompare( const commandDef_t * const *a, const commandDef_t * const *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idListSortCompare( const commandDef_t * const *a, const commandDef_t * const *b )\r\n");
    return retVal;
}


void idCmdSystemLocal::ListByFlags( const idCmdArgs &args, cmdFlags_t flags ) {
    Sys_Printf("void idCmdSystemLocal::ListByFlags( const idCmdArgs &args, cmdFlags_t flags )\r\n");
}


/*
============
idCmdSystemLocal::List_f
============
*/
void idCmdSystemLocal::List_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::List_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::SystemList_f
============
*/
void idCmdSystemLocal::SystemList_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::SystemList_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::RendererList_f
============
*/
void idCmdSystemLocal::RendererList_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::RendererList_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::SoundList_f
============
*/
void idCmdSystemLocal::SoundList_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::SoundList_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::GameList_f
============
*/
void idCmdSystemLocal::GameList_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::GameList_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::ToolList_f
============
*/
void idCmdSystemLocal::ToolList_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::ToolList_f( const idCmdArgs &args )\r\n");
}


/*
===============
idCmdSystemLocal::Exec_f
===============
*/
void idCmdSystemLocal::Exec_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::Exec_f( const idCmdArgs &args )\r\n");
}


/*
===============
idCmdSystemLocal::Vstr_f

Inserts the current value of a cvar as command text
===============
*/
void idCmdSystemLocal::Vstr_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::Vstr_f( const idCmdArgs &args )\r\n");
}


/*
===============
idCmdSystemLocal::Echo_f

Just prints the rest of the line to the console
===============
*/
void idCmdSystemLocal::Echo_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::Echo_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::Wait_f

Causes execution of the remainder of the command buffer to be delayed until next frame.
============
*/
void idCmdSystemLocal::Wait_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::Wait_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::Parse_f

This just prints out how the rest of the line was parsed, as a debugging tool.
============
*/
void idCmdSystemLocal::Parse_f( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::Parse_f( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::Init
============
*/
void idCmdSystemLocal::Init( void ) {
    Sys_Printf("void idCmdSystemLocal::Init( void )\r\n");
}


/*
============
idCmdSystemLocal::Shutdown
============
*/
void idCmdSystemLocal::Shutdown( void ) {
    Sys_Printf("void idCmdSystemLocal::Shutdown( void )\r\n");
}


/*
============
idCmdSystemLocal::AddCommand
============
*/
void idCmdSystemLocal::AddCommand( const char *cmdName, cmdFunction_t function, int flags, const char *description, argCompletion_t argCompletion ) {
    Sys_Printf("void idCmdSystemLocal::AddCommand( const char *cmdName, cmdFunction_t function, int flags, const char *description, argCompletion_t argCompletion )\r\n");
}


/*
============
idCmdSystemLocal::RemoveCommand
============
*/
void idCmdSystemLocal::RemoveCommand( const char *cmdName ) {
    Sys_Printf("void idCmdSystemLocal::RemoveCommand( const char *cmdName )\r\n");
}


/*
============
idCmdSystemLocal::RemoveFlaggedCommands
============
*/
void idCmdSystemLocal::RemoveFlaggedCommands( int flags ) {
    Sys_Printf("void idCmdSystemLocal::RemoveFlaggedCommands( int flags )\r\n");
}


/*
============
idCmdSystemLocal::CommandCompletion
============
*/
void idCmdSystemLocal::CommandCompletion( void(*callback)( const char *s ) ) {
	commandDef_t *cmd;
	
	for ( cmd = commands; cmd; cmd = cmd->next ) {
		callback( cmd->name );
	}
}

/*
============
idCmdSystemLocal::ArgCompletion
============
*/
void idCmdSystemLocal::ArgCompletion( const char *cmdString, void(*callback)( const char *s ) ) {
	commandDef_t *cmd;
	idCmdArgs args;

	args.TokenizeString( cmdString, false );

	for ( cmd = commands; cmd; cmd = cmd->next ) {
		if ( !cmd->argCompletion ) {
			continue;
		}
		if ( idStr::Icmp( args.Argv( 0 ), cmd->name ) == 0 ) {
			cmd->argCompletion( args, callback );
			break;
		}
	}
}

/*
============
idCmdSystemLocal::ExecuteTokenizedString
============
*/
void idCmdSystemLocal::ExecuteTokenizedString( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::ExecuteTokenizedString( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::ExecuteCommandText

Tokenizes, then executes.
============
*/
void idCmdSystemLocal::ExecuteCommandText( const char *text ) {
    Sys_Printf("void idCmdSystemLocal::ExecuteCommandText( const char *text )\r\n");
}


/*
============
idCmdSystemLocal::InsertCommandText

Adds command text immediately after the current command
Adds a \n to the text
============
*/
void idCmdSystemLocal::InsertCommandText( const char *text ) {
    Sys_Printf("void idCmdSystemLocal::InsertCommandText( const char *text )\r\n");
}


/*
============
idCmdSystemLocal::AppendCommandText

Adds command text at the end of the buffer, does NOT add a final \n
============
*/
void idCmdSystemLocal::AppendCommandText( const char *text ) {
    Sys_Printf("void idCmdSystemLocal::AppendCommandText( const char *text )\r\n");
}


/*
============
idCmdSystemLocal::BufferCommandText
============
*/
void idCmdSystemLocal::BufferCommandText( cmdExecution_t exec, const char *text ) {
    Sys_Printf("void idCmdSystemLocal::BufferCommandText( cmdExecution_t exec, const char *text )\r\n");
}


/*
============
idCmdSystemLocal::BufferCommandArgs
============
*/
void idCmdSystemLocal::BufferCommandArgs( cmdExecution_t exec, const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::BufferCommandArgs( cmdExecution_t exec, const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::ExecuteCommandBuffer
============
*/
void idCmdSystemLocal::ExecuteCommandBuffer( void ) {
    Sys_Printf("void idCmdSystemLocal::ExecuteCommandBuffer( void )\r\n");
}


/*
============
idCmdSystemLocal::ArgCompletion_FolderExtension
============
*/
void idCmdSystemLocal::ArgCompletion_FolderExtension( const idCmdArgs &args, void(*callback)( const char *s ), const char *folder, bool stripFolder, ... ) {
	int i;
	idStr string;
	const char *extension;
	va_list argPtr;

	string = args.Argv( 0 );
	string += " ";
	string += args.Argv( 1 );

	if ( string.Icmp( completionString ) != 0 ) {
		idStr parm, path;
		idFileList *names;

		completionString = string;
		completionParms.Clear();

		parm = args.Argv( 1 );
		parm.ExtractFilePath( path );
		if ( stripFolder || path.Length() == 0 ) {
			path = folder + path;
		}
		path.StripTrailing( '/' );

		// list folders
		names = fileSystem->ListFiles( path, "/", true, true );
		for ( i = 0; i < names->GetNumFiles(); i++ ) {
			idStr name = names->GetFile( i );
			if ( stripFolder ) {
				name.Strip( folder );
			} else {
				name.Strip( "/" );
			}
			name = args.Argv( 0 ) + ( " " + name ) + "/";
			completionParms.Append( name );
		}
		fileSystem->FreeFileList( names );

		// list files
		va_start( argPtr, stripFolder );
		for ( extension = va_arg( argPtr, const char * ); extension; extension = va_arg( argPtr, const char * ) ) {
			names = fileSystem->ListFiles( path, extension, true, true );
			for ( i = 0; i < names->GetNumFiles(); i++ ) {
				idStr name = names->GetFile( i );
				if ( stripFolder ) {
					name.Strip( folder );
				} else {
					name.Strip( "/" );
				}
				name = args.Argv( 0 ) + ( " " + name );
				completionParms.Append( name );
			}
			fileSystem->FreeFileList( names );
		}
		va_end( argPtr );
	}
	for ( i = 0; i < completionParms.Num(); i++ ) {
		callback( completionParms[i] );
	}
}

/*
============
idCmdSystemLocal::ArgCompletion_DeclName
============
*/
void idCmdSystemLocal::ArgCompletion_DeclName( const idCmdArgs &args, void(*callback)( const char *s ), int type ) {
	int i, num;

	if ( declManager == NULL ) {
		return;
	}
	num = declManager->GetNumDecls( (declType_t)type );
	for ( i = 0; i < num; i++ ) {
		callback( idStr( args.Argv( 0 ) ) + " " + declManager->DeclByIndex( (declType_t)type, i , false )->GetName() );
	}
}

/*
============
idCmdSystemLocal::SetupReloadEngine
============
*/
void idCmdSystemLocal::SetupReloadEngine( const idCmdArgs &args ) {
    Sys_Printf("void idCmdSystemLocal::SetupReloadEngine( const idCmdArgs &args )\r\n");
}


/*
============
idCmdSystemLocal::PostReloadEngine
============
*/
bool idCmdSystemLocal::PostReloadEngine( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCmdSystemLocal::PostReloadEngine( void )\r\n");
    return retVal;
}


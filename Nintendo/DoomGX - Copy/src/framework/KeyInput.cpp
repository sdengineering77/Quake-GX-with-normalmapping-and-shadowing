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

typedef struct {
	char	*name;
	int		keynum;
	char	*strId;	// localized string id
} keyname_t;

// keys that can be set without a special name
static const char unnamedkeys[] = "*,-=./[\\]1234567890abcdefghijklmnopqrstuvwxyz";

#if MACOS_X
const char* OSX_GetLocalizedString( const char* );
#endif

// names not in this list can either be lowercase ascii, or '0xnn' hex sequences
keyname_t keynames[] =
{
	{"TAB",				K_TAB,				"#str_07018"},
	{"ENTER",			K_ENTER,			"#str_07019"},
	{"ESCAPE",			K_ESCAPE,			"#str_07020"},
	{"SPACE",			K_SPACE,			"#str_07021"},
	{"BACKSPACE",		K_BACKSPACE,		"#str_07022"},
	{"UPARROW",			K_UPARROW,			"#str_07023"},
	{"DOWNARROW",		K_DOWNARROW,		"#str_07024"},
	{"LEFTARROW",		K_LEFTARROW,		"#str_07025"},
	{"RIGHTARROW",		K_RIGHTARROW,		"#str_07026"},

	{"ALT",				K_ALT,				"#str_07027"},
	{"RIGHTALT",		K_RIGHT_ALT,		"#str_07027"},
	{"CTRL",			K_CTRL,				"#str_07028"},
	{"SHIFT",			K_SHIFT,			"#str_07029"},

	{"LWIN", 			K_LWIN, 			"#str_07030"},
	{"RWIN", 			K_RWIN, 			"#str_07031"},
	{"MENU", 			K_MENU, 			"#str_07032"},

	{"COMMAND",			K_COMMAND,			"#str_07033"},

	{"CAPSLOCK",		K_CAPSLOCK,			"#str_07034"},
	{"SCROLL",			K_SCROLL,			"#str_07035"},
	{"PRINTSCREEN",		K_PRINT_SCR,		"#str_07179"},
	
	{"F1", 				K_F1, 				"#str_07036"},
	{"F2", 				K_F2, 				"#str_07037"},
	{"F3", 				K_F3, 				"#str_07038"},
	{"F4", 				K_F4, 				"#str_07039"},
	{"F5", 				K_F5, 				"#str_07040"},
	{"F6", 				K_F6, 				"#str_07041"},
	{"F7", 				K_F7, 				"#str_07042"},
	{"F8", 				K_F8, 				"#str_07043"},
	{"F9", 				K_F9, 				"#str_07044"},
	{"F10", 			K_F10, 				"#str_07045"},
	{"F11", 			K_F11, 				"#str_07046"},
	{"F12", 			K_F12, 				"#str_07047"},

	{"INS", 			K_INS, 				"#str_07048"},
	{"DEL", 			K_DEL, 				"#str_07049"},
	{"PGDN", 			K_PGDN, 			"#str_07050"},
	{"PGUP", 			K_PGUP, 			"#str_07051"},
	{"HOME", 			K_HOME, 			"#str_07052"},
	{"END",				K_END,				"#str_07053"},

	{"MOUSE1", 			K_MOUSE1, 			"#str_07054"},
	{"MOUSE2", 			K_MOUSE2, 			"#str_07055"},
	{"MOUSE3", 			K_MOUSE3, 			"#str_07056"},
	{"MOUSE4", 			K_MOUSE4, 			"#str_07057"},
	{"MOUSE5", 			K_MOUSE5, 			"#str_07058"},
	{"MOUSE6", 			K_MOUSE6, 			"#str_07059"},
	{"MOUSE7", 			K_MOUSE7, 			"#str_07060"},
	{"MOUSE8", 			K_MOUSE8, 			"#str_07061"},

	{"MWHEELUP",		K_MWHEELUP,			"#str_07131"},
	{"MWHEELDOWN",		K_MWHEELDOWN,		"#str_07132"},

	{"JOY1", 			K_JOY1, 			"#str_07062"},
	{"JOY2", 			K_JOY2, 			"#str_07063"},
	{"JOY3", 			K_JOY3, 			"#str_07064"},
	{"JOY4", 			K_JOY4, 			"#str_07065"},
	{"JOY5", 			K_JOY5, 			"#str_07066"},
	{"JOY6", 			K_JOY6, 			"#str_07067"},
	{"JOY7", 			K_JOY7, 			"#str_07068"},
	{"JOY8", 			K_JOY8, 			"#str_07069"},
	{"JOY9", 			K_JOY9, 			"#str_07070"},
	{"JOY10", 			K_JOY10, 			"#str_07071"},
	{"JOY11", 			K_JOY11, 			"#str_07072"},
	{"JOY12", 			K_JOY12, 			"#str_07073"},
	{"JOY13", 			K_JOY13, 			"#str_07074"},
	{"JOY14", 			K_JOY14, 			"#str_07075"},
	{"JOY15", 			K_JOY15, 			"#str_07076"},
	{"JOY16", 			K_JOY16, 			"#str_07077"},
	{"JOY17", 			K_JOY17, 			"#str_07078"},
	{"JOY18", 			K_JOY18, 			"#str_07079"},
	{"JOY19", 			K_JOY19, 			"#str_07080"},
	{"JOY20", 			K_JOY20, 			"#str_07081"},
	{"JOY21", 			K_JOY21, 			"#str_07082"},
	{"JOY22", 			K_JOY22, 			"#str_07083"},
	{"JOY23", 			K_JOY23, 			"#str_07084"},
	{"JOY24", 			K_JOY24, 			"#str_07085"},
	{"JOY25", 			K_JOY25, 			"#str_07086"},
	{"JOY26", 			K_JOY26, 			"#str_07087"},
	{"JOY27", 			K_JOY27, 			"#str_07088"},
	{"JOY28", 			K_JOY28, 			"#str_07089"},
	{"JOY29", 			K_JOY29, 			"#str_07090"},
	{"JOY30", 			K_JOY30, 			"#str_07091"},
	{"JOY31", 			K_JOY31, 			"#str_07092"},
	{"JOY32", 			K_JOY32, 			"#str_07093"},

	{"AUX1", 			K_AUX1, 			"#str_07094"},
	{"AUX2", 			K_AUX2, 			"#str_07095"},
	{"AUX3", 			K_AUX3, 			"#str_07096"},
	{"AUX4", 			K_AUX4, 			"#str_07097"},
	{"AUX5", 			K_AUX5, 			"#str_07098"},
	{"AUX6", 			K_AUX6, 			"#str_07099"},
	{"AUX7", 			K_AUX7, 			"#str_07100"},
	{"AUX8", 			K_AUX8, 			"#str_07101"},
	{"AUX9", 			K_AUX9, 			"#str_07102"},
	{"AUX10", 			K_AUX10, 			"#str_07103"},
	{"AUX11", 			K_AUX11, 			"#str_07104"},
	{"AUX12", 			K_AUX12, 			"#str_07105"},
	{"AUX13", 			K_AUX13, 			"#str_07106"},
	{"AUX14", 			K_AUX14, 			"#str_07107"},
	{"AUX15", 			K_AUX15, 			"#str_07108"},
	{"AUX16", 			K_AUX16, 			"#str_07109"},

	{"KP_HOME",			K_KP_HOME,			"#str_07110"},
	{"KP_UPARROW",		K_KP_UPARROW,		"#str_07111"},
	{"KP_PGUP",			K_KP_PGUP,			"#str_07112"},
	{"KP_LEFTARROW",	K_KP_LEFTARROW, 	"#str_07113"},
	{"KP_5",			K_KP_5,				"#str_07114"},
	{"KP_RIGHTARROW",	K_KP_RIGHTARROW,	"#str_07115"},
	{"KP_END",			K_KP_END,			"#str_07116"},
	{"KP_DOWNARROW",	K_KP_DOWNARROW,		"#str_07117"},
	{"KP_PGDN",			K_KP_PGDN,			"#str_07118"},
	{"KP_ENTER",		K_KP_ENTER,			"#str_07119"},
	{"KP_INS",			K_KP_INS, 			"#str_07120"},
	{"KP_DEL",			K_KP_DEL, 			"#str_07121"},
	{"KP_SLASH",		K_KP_SLASH, 		"#str_07122"},
	{"KP_MINUS",		K_KP_MINUS, 		"#str_07123"},
	{"KP_PLUS",			K_KP_PLUS,			"#str_07124"},
	{"KP_NUMLOCK",		K_KP_NUMLOCK,		"#str_07125"},
	{"KP_STAR",			K_KP_STAR,			"#str_07126"},
	{"KP_EQUALS",		K_KP_EQUALS,		"#str_07127"},

	{"PAUSE",			K_PAUSE,			"#str_07128"},
	
	{"SEMICOLON",		';',				"#str_07129"},	// because a raw semicolon separates commands
	{"APOSTROPHE",		'\'',				"#str_07130"},	// because a raw apostrophe messes with parsing

	{NULL,				0,					NULL}
};



static const int	MAX_KEYS = 256;

class idKey {
public:
					idKey( void ) { down = false; repeats = 0; usercmdAction = 0; }
	bool			down;
	int				repeats;		// if > 1, it is autorepeating
	idStr			binding;
	int				usercmdAction;	// for testing by the asyncronous usercmd generation
};

bool		key_overstrikeMode = false;
idKey *		keys = NULL;

#define ID_DOOM_LEGACY

#ifdef ID_DOOM_LEGACY

char *		cheatCodes[] = {
	"iddqd",		// Invincibility
	"idkfa",		// All weapons, keys, ammo, and 200% armor
	"idfa",			// Reset ammunition
	"idspispopd",	// Walk through walls
	"idclip",		// Walk through walls
	"idchoppers",	// Chainsaw
/*
	"idbeholds",	// Berserker strength
	"idbeholdv",	// Temporary invincibility
	"idbeholdi",	// Temporary invisibility
	"idbeholda",	// Full automap
	"idbeholdr",	// Anti-radiation suit
	"idbeholdl",	// Light amplification visor
	"idclev",		// Level select
	"iddt",			// Toggle full map; full map and objects; normal map
	"idmypos",		// Display coordinates and heading
	"idmus",		// Change music to indicated level
	"fhhall",		// Kill all enemies in level
	"fhshh",		// Invisible to enemies until attack
*/
	NULL
};
char		lastKeys[32];
int			lastKeyIndex;

#endif

/*
===================
idKeyInput::ArgCompletion_KeyName
===================
*/
void idKeyInput::ArgCompletion_KeyName( const idCmdArgs &args, void(*callback)( const char *s ) ) {
	keyname_t *kn;
	int i;

	for( i = 0; i < sizeof( unnamedkeys ) - 1; i++ ) {
		callback( va( "%s %c", args.Argv( 0 ), unnamedkeys[ i ] ) );
	}

	for ( kn = keynames; kn->name; kn++ ) {
		callback( va( "%s %s", args.Argv( 0 ), kn->name ) );
	}
}

/*
===================
idKeyInput::GetOverstrikeMode
===================
*/
bool idKeyInput::GetOverstrikeMode( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idKeyInput::GetOverstrikeMode( void )\r\n");
    return retVal;
}


/*
===================
idKeyInput::SetOverstrikeMode
===================
*/
void idKeyInput::SetOverstrikeMode( bool state ) {
    Sys_Printf("void idKeyInput::SetOverstrikeMode( bool state )\r\n");
}


/*
===================
idKeyInput::IsDown
===================
*/
bool idKeyInput::IsDown( int keynum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idKeyInput::IsDown( int keynum )\r\n");
    return retVal;
}


/*
===================
idKeyInput::StringToKeyNum

Returns a key number to be used to index keys[] by looking at
the given string.  Single ascii characters return themselves, while
the K_* names are matched up.

0x11 will be interpreted as raw hex, which will allow new controlers
to be configured even if they don't have defined names.
===================
*/
int idKeyInput::StringToKeyNum( const char *str ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idKeyInput::StringToKeyNum( const char *str )\r\n");
    return retVal;
}


/*
===================
idKeyInput::KeyNumToString

Returns a string (either a single ascii char, a K_* name, or a 0x11 hex string) for the
given keynum.
===================
*/
const char *idKeyInput::KeyNumToString( int keynum, bool localized ) {
    Sys_Printf("char *idKeyInput::KeyNumToString( int keynum, bool localized )\r\n");
    return NULL;
}


/*
===================
idKeyInput::SetBinding
===================
*/
void idKeyInput::SetBinding( int keynum, const char *binding ) {
    Sys_Printf("void idKeyInput::SetBinding( int keynum, const char *binding )\r\n");
}



/*
===================
idKeyInput::GetBinding
===================
*/
const char *idKeyInput::GetBinding( int keynum ) {
    Sys_Printf("char *idKeyInput::GetBinding( int keynum )\r\n");
    return NULL;
}


/*
===================
idKeyInput::GetUsercmdAction
===================
*/
int idKeyInput::GetUsercmdAction( int keynum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idKeyInput::GetUsercmdAction( int keynum )\r\n");
    return retVal;
}


/*
===================
Key_Unbind_f
===================
*/
void Key_Unbind_f( const idCmdArgs &args ) {
    Sys_Printf("void Key_Unbind_f( const idCmdArgs &args )\r\n");
}


/*
===================
Key_Unbindall_f
===================
*/
void Key_Unbindall_f( const idCmdArgs &args ) {
    Sys_Printf("void Key_Unbindall_f( const idCmdArgs &args )\r\n");
}


/*
===================
Key_Bind_f
===================
*/
void Key_Bind_f( const idCmdArgs &args ) {
    Sys_Printf("void Key_Bind_f( const idCmdArgs &args )\r\n");
}


/*
============
Key_BindUnBindTwo_f

binds keynum to bindcommand and unbinds if there are already two binds on the key
============
*/
void Key_BindUnBindTwo_f( const idCmdArgs &args ) {
    Sys_Printf("void Key_BindUnBindTwo_f( const idCmdArgs &args )\r\n");
}




/*
============
idKeyInput::WriteBindings

Writes lines containing "bind key value"
============
*/
void idKeyInput::WriteBindings( idFile *f ) {
    Sys_Printf("void idKeyInput::WriteBindings( idFile *f )\r\n");
}


/*
============
Key_ListBinds_f
============
*/
void Key_ListBinds_f( const idCmdArgs &args ) {
    Sys_Printf("void Key_ListBinds_f( const idCmdArgs &args )\r\n");
}


/*
============
idKeyInput::KeysFromBinding
returns the localized name of the key for the binding
============
*/
const char *idKeyInput::KeysFromBinding( const char *bind ) {
    Sys_Printf("char *idKeyInput::KeysFromBinding( const char *bind )\r\n");
    return NULL;
}


/*
============
idKeyInput::BindingFromKey
returns the binding for the localized name of the key
============
*/
const char *idKeyInput::BindingFromKey( const char *key ) {
    Sys_Printf("char *idKeyInput::BindingFromKey( const char *key )\r\n");
    return NULL;
}


/*
============
idKeyInput::UnbindBinding
============
*/
bool idKeyInput::UnbindBinding( const char *binding ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idKeyInput::UnbindBinding( const char *binding )\r\n");
    return retVal;
}


/*
============
idKeyInput::NumBinds
============
*/
int idKeyInput::NumBinds( const char *binding ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idKeyInput::NumBinds( const char *binding )\r\n");
    return retVal;
}


/*
============
idKeyInput::KeyIsBountTo
============
*/
bool idKeyInput::KeyIsBoundTo( int keynum, const char *binding ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idKeyInput::KeyIsBoundTo( int keynum, const char *binding )\r\n");
    return retVal;
}


/*
===================
idKeyInput::PreliminaryKeyEvent

Tracks global key up/down state
Called by the system for both key up and key down events
===================
*/
void idKeyInput::PreliminaryKeyEvent( int keynum, bool down ) {
    Sys_Printf("void idKeyInput::PreliminaryKeyEvent( int keynum, bool down )\r\n");
}


/*
=================
idKeyInput::ExecKeyBinding
=================
*/
bool idKeyInput::ExecKeyBinding( int keynum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idKeyInput::ExecKeyBinding( int keynum )\r\n");
    return retVal;
}


/*
===================
idKeyInput::ClearStates
===================
*/
void idKeyInput::ClearStates( void ) {
    Sys_Printf("void idKeyInput::ClearStates( void )\r\n");
}


/*
===================
idKeyInput::Init
===================
*/
void idKeyInput::Init( void ) {
    Sys_Printf("void idKeyInput::Init( void )\r\n");
}


/*
===================
idKeyInput::Shutdown
===================
*/
void idKeyInput::Shutdown( void ) {
    Sys_Printf("void idKeyInput::Shutdown( void )\r\n");
}


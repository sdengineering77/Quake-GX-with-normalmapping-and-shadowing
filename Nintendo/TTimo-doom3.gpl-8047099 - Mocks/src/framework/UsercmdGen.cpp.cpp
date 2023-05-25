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

#include "Session_local.h"

/*
================
usercmd_t::ByteSwap
================
*/
void usercmd_t::ByteSwap( void ) {
    Sys_Printf("void usercmd_t::ByteSwap( void )\r\n");
}


/*
================
usercmd_t::operator==
================
*/
bool usercmd_t::operator==( const usercmd_t &rhs ) const { 
	return ( buttons == rhs.buttons &&
			forwardmove == rhs.forwardmove &&
			rightmove == rhs.rightmove &&
			upmove == rhs.upmove &&
			angles[0] == rhs.angles[0] &&
			angles[1] == rhs.angles[1] &&
			angles[2] == rhs.angles[2] &&
			impulse == rhs.impulse &&
			flags == rhs.flags &&
			mx == rhs.mx &&
			my == rhs.my );
}


const int KEY_MOVESPEED	= 127;

typedef enum {
	UB_NONE,

	UB_UP,
	UB_DOWN,
	UB_LEFT,
	UB_RIGHT,
	UB_FORWARD,
	UB_BACK,
	UB_LOOKUP,
	UB_LOOKDOWN,
	UB_STRAFE,
	UB_MOVELEFT,
	UB_MOVERIGHT,

	UB_BUTTON0,
	UB_BUTTON1,
	UB_BUTTON2,
	UB_BUTTON3,
	UB_BUTTON4,
	UB_BUTTON5,
	UB_BUTTON6,
	UB_BUTTON7,

	UB_ATTACK,
	UB_SPEED,
	UB_ZOOM,
	UB_SHOWSCORES,
	UB_MLOOK,

	UB_IMPULSE0,
	UB_IMPULSE1,
	UB_IMPULSE2,
	UB_IMPULSE3,
	UB_IMPULSE4,
	UB_IMPULSE5,
	UB_IMPULSE6,
	UB_IMPULSE7,
	UB_IMPULSE8,
	UB_IMPULSE9,
	UB_IMPULSE10,
	UB_IMPULSE11,
	UB_IMPULSE12,
	UB_IMPULSE13,
	UB_IMPULSE14,
	UB_IMPULSE15,
	UB_IMPULSE16,
	UB_IMPULSE17,
	UB_IMPULSE18,
	UB_IMPULSE19,
	UB_IMPULSE20,
	UB_IMPULSE21,
	UB_IMPULSE22,
	UB_IMPULSE23,
	UB_IMPULSE24,
	UB_IMPULSE25,
	UB_IMPULSE26,
	UB_IMPULSE27,
	UB_IMPULSE28,
	UB_IMPULSE29,
	UB_IMPULSE30,
	UB_IMPULSE31,
	UB_IMPULSE32,
	UB_IMPULSE33,
	UB_IMPULSE34,
	UB_IMPULSE35,
	UB_IMPULSE36,
	UB_IMPULSE37,
	UB_IMPULSE38,
	UB_IMPULSE39,
	UB_IMPULSE40,
	UB_IMPULSE41,
	UB_IMPULSE42,
	UB_IMPULSE43,
	UB_IMPULSE44,
	UB_IMPULSE45,
	UB_IMPULSE46,
	UB_IMPULSE47,
	UB_IMPULSE48,
	UB_IMPULSE49,
	UB_IMPULSE50,
	UB_IMPULSE51,
	UB_IMPULSE52,
	UB_IMPULSE53,
	UB_IMPULSE54,
	UB_IMPULSE55,
	UB_IMPULSE56,
	UB_IMPULSE57,
	UB_IMPULSE58,
	UB_IMPULSE59,
	UB_IMPULSE60,
	UB_IMPULSE61,
	UB_IMPULSE62,
	UB_IMPULSE63,

	UB_MAX_BUTTONS
} usercmdButton_t;

typedef struct {
	const char *string;
	usercmdButton_t	button;
} userCmdString_t;

userCmdString_t	userCmdStrings[] = {
	{ "_moveUp",		UB_UP },
	{ "_moveDown",		UB_DOWN },
	{ "_left",			UB_LEFT },
	{ "_right",			UB_RIGHT },
	{ "_forward",		UB_FORWARD },
	{ "_back",			UB_BACK },
	{ "_lookUp",		UB_LOOKUP },
	{ "_lookDown",		UB_LOOKDOWN },
	{ "_strafe",		UB_STRAFE },
	{ "_moveLeft",		UB_MOVELEFT },
	{ "_moveRight",		UB_MOVERIGHT },

	{ "_attack",		UB_ATTACK },
	{ "_speed",			UB_SPEED },
	{ "_zoom",			UB_ZOOM },
	{ "_showScores",	UB_SHOWSCORES },
	{ "_mlook",			UB_MLOOK },

	{ "_button0",		UB_BUTTON0 },
	{ "_button1",		UB_BUTTON1 },
	{ "_button2",		UB_BUTTON2 },
	{ "_button3",		UB_BUTTON3 },
	{ "_button4",		UB_BUTTON4 },
	{ "_button5",		UB_BUTTON5 },
	{ "_button6",		UB_BUTTON6 },
	{ "_button7",		UB_BUTTON7 },

	{ "_impulse0",		UB_IMPULSE0 },
	{ "_impulse1",		UB_IMPULSE1 },
	{ "_impulse2",		UB_IMPULSE2 },
	{ "_impulse3",		UB_IMPULSE3 },
	{ "_impulse4",		UB_IMPULSE4 },
	{ "_impulse5",		UB_IMPULSE5 },
	{ "_impulse6",		UB_IMPULSE6 },
	{ "_impulse7",		UB_IMPULSE7 },
	{ "_impulse8",		UB_IMPULSE8 },
	{ "_impulse9",		UB_IMPULSE9 },
	{ "_impulse10",		UB_IMPULSE10 },
	{ "_impulse11",		UB_IMPULSE11 },
	{ "_impulse12",		UB_IMPULSE12 },
	{ "_impulse13",		UB_IMPULSE13 },
	{ "_impulse14",		UB_IMPULSE14 },
	{ "_impulse15",		UB_IMPULSE15 },
	{ "_impulse16",		UB_IMPULSE16 },
	{ "_impulse17",		UB_IMPULSE17 },
	{ "_impulse18",		UB_IMPULSE18 },
	{ "_impulse19",		UB_IMPULSE19 },
	{ "_impulse20",		UB_IMPULSE20 },
	{ "_impulse21",		UB_IMPULSE21 },
	{ "_impulse22",		UB_IMPULSE22 },
	{ "_impulse23",		UB_IMPULSE23 },
	{ "_impulse24",		UB_IMPULSE24 },
	{ "_impulse25",		UB_IMPULSE25 },
	{ "_impulse26",		UB_IMPULSE26 },
	{ "_impulse27",		UB_IMPULSE27 },
	{ "_impulse28",		UB_IMPULSE28 },
	{ "_impulse29",		UB_IMPULSE29 },
	{ "_impulse30",		UB_IMPULSE30 },
	{ "_impulse31",		UB_IMPULSE31 },
	{ "_impulse32",		UB_IMPULSE32 },
	{ "_impulse33",		UB_IMPULSE33 },
	{ "_impulse34",		UB_IMPULSE34 },
	{ "_impulse35",		UB_IMPULSE35 },
	{ "_impulse36",		UB_IMPULSE36 },
	{ "_impulse37",		UB_IMPULSE37 },
	{ "_impulse38",		UB_IMPULSE38 },
	{ "_impulse39",		UB_IMPULSE39 },
	{ "_impulse40",		UB_IMPULSE40 },
	{ "_impulse41",		UB_IMPULSE41 },
	{ "_impulse42",		UB_IMPULSE42 },
	{ "_impulse43",		UB_IMPULSE43 },
	{ "_impulse44",		UB_IMPULSE44 },
	{ "_impulse45",		UB_IMPULSE45 },
	{ "_impulse46",		UB_IMPULSE46 },
	{ "_impulse47",		UB_IMPULSE47 },
	{ "_impulse48",		UB_IMPULSE48 },
	{ "_impulse49",		UB_IMPULSE49 },
	{ "_impulse50",		UB_IMPULSE50 },
	{ "_impulse51",		UB_IMPULSE51 },
	{ "_impulse52",		UB_IMPULSE52 },
	{ "_impulse53",		UB_IMPULSE53 },
	{ "_impulse54",		UB_IMPULSE54 },
	{ "_impulse55",		UB_IMPULSE55 },
	{ "_impulse56",		UB_IMPULSE56 },
	{ "_impulse57",		UB_IMPULSE57 },
	{ "_impulse58",		UB_IMPULSE58 },
	{ "_impulse59",		UB_IMPULSE59 },
	{ "_impulse60",		UB_IMPULSE60 },
	{ "_impulse61",		UB_IMPULSE61 },
	{ "_impulse62",		UB_IMPULSE62 },
	{ "_impulse63",		UB_IMPULSE63 },

	{ NULL,				UB_NONE },
};

 class buttonState_t {
 public:
	int		on;
	bool	held;

			buttonState_t() { Clear(); };
	void	Clear( void );
	void	SetKeyState( int keystate, bool toggle );
};

/*
================
buttonState_t::Clear
================
*/
void buttonState_t::Clear( void ) {
    Sys_Printf("void buttonState_t::Clear( void )\r\n");
}


/*
================
buttonState_t::SetKeyState
================
*/
void buttonState_t::SetKeyState( int keystate, bool toggle ) {
    Sys_Printf("void buttonState_t::SetKeyState( int keystate, bool toggle )\r\n");
}



const int NUM_USER_COMMANDS = sizeof(userCmdStrings) / sizeof(userCmdString_t);

const int MAX_CHAT_BUFFER = 127;

class idUsercmdGenLocal : public idUsercmdGen {
public:
					idUsercmdGenLocal( void );
	
	void			Init( void );

	void			InitForNewMap( void );

	void			Shutdown( void );

	void			Clear( void );

	void			ClearAngles( void );

	usercmd_t		TicCmd( int ticNumber );

	void			InhibitUsercmd( inhibit_t subsystem, bool inhibit );

	void			UsercmdInterrupt( void );

	int				CommandStringUsercmdData( const char *cmdString );

	int				GetNumUserCommands( void );

	const char *	GetUserCommandName( int index );

	void			MouseState( int *x, int *y, int *button, bool *down );

	int				ButtonState( int key );
	int				KeyState( int key );

	usercmd_t		GetDirectUsercmd( void );

private:
	void			MakeCurrent( void );
	void			InitCurrent( void );

	bool			Inhibited( void );
	void			AdjustAngles( void );
	void			KeyMove( void );
	void			JoystickMove( void );
	void			MouseMove( void );
	void			CmdButtons( void );

	void			Mouse( void );
	void			Keyboard( void );
	void			Joystick( void );

	void			Key( int keyNum, bool down );

	idVec3			viewangles;
	int				flags;
	int				impulse;

	buttonState_t	toggled_crouch;
	buttonState_t	toggled_run;
	buttonState_t	toggled_zoom;

	int				buttonState[UB_MAX_BUTTONS];
	bool			keyState[K_LAST_KEY];

	int				inhibitCommands;	// true when in console or menu locally
	int				lastCommandTime;

	bool			initialized;

	usercmd_t		cmd;		// the current cmd being built
	usercmd_t		buffered[MAX_BUFFERED_USERCMD];

	int				continuousMouseX, continuousMouseY;	// for gui event generatioin, never zerod
	int				mouseButton;						// for gui event generatioin
	bool			mouseDown;

	int				mouseDx, mouseDy;	// added to by mouse events
	int				joystickAxis[MAX_JOYSTICK_AXIS];	// set by joystick events

	static idCVar	in_yawSpeed;
	static idCVar	in_pitchSpeed;
	static idCVar	in_angleSpeedKey;
	static idCVar	in_freeLook;
	static idCVar	in_alwaysRun;
	static idCVar	in_toggleRun;
	static idCVar	in_toggleCrouch;
	static idCVar	in_toggleZoom;
	static idCVar	sensitivity;
	static idCVar	m_pitch;
	static idCVar	m_yaw;
	static idCVar	m_strafeScale;
	static idCVar	m_smooth;
	static idCVar	m_strafeSmooth;
	static idCVar	m_showMouseRate;
};

idCVar idUsercmdGenLocal::in_yawSpeed( "in_yawspeed", "140", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_FLOAT, "yaw change speed when holding down _left or _right button" );
idCVar idUsercmdGenLocal::in_pitchSpeed( "in_pitchspeed", "140", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_FLOAT, "pitch change speed when holding down look _lookUp or _lookDown button" );
idCVar idUsercmdGenLocal::in_angleSpeedKey( "in_anglespeedkey", "1.5", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_FLOAT, "angle change scale when holding down _speed button" );
idCVar idUsercmdGenLocal::in_freeLook( "in_freeLook", "1", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_BOOL, "look around with mouse (reverse _mlook button)" );
idCVar idUsercmdGenLocal::in_alwaysRun( "in_alwaysRun", "0", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_BOOL, "always run (reverse _speed button) - only in MP" );
idCVar idUsercmdGenLocal::in_toggleRun( "in_toggleRun", "0", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_BOOL, "pressing _speed button toggles run on/off - only in MP" );
idCVar idUsercmdGenLocal::in_toggleCrouch( "in_toggleCrouch", "0", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_BOOL, "pressing _movedown button toggles player crouching/standing" );
idCVar idUsercmdGenLocal::in_toggleZoom( "in_toggleZoom", "0", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_BOOL, "pressing _zoom button toggles zoom on/off" );
idCVar idUsercmdGenLocal::sensitivity( "sensitivity", "5", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_FLOAT, "mouse view sensitivity" );
idCVar idUsercmdGenLocal::m_pitch( "m_pitch", "0.022", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_FLOAT, "mouse pitch scale" );
idCVar idUsercmdGenLocal::m_yaw( "m_yaw", "0.022", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_FLOAT, "mouse yaw scale" );
idCVar idUsercmdGenLocal::m_strafeScale( "m_strafeScale", "6.25", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_FLOAT, "mouse strafe movement scale" );
idCVar idUsercmdGenLocal::m_smooth( "m_smooth", "1", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_INTEGER, "number of samples blended for mouse viewing", 1, 8, idCmdSystem::ArgCompletion_Integer<1,8> );
idCVar idUsercmdGenLocal::m_strafeSmooth( "m_strafeSmooth", "4", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_INTEGER, "number of samples blended for mouse moving", 1, 8, idCmdSystem::ArgCompletion_Integer<1,8> );
idCVar idUsercmdGenLocal::m_showMouseRate( "m_showMouseRate", "0", CVAR_SYSTEM | CVAR_BOOL, "shows mouse movement" );

static idUsercmdGenLocal localUsercmdGen;
idUsercmdGen	*usercmdGen = &localUsercmdGen;

/*
================
idUsercmdGenLocal::idUsercmdGenLocal
================
*/
idUsercmdGenLocal::idUsercmdGenLocal( void ) {
	lastCommandTime = 0;
	initialized = false;

	flags = 0;
	impulse = 0;

	toggled_crouch.Clear();
	toggled_run.Clear();
	toggled_zoom.Clear();
	toggled_run.on = in_alwaysRun.GetBool();

	ClearAngles();
	Clear();
}

/*
================
idUsercmdGenLocal::InhibitUsercmd
================
*/
void idUsercmdGenLocal::InhibitUsercmd( inhibit_t subsystem, bool inhibit ) {
    Sys_Printf("void idUsercmdGenLocal::InhibitUsercmd( inhibit_t subsystem, bool inhibit )\r\n");
}


/*
===============
idUsercmdGenLocal::ButtonState

Returns (the fraction of the frame) that the key was down
===============
*/
int	idUsercmdGenLocal::ButtonState( int key ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidUsercmdGenLocal::ButtonState( int key )\r\n");
    return retVal;
}


/*
===============
idUsercmdGenLocal::KeyState

Returns (the fraction of the frame) that the key was down
bk20060111
===============
*/
int	idUsercmdGenLocal::KeyState( int key ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidUsercmdGenLocal::KeyState( int key )\r\n");
    return retVal;
}



//=====================================================================


/*
================
idUsercmdGenLocal::GetNumUserCommands
================
*/
int idUsercmdGenLocal::GetNumUserCommands( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idUsercmdGenLocal::GetNumUserCommands( void )\r\n");
    return retVal;
}


/*
================
idUsercmdGenLocal::GetNumUserCommands
================
*/
const char *idUsercmdGenLocal::GetUserCommandName( int index ) {
    Sys_Printf("char *idUsercmdGenLocal::GetUserCommandName( int index )\r\n");
    return NULL;
}


/*
================
idUsercmdGenLocal::Inhibited

is user cmd generation inhibited
================
*/
bool idUsercmdGenLocal::Inhibited( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idUsercmdGenLocal::Inhibited( void )\r\n");
    return retVal;
}


/*
================
idUsercmdGenLocal::AdjustAngles

Moves the local angle positions
================
*/
void idUsercmdGenLocal::AdjustAngles( void ) {
    Sys_Printf("void idUsercmdGenLocal::AdjustAngles( void )\r\n");
}


/*
================
idUsercmdGenLocal::KeyMove

Sets the usercmd_t based on key states
================
*/
void idUsercmdGenLocal::KeyMove( void ) {
    Sys_Printf("void idUsercmdGenLocal::KeyMove( void )\r\n");
}


/*
=================
idUsercmdGenLocal::MouseMove
=================
*/
void idUsercmdGenLocal::MouseMove( void ) {
    Sys_Printf("void idUsercmdGenLocal::MouseMove( void )\r\n");
}


/*
=================
idUsercmdGenLocal::JoystickMove
=================
*/
void idUsercmdGenLocal::JoystickMove( void ) {
    Sys_Printf("void idUsercmdGenLocal::JoystickMove( void )\r\n");
}


/*
==============
idUsercmdGenLocal::CmdButtons
==============
*/
void idUsercmdGenLocal::CmdButtons( void ) {
    Sys_Printf("void idUsercmdGenLocal::CmdButtons( void )\r\n");
}


/*
================
idUsercmdGenLocal::InitCurrent

inits the current command for this frame
================
*/
void idUsercmdGenLocal::InitCurrent( void ) {
    Sys_Printf("void idUsercmdGenLocal::InitCurrent( void )\r\n");
}


/*
================
idUsercmdGenLocal::MakeCurrent

creates the current command for this frame
================
*/
void idUsercmdGenLocal::MakeCurrent( void ) {
    Sys_Printf("void idUsercmdGenLocal::MakeCurrent( void )\r\n");
}


//=====================================================================


/*
================
idUsercmdGenLocal::CommandStringUsercmdData

Returns the button if the command string is used by the async usercmd generator.
================
*/
int	idUsercmdGenLocal::CommandStringUsercmdData( const char *cmdString ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidUsercmdGenLocal::CommandStringUsercmdData( const char *cmdString )\r\n");
    return retVal;
}


/*
================
idUsercmdGenLocal::Init
================
*/
void idUsercmdGenLocal::Init( void ) {
    Sys_Printf("void idUsercmdGenLocal::Init( void )\r\n");
}


/*
================
idUsercmdGenLocal::InitForNewMap
================
*/
void idUsercmdGenLocal::InitForNewMap( void ) {
    Sys_Printf("void idUsercmdGenLocal::InitForNewMap( void )\r\n");
}


/*
================
idUsercmdGenLocal::Shutdown
================
*/
void idUsercmdGenLocal::Shutdown( void ) {
    Sys_Printf("void idUsercmdGenLocal::Shutdown( void )\r\n");
}


/*
================
idUsercmdGenLocal::Clear
================
*/
void idUsercmdGenLocal::Clear( void ) {
    Sys_Printf("void idUsercmdGenLocal::Clear( void )\r\n");
}


/*
================
idUsercmdGenLocal::ClearAngles
================
*/
void idUsercmdGenLocal::ClearAngles( void ) {
    Sys_Printf("void idUsercmdGenLocal::ClearAngles( void )\r\n");
}


/*
================
idUsercmdGenLocal::TicCmd

Returns a buffered usercmd
================
*/
usercmd_t idUsercmdGenLocal::TicCmd( int ticNumber ) {
    usercmd_t retVal;
    memset(&retVal, 0, sizeof(usercmd_t));
    Sys_Printf("usercmd_t idUsercmdGenLocal::TicCmd( int ticNumber )\r\n");
    return retVal;
}


//======================================================================


/*
===================
idUsercmdGenLocal::Key

Handles async mouse/keyboard button actions
===================
*/
void idUsercmdGenLocal::Key( int keyNum, bool down ) {
    Sys_Printf("void idUsercmdGenLocal::Key( int keyNum, bool down )\r\n");
}


/*
===================
idUsercmdGenLocal::Mouse
===================
*/
void idUsercmdGenLocal::Mouse( void ) {
    Sys_Printf("void idUsercmdGenLocal::Mouse( void )\r\n");
}


/*
===============
idUsercmdGenLocal::Keyboard
===============
*/
void idUsercmdGenLocal::Keyboard( void ) {
    Sys_Printf("void idUsercmdGenLocal::Keyboard( void )\r\n");
}


/*
===============
idUsercmdGenLocal::Joystick
===============
*/
void idUsercmdGenLocal::Joystick( void ) {
    Sys_Printf("void idUsercmdGenLocal::Joystick( void )\r\n");
}


/*
================
idUsercmdGenLocal::UsercmdInterrupt

Called asyncronously
================
*/
void idUsercmdGenLocal::UsercmdInterrupt( void ) {
    Sys_Printf("void idUsercmdGenLocal::UsercmdInterrupt( void )\r\n");
}


/*
================
idUsercmdGenLocal::MouseState
================
*/
void idUsercmdGenLocal::MouseState( int *x, int *y, int *button, bool *down ) {
    Sys_Printf("void idUsercmdGenLocal::MouseState( int *x, int *y, int *button, bool *down )\r\n");
}


/*
================
idUsercmdGenLocal::GetDirectUsercmd
================
*/
usercmd_t idUsercmdGenLocal::GetDirectUsercmd( void ) {
    usercmd_t retVal;
    memset(&retVal, 0, sizeof(usercmd_t));
    Sys_Printf("usercmd_t idUsercmdGenLocal::GetDirectUsercmd( void )\r\n");
    return retVal;
}


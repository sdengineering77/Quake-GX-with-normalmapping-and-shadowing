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

#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"
#include "EditWindow.h"
#include "ChoiceWindow.h"
#include "SliderWindow.h"
#include "BindWindow.h"
#include "ListWindow.h"
#include "RenderWindow.h"
#include "MarkerWindow.h"
#include "FieldWindow.h"

#include "GameSSDWindow.h"
#include "GameBearShootWindow.h"
#include "GameBustOutWindow.h"

// 
//  gui editor is more integrated into the window now
#include "../tools/guied/GEWindowWrapper.h"

bool idWindow::registerIsTemporary[MAX_EXPRESSION_REGISTERS];		// statics to assist during parsing
//float idWindow::shaderRegisters[MAX_EXPRESSION_REGISTERS];
//wexpOp_t idWindow::shaderOps[MAX_EXPRESSION_OPS];

idCVar idWindow::gui_debug( "gui_debug", "0", CVAR_GUI | CVAR_BOOL, "" );
idCVar idWindow::gui_edit( "gui_edit", "0", CVAR_GUI | CVAR_BOOL, "" );

extern idCVar r_skipGuiShaders;		// 1 = don't render any gui elements on surfaces

//  made RegisterVars a member of idWindow
const idRegEntry idWindow::RegisterVars[] = {
	{ "forecolor", idRegister::VEC4 },
	{ "hovercolor", idRegister::VEC4 },
	{ "backcolor", idRegister::VEC4 },
	{ "bordercolor", idRegister::VEC4 },
	{ "rect", idRegister::RECTANGLE },
	{ "matcolor", idRegister::VEC4 },
	{ "scale", idRegister::VEC2 },
	{ "translate", idRegister::VEC2 },
	{ "rotate", idRegister::FLOAT },
	{ "textscale", idRegister::FLOAT },
	{ "visible", idRegister::BOOL },
	{ "noevents", idRegister::BOOL },
	{ "text", idRegister::STRING },
	{ "background", idRegister::STRING },
	{ "runscript", idRegister::STRING },
	{ "varbackground", idRegister::STRING },
	{ "cvar", idRegister::STRING },
	{ "choices", idRegister::STRING },
	{ "choiceVar", idRegister::STRING },
	{ "bind", idRegister::STRING },
	{ "modelRotate", idRegister::VEC4 },
	{ "modelOrigin", idRegister::VEC4 },
	{ "lightOrigin", idRegister::VEC4 },
	{ "lightColor", idRegister::VEC4 },
	{ "viewOffset", idRegister::VEC4 },
	{ "hideCursor", idRegister::BOOL}
};

const int idWindow::NumRegisterVars = sizeof(RegisterVars) / sizeof(idRegEntry);

const char *idWindow::ScriptNames[] = {
	"onMouseEnter",
	"onMouseExit",
	"onAction",
	"onActivate",
	"onDeactivate",
	"onESC",
	"onEvent",
	"onTrigger",
	"onActionRelease",
	"onEnter",
	"onEnterRelease"
};

/*
================
idWindow::CommonInit
================
*/
void idWindow::CommonInit() {
    Sys_Printf("void idWindow::CommonInit()\r\n");
}


/*
================
idWindow::Size
================
*/
size_t idWindow::Size() {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idWindow::Size()\r\n");
    return retVal;
}


/*
================
idWindow::Allocated
================
*/
size_t idWindow::Allocated() {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idWindow::Allocated()\r\n");
    return retVal;
}


/*
================
idWindow::idWindow
================
*/
idWindow::idWindow(idUserInterfaceLocal *ui) {
	dc = NULL;
	gui = ui;
	CommonInit();
}
				  
/*
================
idWindow::idWindow
================
*/
idWindow::idWindow(idDeviceContext *d, idUserInterfaceLocal *ui) {
	dc = d;
	gui = ui;
	CommonInit();
}

/*
================
idWindow::CleanUp
================
*/
void idWindow::CleanUp() {
    Sys_Printf("void idWindow::CleanUp()\r\n");
}


/*
================
idWindow::~idWindow
================
*/
idWindow::~idWindow() {
	CleanUp();
}

/*
================
idWindow::Move
================
*/
void idWindow::Move(float x, float y) {
    Sys_Printf("void idWindow::Move(float x, float y)\r\n");
}


/*
================
idWindow::SetFont
================
*/
void idWindow::SetFont() {
    Sys_Printf("void idWindow::SetFont()\r\n");
}


/*
================
idWindow::GetMaxCharHeight
================
*/
float idWindow::GetMaxCharHeight() {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWindow::GetMaxCharHeight()\r\n");
    return retVal;
}


/*
================
idWindow::GetMaxCharWidth
================
*/
float idWindow::GetMaxCharWidth() {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWindow::GetMaxCharWidth()\r\n");
    return retVal;
}


/*
================
idWindow::Draw
================
*/
void idWindow::Draw( int time, float x, float y ) {
    Sys_Printf("void idWindow::Draw( int time, float x, float y )\r\n");
}


/*
================
idWindow::BringToTop
================
*/
void idWindow::BringToTop(idWindow *w) {
    Sys_Printf("void idWindow::BringToTop(idWindow *w)\r\n");
}


/*
================
idWindow::Size
================
*/
void idWindow::Size(float x, float y, float w, float h) {
    Sys_Printf("void idWindow::Size(float x, float y, float w, float h)\r\n");
}


/*
================
idWindow::MouseEnter
================
*/
void idWindow::MouseEnter() {
    Sys_Printf("void idWindow::MouseEnter()\r\n");
}


/*
================
idWindow::MouseExit
================
*/
void idWindow::MouseExit() {
    Sys_Printf("void idWindow::MouseExit()\r\n");
}



/*
================
idWindow::RouteMouseCoords
================
*/
const char *idWindow::RouteMouseCoords(float xd, float yd) {
    Sys_Printf("char *idWindow::RouteMouseCoords(float xd, float yd)\r\n");
    return NULL;
}


/*
================
idWindow::Activate
================
*/
void idWindow::Activate( bool activate,	idStr &act ) {
    Sys_Printf("void idWindow::Activate( bool activate,idStr &act )\r\n");
}


/*
================
idWindow::Trigger
================
*/
void idWindow::Trigger() {
    Sys_Printf("void idWindow::Trigger()\r\n");
}


/*
================
idWindow::StateChanged
================
*/
void idWindow::StateChanged( bool redraw ) {
    Sys_Printf("void idWindow::StateChanged( bool redraw )\r\n");
}


/*
================
idWindow::SetCapture
================
*/
idWindow *idWindow::SetCapture(idWindow *w) {
    Sys_Printf("idWindow *idWindow::SetCapture(idWindow *w)\r\n");
    return NULL;
}


/*
================
idWindow::AddUpdateVar
================
*/
void idWindow::AddUpdateVar(idWinVar *var) {
    Sys_Printf("void idWindow::AddUpdateVar(idWinVar *var)\r\n");
}


/*
================
idWindow::UpdateWinVars
================
*/
void idWindow::UpdateWinVars() {
    Sys_Printf("void idWindow::UpdateWinVars()\r\n");
}


/*
================
idWindow::RunTimeEvents
================
*/
bool idWindow::RunTimeEvents(int time) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::RunTimeEvents(int time)\r\n");
    return retVal;
}


/*
================
idWindow::RunNamedEvent
================
*/
void idWindow::RunNamedEvent ( const char* eventName )
{
    Sys_Printf("void idWindow::RunNamedEvent ( const char* eventName )\r\n");
}


/*
================
idWindow::Contains
================
*/
bool idWindow::Contains(const idRectangle &sr, float x, float y) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::Contains(const idRectangle &sr, float x, float y)\r\n");
    return retVal;
}


/*
================
idWindow::Contains
================
*/
bool idWindow::Contains(float x, float y) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::Contains(float x, float y)\r\n");
    return retVal;
}


/*
================
idWindow::AddCommand
================
*/
void idWindow::AddCommand(const char *_cmd) {
    Sys_Printf("void idWindow::AddCommand(const char *_cmd)\r\n");
}


/*
================
idWindow::HandleEvent
================
*/
const char *idWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


/*
================
idWindow::DebugDraw
================
*/
void idWindow::DebugDraw(int time, float x, float y) {
    Sys_Printf("void idWindow::DebugDraw(int time, float x, float y)\r\n");
}


/*
================
idWindow::Transition
================
*/
void idWindow::Transition() {
    Sys_Printf("void idWindow::Transition()\r\n");
}


/*
================
idWindow::Time
================
*/
void idWindow::Time() {
    Sys_Printf("void idWindow::Time()\r\n");
}


/*
================
idWindow::EvalRegs
================
*/
float idWindow::EvalRegs(int test, bool force) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWindow::EvalRegs(int test, bool force)\r\n");
    return retVal;
}


/*
================
idWindow::DrawBackground
================
*/
void idWindow::DrawBackground(const idRectangle &drawRect) {
    Sys_Printf("void idWindow::DrawBackground(const idRectangle &drawRect)\r\n");
}


/*
================
idWindow::DrawBorderAndCaption
================
*/
void idWindow::DrawBorderAndCaption(const idRectangle &drawRect) {
    Sys_Printf("void idWindow::DrawBorderAndCaption(const idRectangle &drawRect)\r\n");
}


/*
================
idWindow::SetupTransforms
================
*/
void idWindow::SetupTransforms(float x, float y) {
    Sys_Printf("void idWindow::SetupTransforms(float x, float y)\r\n");
}


/*
================
idWindow::CalcRects
================
*/
void idWindow::CalcRects(float x, float y) {
    Sys_Printf("void idWindow::CalcRects(float x, float y)\r\n");
}


/*
================
idWindow::Redraw
================
*/
void idWindow::Redraw(float x, float y) {
    Sys_Printf("void idWindow::Redraw(float x, float y)\r\n");
}


/*
================
idWindow::SetDC
================
*/
void idWindow::SetDC(idDeviceContext *d) {
    Sys_Printf("void idWindow::SetDC(idDeviceContext *d)\r\n");
}


/*
================
idWindow::ArchiveToDictionary
================
*/
void idWindow::ArchiveToDictionary(idDict *dict, bool useNames) {
    Sys_Printf("void idWindow::ArchiveToDictionary(idDict *dict, bool useNames)\r\n");
}


/*
================
idWindow::InitFromDictionary
================
*/
void idWindow::InitFromDictionary(idDict *dict, bool byName) {
    Sys_Printf("void idWindow::InitFromDictionary(idDict *dict, bool byName)\r\n");
}


/*
================
idWindow::CalcClientRect
================
*/
void idWindow::CalcClientRect(float xofs, float yofs) {
    Sys_Printf("void idWindow::CalcClientRect(float xofs, float yofs)\r\n");
}


/*
================
idWindow::SetupBackground
================
*/
void idWindow::SetupBackground() {
    Sys_Printf("void idWindow::SetupBackground()\r\n");
}


/*
================
idWindow::SetupFromState
================
*/
void idWindow::SetupFromState() {
    Sys_Printf("void idWindow::SetupFromState()\r\n");
}


/*
================
idWindow::Moved
================
*/
void idWindow::Moved() {
    Sys_Printf("void idWindow::Moved()\r\n");
}


/*
================
idWindow::Sized
================
*/
void idWindow::Sized() {
    Sys_Printf("void idWindow::Sized()\r\n");
}


/*
================
idWindow::GainFocus
================
*/
void idWindow::GainFocus() {
    Sys_Printf("void idWindow::GainFocus()\r\n");
}


/*
================
idWindow::LoseFocus
================
*/
void idWindow::LoseFocus() {
    Sys_Printf("void idWindow::LoseFocus()\r\n");
}


/*
================
idWindow::GainCapture
================
*/
void idWindow::GainCapture() {
    Sys_Printf("void idWindow::GainCapture()\r\n");
}


/*
================
idWindow::LoseCapture
================
*/
void idWindow::LoseCapture() {
    Sys_Printf("void idWindow::LoseCapture()\r\n");
}


/*
================
idWindow::SetFlag
================
*/
void idWindow::SetFlag(unsigned int f) {
    Sys_Printf("void idWindow::SetFlag(unsigned int f)\r\n");
}


/*
================
idWindow::ClearFlag
================
*/
void idWindow::ClearFlag(unsigned int f) {
    Sys_Printf("void idWindow::ClearFlag(unsigned int f)\r\n");
}



/*
================
idWindow::SetParent
================
*/
void idWindow::SetParent(idWindow *w) {
    Sys_Printf("void idWindow::SetParent(idWindow *w)\r\n");
}


/*
================
idWindow::GetCaptureChild
================
*/
idWindow *idWindow::GetCaptureChild() {
    Sys_Printf("idWindow *idWindow::GetCaptureChild()\r\n");
    return NULL;
}


/*
================
idWindow::GetFocusedChild
================
*/
idWindow *idWindow::GetFocusedChild() {
    Sys_Printf("idWindow *idWindow::GetFocusedChild()\r\n");
    return NULL;
}



/*
================
idWindow::SetFocus
================
*/
idWindow *idWindow::SetFocus(idWindow *w, bool scripts) {
    Sys_Printf("idWindow *idWindow::SetFocus(idWindow *w, bool scripts)\r\n");
    return NULL;
}


/*
================
idWindow::ParseScript
================
*/
bool idWindow::ParseScript(idParser *src, idGuiScriptList &list, int *timeParm, bool elseBlock ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::ParseScript(idParser *src, idGuiScriptList &list, int *timeParm, bool elseBlock )\r\n");
    return retVal;
}


/*
================
idWindow::SaveExpressionParseState
================
*/
void idWindow::SaveExpressionParseState() {
    Sys_Printf("void idWindow::SaveExpressionParseState()\r\n");
}


/*
================
idWindow::RestoreExpressionParseState
================
*/
void idWindow::RestoreExpressionParseState() {
    Sys_Printf("void idWindow::RestoreExpressionParseState()\r\n");
}


/*
================
idWindow::ParseScriptEntry
================
*/
bool idWindow::ParseScriptEntry(const char *name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::ParseScriptEntry(const char *name, idParser *src)\r\n");
    return retVal;
}


/*
================
idWindow::DisableRegister
================
*/
void idWindow::DisableRegister(const char *_name) {
    Sys_Printf("void idWindow::DisableRegister(const char *_name)\r\n");
}


/*
================
idWindow::PostParse
================
*/
void idWindow::PostParse() {
    Sys_Printf("void idWindow::PostParse()\r\n");
}

	
/*
================
idWindow::GetWinVarOffset
================
*/
int idWindow::GetWinVarOffset( idWinVar *wv, drawWin_t* owner) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::GetWinVarOffset( idWinVar *wv, drawWin_t* owner)\r\n");
    return retVal;
}


/*
================
idWindow::GetWinVarByName
================
*/
idWinVar *idWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner)\r\n");
    return NULL;
}


/*
================
idWindow::ParseString
================
*/
void idWindow::ParseString(idParser *src, idStr &out) {
    Sys_Printf("void idWindow::ParseString(idParser *src, idStr &out)\r\n");
}


/*
================
idWindow::ParseVec4
================
*/
void idWindow::ParseVec4(idParser *src, idVec4 &out) {
    Sys_Printf("void idWindow::ParseVec4(idParser *src, idVec4 &out)\r\n");
}


/*
================
idWindow::ParseInternalVar
================
*/
bool idWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}


/*
================
idWindow::ParseRegEntry
================
*/
bool idWindow::ParseRegEntry(const char *name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::ParseRegEntry(const char *name, idParser *src)\r\n");
    return retVal;
}


/*
================
idWindow::SetInitialState
================
*/
void idWindow::SetInitialState(const char *_name) {
    Sys_Printf("void idWindow::SetInitialState(const char *_name)\r\n");
}


/*
================
idWindow::Parse
================
*/
bool idWindow::Parse( idParser *src, bool rebuild) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::Parse( idParser *src, bool rebuild)\r\n");
    return retVal;
}


/*
================
idWindow::FindSimpleWinByName
================
*/
idSimpleWindow *idWindow::FindSimpleWinByName(const char *_name) {
    Sys_Printf("idSimpleWindow *idWindow::FindSimpleWinByName(const char *_name)\r\n");
    return NULL;
}


/*
================
idWindow::FindChildByName
================
*/
drawWin_t *idWindow::FindChildByName(const char *_name) {
    Sys_Printf("drawWin_t *idWindow::FindChildByName(const char *_name)\r\n");
    return NULL;
}


/*
================
idWindow::GetStrPtrByName
================
*/
idStr* idWindow::GetStrPtrByName(const char *_name) {
    Sys_Printf("idStr* idWindow::GetStrPtrByName(const char *_name)\r\n");
    return NULL;
}


/*
================
idWindow::AddTransition
================
*/
void idWindow::AddTransition(idWinVar *dest, idVec4 from, idVec4 to, int time, float accelTime, float decelTime) {
    Sys_Printf("void idWindow::AddTransition(idWinVar *dest, idVec4 from, idVec4 to, int time, float accelTime, float decelTime)\r\n");
}



/*
================
idWindow::StartTransition
================
*/
void idWindow::StartTransition() {
    Sys_Printf("void idWindow::StartTransition()\r\n");
}


/*
================
idWindow::ResetCinematics
================
*/
void idWindow::ResetCinematics() {
    Sys_Printf("void idWindow::ResetCinematics()\r\n");
}


/*
================
idWindow::ResetTime
================
*/
void idWindow::ResetTime(int t) {
    Sys_Printf("void idWindow::ResetTime(int t)\r\n");
}



/*
================
idWindow::RunScriptList
================
*/
bool idWindow::RunScriptList(idGuiScriptList *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::RunScriptList(idGuiScriptList *src)\r\n");
    return retVal;
}


/*
================
idWindow::RunScript
================
*/
bool idWindow::RunScript(int n) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::RunScript(int n)\r\n");
    return retVal;
}


/*
================
idWindow::ExpressionConstant
================
*/
int idWindow::ExpressionConstant(float f) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::ExpressionConstant(float f)\r\n");
    return retVal;
}


/*
================
idWindow::ExpressionTemporary
================
*/
int idWindow::ExpressionTemporary() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::ExpressionTemporary()\r\n");
    return retVal;
}


/*
================
idWindow::ExpressionOp
================
*/
wexpOp_t *idWindow::ExpressionOp() {
    Sys_Printf("wexpOp_t *idWindow::ExpressionOp()\r\n");
    return NULL;
}


/*
================
idWindow::EmitOp
================
*/

int idWindow::EmitOp( int a, int b, wexpOpType_t opType, wexpOp_t **opp ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::EmitOp( int a, int b, wexpOpType_t opType, wexpOp_t **opp )\r\n");
    return retVal;
}


/*
================
idWindow::ParseEmitOp
================
*/
int idWindow::ParseEmitOp( idParser *src, int a, wexpOpType_t opType, int priority, wexpOp_t **opp ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::ParseEmitOp( idParser *src, int a, wexpOpType_t opType, int priority, wexpOp_t **opp )\r\n");
    return retVal;
}



/*
================
idWindow::ParseTerm

Returns a register index
=================
*/
int idWindow::ParseTerm( idParser *src,	idWinVar *var, int component ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::ParseTerm( idParser *src,idWinVar *var, int component )\r\n");
    return retVal;
}


/*
=================
idWindow::ParseExpressionPriority

Returns a register index
=================
*/
#define	TOP_PRIORITY 4
int idWindow::ParseExpressionPriority( idParser *src, int priority, idWinVar *var, int component ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::ParseExpressionPriority( idParser *src, int priority, idWinVar *var, int component )\r\n");
    return retVal;
}


/*
================
idWindow::ParseExpression

Returns a register index
================
*/
int idWindow::ParseExpression(idParser *src, idWinVar *var, int component) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::ParseExpression(idParser *src, idWinVar *var, int component)\r\n");
    return retVal;
}


/*
================
idWindow::ParseBracedExpression
================
*/
void idWindow::ParseBracedExpression(idParser *src) {
    Sys_Printf("void idWindow::ParseBracedExpression(idParser *src)\r\n");
}


/*
===============
idWindow::EvaluateRegisters

Parameters are taken from the localSpace and the renderView,
then all expressions are evaluated, leaving the shader registers
set to their apropriate values.
===============
*/
void idWindow::EvaluateRegisters(float *registers) {
    Sys_Printf("void idWindow::EvaluateRegisters(float *registers)\r\n");
}


/*
================
idWindow::ReadFromDemoFile
================
*/
void idWindow::ReadFromDemoFile( class idDemoFile *f, bool rebuild ) {
    Sys_Printf("void idWindow::ReadFromDemoFile( class idDemoFile *f, bool rebuild )\r\n");
}


/*
================
idWindow::WriteToDemoFile
================
*/
void idWindow::WriteToDemoFile( class idDemoFile *f ) {
    Sys_Printf("void idWindow::WriteToDemoFile( class idDemoFile *f )\r\n");
}


/*
===============
idWindow::WriteString
===============
*/
void idWindow::WriteSaveGameString( const char *string, idFile *savefile ) {
    Sys_Printf("void idWindow::WriteSaveGameString( const char *string, idFile *savefile )\r\n");
}


/*
===============
idWindow::WriteSaveGameTransition
===============
*/
void idWindow::WriteSaveGameTransition( idTransitionData &trans, idFile *savefile ) {
    Sys_Printf("void idWindow::WriteSaveGameTransition( idTransitionData &trans, idFile *savefile )\r\n");
}


/*
===============
idWindow::ReadSaveGameTransition
===============
*/
void idWindow::ReadSaveGameTransition( idTransitionData &trans, idFile *savefile ) {
    Sys_Printf("void idWindow::ReadSaveGameTransition( idTransitionData &trans, idFile *savefile )\r\n");
}


/*
===============
idWindow::WriteToSaveGame
===============
*/
void idWindow::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idWindow::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
===============
idWindow::ReadSaveGameString
===============
*/
void idWindow::ReadSaveGameString( idStr &string, idFile *savefile ) {
    Sys_Printf("void idWindow::ReadSaveGameString( idStr &string, idFile *savefile )\r\n");
}


/*
===============
idWindow::ReadFromSaveGame
===============
*/
void idWindow::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idWindow::ReadFromSaveGame( idFile *savefile )\r\n");
}


/*
===============
idWindow::NumTransitions
===============
*/
int idWindow::NumTransitions() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::NumTransitions()\r\n");
    return retVal;
}



/*
===============
idWindow::FixupTransitions
===============
*/
void idWindow::FixupTransitions() {
    Sys_Printf("void idWindow::FixupTransitions()\r\n");
}



/*
===============
idWindow::AddChild
===============
*/
void idWindow::AddChild(idWindow *win) {
    Sys_Printf("void idWindow::AddChild(idWindow *win)\r\n");
}


/*
================
idWindow::FixupParms
================
*/
void idWindow::FixupParms() {
    Sys_Printf("void idWindow::FixupParms()\r\n");
}


/*
================
idWindow::IsSimple
================
*/
bool idWindow::IsSimple() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::IsSimple()\r\n");
    return retVal;
}


/*
================
idWindow::ContainsStateVars
================
*/
bool idWindow::ContainsStateVars() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::ContainsStateVars()\r\n");
    return retVal;
}


/*
================
idWindow::Interactive
================
*/
bool idWindow::Interactive() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::Interactive()\r\n");
    return retVal;
}


/*
================
idWindow::SetChildWinVarVal
================
*/
void idWindow::SetChildWinVarVal(const char *name, const char *var, const char *val) {
    Sys_Printf("void idWindow::SetChildWinVarVal(const char *name, const char *var, const char *val)\r\n");
}



/*
================
idWindow::FindChildByPoint

Finds the window under the given point
================
*/
idWindow* idWindow::FindChildByPoint ( float x, float y, idWindow** below ) {
    Sys_Printf("idWindow* idWindow::FindChildByPoint ( float x, float y, idWindow** below )\r\n");
    return NULL;
}


/*
================
idWindow::FindChildByPoint
================
*/
idWindow* idWindow::FindChildByPoint ( float x, float y, idWindow* below )
{
    Sys_Printf("idWindow* idWindow::FindChildByPoint ( float x, float y, idWindow* below )\r\n");
    return NULL;
}


/*
================
idWindow::GetChildCount

Returns the number of children
================
*/
int idWindow::GetChildCount ( void )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::GetChildCount ( void )\r\n");
    return retVal;
}


/*
================
idWindow::GetChild

Returns the child window at the given index
================
*/
idWindow* idWindow::GetChild ( int index )
{
    Sys_Printf("idWindow* idWindow::GetChild ( int index )\r\n");
    return NULL;
}


/*
================
idWindow::GetChildIndex

Returns the index of the given child window
================
*/
int idWindow::GetChildIndex ( idWindow* window ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWindow::GetChildIndex ( idWindow* window )\r\n");
    return retVal;
}


/*
================
idWindow::RemoveChild

Removes the child from the list of children.   Note that the child window being
removed must still be deallocated by the caller
================
*/
void idWindow::RemoveChild ( idWindow *win ) {
    Sys_Printf("void idWindow::RemoveChild ( idWindow *win )\r\n");
}


/*
================
idWindow::InsertChild

Inserts the given window as a child into the given location in the zorder.
================
*/
bool idWindow::InsertChild ( idWindow *win, idWindow* before )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::InsertChild ( idWindow *win, idWindow* before )\r\n");
    return retVal;
}


/*
================
idWindow::ScreenToClient
================
*/
void idWindow::ScreenToClient ( idRectangle* r ) {
    Sys_Printf("void idWindow::ScreenToClient ( idRectangle* r )\r\n");
}


/*
================
idWindow::ClientToScreen
================
*/
void idWindow::ClientToScreen ( idRectangle* r ) {
    Sys_Printf("void idWindow::ClientToScreen ( idRectangle* r )\r\n");
}


/*
================
idWindow::SetDefaults

Set the window do a default window with no text, no background and 
default colors, etc..
================
*/
void idWindow::SetDefaults ( void ) {
    Sys_Printf("void idWindow::SetDefaults ( void )\r\n");
}


/*
================
idWindow::UpdateFromDictionary

The editor only has a dictionary to work with so the easiest way to push the
values of the dictionary onto the window is for the window to interpret the 
dictionary as if were a file being parsed.
================
*/
bool idWindow::UpdateFromDictionary ( idDict& dict ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWindow::UpdateFromDictionary ( idDict& dict )\r\n");
    return retVal;
}


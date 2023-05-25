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

static void APIENTRY logAccum(GLenum op, GLfloat value) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logAccum(GLenum op, GLfloat value)\r\n");
    return retVal;
}


static void APIENTRY logAlphaFunc(GLenum func, GLclampf ref) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logAlphaFunc(GLenum func, GLclampf ref)\r\n");
    return retVal;
}


static GLboolean APIENTRY logAreTexturesResident(GLsizei n, const GLuint *textures, GLboolean *residences) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logAreTexturesResident(GLsizei n, const GLuint *textures, GLboolean *residences)\r\n");
    return retVal;
}


static void APIENTRY logArrayElement(GLint i) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logArrayElement(GLint i)\r\n");
    return retVal;
}


static void APIENTRY logBegin(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logBegin(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logBindTexture(GLenum target, GLuint texture) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logBindTexture(GLenum target, GLuint texture)\r\n");
    return retVal;
}


static void APIENTRY logBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap)\r\n");
    return retVal;
}


static void APIENTRY logBlendFunc(GLenum sfactor, GLenum dfactor) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logBlendFunc(GLenum sfactor, GLenum dfactor)\r\n");
    return retVal;
}


static void APIENTRY logCallList(GLuint list) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCallList(GLuint list)\r\n");
    return retVal;
}


static void APIENTRY logCallLists(GLsizei n, GLenum type, const GLvoid *lists) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCallLists(GLsizei n, GLenum type, const GLvoid *lists)\r\n");
    return retVal;
}


static void APIENTRY logClear(GLbitfield mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logClear(GLbitfield mask)\r\n");
    return retVal;
}


static void APIENTRY logClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)\r\n");
    return retVal;
}


static void APIENTRY logClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)\r\n");
    return retVal;
}


static void APIENTRY logClearDepth(GLclampd depth) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logClearDepth(GLclampd depth)\r\n");
    return retVal;
}


static void APIENTRY logClearIndex(GLfloat c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logClearIndex(GLfloat c)\r\n");
    return retVal;
}


static void APIENTRY logClearStencil(GLint s) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logClearStencil(GLint s)\r\n");
    return retVal;
}


static void APIENTRY logClipPlane(GLenum plane, const GLdouble *equation) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logClipPlane(GLenum plane, const GLdouble *equation)\r\n");
    return retVal;
}


static void APIENTRY logColor3b(GLbyte red, GLbyte green, GLbyte blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3b(GLbyte red, GLbyte green, GLbyte blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3bv(const GLbyte *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3bv(const GLbyte *v)\r\n");
    return retVal;
}


static void APIENTRY logColor3d(GLdouble red, GLdouble green, GLdouble blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3d(GLdouble red, GLdouble green, GLdouble blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logColor3f(GLfloat red, GLfloat green, GLfloat blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3f(GLfloat red, GLfloat green, GLfloat blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logColor3i(GLint red, GLint green, GLint blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3i(GLint red, GLint green, GLint blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logColor3s(GLshort red, GLshort green, GLshort blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3s(GLshort red, GLshort green, GLshort blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logColor3ub(GLubyte red, GLubyte green, GLubyte blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3ub(GLubyte red, GLubyte green, GLubyte blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3ubv(const GLubyte *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3ubv(const GLubyte *v)\r\n");
    return retVal;
}


static void APIENTRY logColor3ui(GLuint red, GLuint green, GLuint blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3ui(GLuint red, GLuint green, GLuint blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3uiv(const GLuint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3uiv(const GLuint *v)\r\n");
    return retVal;
}


static void APIENTRY logColor3us(GLushort red, GLushort green, GLushort blue) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3us(GLushort red, GLushort green, GLushort blue)\r\n");
    return retVal;
}


static void APIENTRY logColor3usv(const GLushort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor3usv(const GLushort *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4bv(const GLbyte *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4bv(const GLbyte *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4i(GLint red, GLint green, GLint blue, GLint alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4i(GLint red, GLint green, GLint blue, GLint alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4ubv(const GLubyte *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4ubv(const GLubyte *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4uiv(const GLuint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4uiv(const GLuint *v)\r\n");
    return retVal;
}


static void APIENTRY logColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha)\r\n");
    return retVal;
}


static void APIENTRY logColor4usv(const GLushort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColor4usv(const GLushort *v)\r\n");
    return retVal;
}


static void APIENTRY logColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)\r\n");
    return retVal;
}


static void APIENTRY logColorMaterial(GLenum face, GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColorMaterial(GLenum face, GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *pointer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)\r\n");
    return retVal;
}


static void APIENTRY logCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type)\r\n");
    return retVal;
}


static void APIENTRY logCopyTexImage1D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLint border) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCopyTexImage1D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLint border)\r\n");
    return retVal;
}


static void APIENTRY logCopyTexImage2D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCopyTexImage2D(GLenum target, GLint level, GLenum internalFormat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)\r\n");
    return retVal;
}


static void APIENTRY logCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)\r\n");
    return retVal;
}


static void APIENTRY logCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)\r\n");
    return retVal;
}


static void APIENTRY logCullFace(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCullFace(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logDeleteLists(GLuint list, GLsizei range) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDeleteLists(GLuint list, GLsizei range)\r\n");
    return retVal;
}


static void APIENTRY logDeleteTextures(GLsizei n, const GLuint *textures) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDeleteTextures(GLsizei n, const GLuint *textures)\r\n");
    return retVal;
}


static void APIENTRY logDepthFunc(GLenum func) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDepthFunc(GLenum func)\r\n");
    return retVal;
}


static void APIENTRY logDepthMask(GLboolean flag) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDepthMask(GLboolean flag)\r\n");
    return retVal;
}


static void APIENTRY logDepthRange(GLclampd zNear, GLclampd zFar) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDepthRange(GLclampd zNear, GLclampd zFar)\r\n");
    return retVal;
}


static void APIENTRY logDisable(GLenum cap) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDisable(GLenum cap)\r\n");
    return retVal;
}


static void APIENTRY logDisableClientState(GLenum array) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDisableClientState(GLenum array)\r\n");
    return retVal;
}


static void APIENTRY logDrawArrays(GLenum mode, GLint first, GLsizei count) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDrawArrays(GLenum mode, GLint first, GLsizei count)\r\n");
    return retVal;
}


static void APIENTRY logDrawBuffer(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDrawBuffer(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid *indices) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid *indices)\r\n");
    return retVal;
}


static void APIENTRY logDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels)\r\n");
    return retVal;
}


static void APIENTRY logEdgeFlag(GLboolean flag) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEdgeFlag(GLboolean flag)\r\n");
    return retVal;
}


static void APIENTRY logEdgeFlagPointer(GLsizei stride, const GLvoid *pointer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEdgeFlagPointer(GLsizei stride, const GLvoid *pointer)\r\n");
    return retVal;
}


static void APIENTRY logEdgeFlagv(const GLboolean *flag) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEdgeFlagv(const GLboolean *flag)\r\n");
    return retVal;
}


static void APIENTRY logEnable(GLenum cap) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEnable(GLenum cap)\r\n");
    return retVal;
}


static void APIENTRY logEnableClientState(GLenum array) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEnableClientState(GLenum array)\r\n");
    return retVal;
}


static void APIENTRY logEnd(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEnd(void)\r\n");
    return retVal;
}


static void APIENTRY logEndList(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEndList(void)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord1d(GLdouble u) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord1d(GLdouble u)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord1dv(const GLdouble *u) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord1dv(const GLdouble *u)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord1f(GLfloat u) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord1f(GLfloat u)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord1fv(const GLfloat *u) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord1fv(const GLfloat *u)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord2d(GLdouble u, GLdouble v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord2d(GLdouble u, GLdouble v)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord2dv(const GLdouble *u) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord2dv(const GLdouble *u)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord2f(GLfloat u, GLfloat v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord2f(GLfloat u, GLfloat v)\r\n");
    return retVal;
}


static void APIENTRY logEvalCoord2fv(const GLfloat *u) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalCoord2fv(const GLfloat *u)\r\n");
    return retVal;
}


static void APIENTRY logEvalMesh1(GLenum mode, GLint i1, GLint i2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalMesh1(GLenum mode, GLint i1, GLint i2)\r\n");
    return retVal;
}


static void APIENTRY logEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2)\r\n");
    return retVal;
}


static void APIENTRY logEvalPoint1(GLint i) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalPoint1(GLint i)\r\n");
    return retVal;
}


static void APIENTRY logEvalPoint2(GLint i, GLint j) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logEvalPoint2(GLint i, GLint j)\r\n");
    return retVal;
}


static void APIENTRY logFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer)\r\n");
    return retVal;
}


static void APIENTRY logFinish(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFinish(void)\r\n");
    return retVal;
}


static void APIENTRY logFlush(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFlush(void)\r\n");
    return retVal;
}


static void APIENTRY logFogf(GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFogf(GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logFogfv(GLenum pname, const GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFogfv(GLenum pname, const GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logFogi(GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFogi(GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logFogiv(GLenum pname, const GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFogiv(GLenum pname, const GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logFrontFace(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFrontFace(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)\r\n");
    return retVal;
}


static GLuint APIENTRY logGenLists(GLsizei range) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGenLists(GLsizei range)\r\n");
    return retVal;
}


static void APIENTRY logGenTextures(GLsizei n, GLuint *textures) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGenTextures(GLsizei n, GLuint *textures)\r\n");
    return retVal;
}


static void APIENTRY logGetBooleanv(GLenum pname, GLboolean *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetBooleanv(GLenum pname, GLboolean *params)\r\n");
    return retVal;
}


static void APIENTRY logGetClipPlane(GLenum plane, GLdouble *equation) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetClipPlane(GLenum plane, GLdouble *equation)\r\n");
    return retVal;
}


static void APIENTRY logGetDoublev(GLenum pname, GLdouble *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetDoublev(GLenum pname, GLdouble *params)\r\n");
    return retVal;
}


static GLenum APIENTRY logGetError(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetError(void)\r\n");
    return retVal;
}


static void APIENTRY logGetFloatv(GLenum pname, GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetFloatv(GLenum pname, GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logGetIntegerv(GLenum pname, GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetIntegerv(GLenum pname, GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logGetLightfv(GLenum light, GLenum pname, GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetLightfv(GLenum light, GLenum pname, GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logGetLightiv(GLenum light, GLenum pname, GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetLightiv(GLenum light, GLenum pname, GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logGetMapdv(GLenum target, GLenum query, GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetMapdv(GLenum target, GLenum query, GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logGetMapfv(GLenum target, GLenum query, GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetMapfv(GLenum target, GLenum query, GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logGetMapiv(GLenum target, GLenum query, GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetMapiv(GLenum target, GLenum query, GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logGetMaterialfv(GLenum face, GLenum pname, GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetMaterialfv(GLenum face, GLenum pname, GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logGetMaterialiv(GLenum face, GLenum pname, GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetMaterialiv(GLenum face, GLenum pname, GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logGetPixelMapfv(GLenum map, GLfloat *values) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetPixelMapfv(GLenum map, GLfloat *values)\r\n");
    return retVal;
}


static void APIENTRY logGetPixelMapuiv(GLenum map, GLuint *values) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetPixelMapuiv(GLenum map, GLuint *values)\r\n");
    return retVal;
}


static void APIENTRY logGetPixelMapusv(GLenum map, GLushort *values) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetPixelMapusv(GLenum map, GLushort *values)\r\n");
    return retVal;
}


static void APIENTRY logGetPointerv(GLenum pname, GLvoid* *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetPointerv(GLenum pname, GLvoid* *params)\r\n");
    return retVal;
}


static void APIENTRY logGetPolygonStipple(GLubyte *mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetPolygonStipple(GLubyte *mask)\r\n");
    return retVal;
}


static const GLubyte * APIENTRY logGetString(GLenum name) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetString(GLenum name)\r\n");
    return retVal;
}


static void APIENTRY logGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexEnviv(GLenum target, GLenum pname, GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexEnviv(GLenum target, GLenum pname, GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexGendv(GLenum coord, GLenum pname, GLdouble *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexGendv(GLenum coord, GLenum pname, GLdouble *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexGeniv(GLenum coord, GLenum pname, GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexGeniv(GLenum coord, GLenum pname, GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels)\r\n");
    return retVal;
}


static void APIENTRY logGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logGetTexParameteriv(GLenum target, GLenum pname, GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logGetTexParameteriv(GLenum target, GLenum pname, GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logHint(GLenum target, GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logHint(GLenum target, GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logIndexMask(GLuint mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexMask(GLuint mask)\r\n");
    return retVal;
}


static void APIENTRY logIndexPointer(GLenum type, GLsizei stride, const GLvoid *pointer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexPointer(GLenum type, GLsizei stride, const GLvoid *pointer)\r\n");
    return retVal;
}


static void APIENTRY logIndexd(GLdouble c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexd(GLdouble c)\r\n");
    return retVal;
}


static void APIENTRY logIndexdv(const GLdouble *c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexdv(const GLdouble *c)\r\n");
    return retVal;
}


static void APIENTRY logIndexf(GLfloat c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexf(GLfloat c)\r\n");
    return retVal;
}


static void APIENTRY logIndexfv(const GLfloat *c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexfv(const GLfloat *c)\r\n");
    return retVal;
}


static void APIENTRY logIndexi(GLint c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexi(GLint c)\r\n");
    return retVal;
}


static void APIENTRY logIndexiv(const GLint *c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexiv(const GLint *c)\r\n");
    return retVal;
}


static void APIENTRY logIndexs(GLshort c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexs(GLshort c)\r\n");
    return retVal;
}


static void APIENTRY logIndexsv(const GLshort *c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexsv(const GLshort *c)\r\n");
    return retVal;
}


static void APIENTRY logIndexub(GLubyte c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexub(GLubyte c)\r\n");
    return retVal;
}


static void APIENTRY logIndexubv(const GLubyte *c) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIndexubv(const GLubyte *c)\r\n");
    return retVal;
}


static void APIENTRY logInitNames(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logInitNames(void)\r\n");
    return retVal;
}


static void APIENTRY logInterleavedArrays(GLenum format, GLsizei stride, const GLvoid *pointer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logInterleavedArrays(GLenum format, GLsizei stride, const GLvoid *pointer)\r\n");
    return retVal;
}


static GLboolean APIENTRY logIsEnabled(GLenum cap) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIsEnabled(GLenum cap)\r\n");
    return retVal;
}


static GLboolean APIENTRY logIsList(GLuint list) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIsList(GLuint list)\r\n");
    return retVal;
}


static GLboolean APIENTRY logIsTexture(GLuint texture) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logIsTexture(GLuint texture)\r\n");
    return retVal;
}


static void APIENTRY logLightModelf(GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLightModelf(GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logLightModelfv(GLenum pname, const GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLightModelfv(GLenum pname, const GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logLightModeli(GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLightModeli(GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logLightModeliv(GLenum pname, const GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLightModeliv(GLenum pname, const GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logLightf(GLenum light, GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLightf(GLenum light, GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logLightfv(GLenum light, GLenum pname, const GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLightfv(GLenum light, GLenum pname, const GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logLighti(GLenum light, GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLighti(GLenum light, GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logLightiv(GLenum light, GLenum pname, const GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLightiv(GLenum light, GLenum pname, const GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logLineStipple(GLint factor, GLushort pattern) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLineStipple(GLint factor, GLushort pattern)\r\n");
    return retVal;
}


static void APIENTRY logLineWidth(GLfloat width) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLineWidth(GLfloat width)\r\n");
    return retVal;
}


static void APIENTRY logListBase(GLuint base) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logListBase(GLuint base)\r\n");
    return retVal;
}


static void APIENTRY logLoadIdentity(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLoadIdentity(void)\r\n");
    return retVal;
}


static void APIENTRY logLoadMatrixd(const GLdouble *m) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLoadMatrixd(const GLdouble *m)\r\n");
    return retVal;
}


static void APIENTRY logLoadMatrixf(const GLfloat *m) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLoadMatrixf(const GLfloat *m)\r\n");
    return retVal;
}


static void APIENTRY logLoadName(GLuint name) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLoadName(GLuint name)\r\n");
    return retVal;
}


static void APIENTRY logLogicOp(GLenum opcode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logLogicOp(GLenum opcode)\r\n");
    return retVal;
}


static void APIENTRY logMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points)\r\n");
    return retVal;
}


static void APIENTRY logMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points)\r\n");
    return retVal;
}


static void APIENTRY logMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points)\r\n");
    return retVal;
}


static void APIENTRY logMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points)\r\n");
    return retVal;
}


static void APIENTRY logMapGrid1d(GLint un, GLdouble u1, GLdouble u2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMapGrid1d(GLint un, GLdouble u1, GLdouble u2)\r\n");
    return retVal;
}


static void APIENTRY logMapGrid1f(GLint un, GLfloat u1, GLfloat u2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMapGrid1f(GLint un, GLfloat u1, GLfloat u2)\r\n");
    return retVal;
}


static void APIENTRY logMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2)\r\n");
    return retVal;
}


static void APIENTRY logMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2)\r\n");
    return retVal;
}


static void APIENTRY logMaterialf(GLenum face, GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMaterialf(GLenum face, GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logMaterialfv(GLenum face, GLenum pname, const GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMaterialfv(GLenum face, GLenum pname, const GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logMateriali(GLenum face, GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMateriali(GLenum face, GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logMaterialiv(GLenum face, GLenum pname, const GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMaterialiv(GLenum face, GLenum pname, const GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logMatrixMode(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMatrixMode(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logMultMatrixd(const GLdouble *m) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMultMatrixd(const GLdouble *m)\r\n");
    return retVal;
}


static void APIENTRY logMultMatrixf(const GLfloat *m) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMultMatrixf(const GLfloat *m)\r\n");
    return retVal;
}


static void APIENTRY logNewList(GLuint list, GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNewList(GLuint list, GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logNormal3b(GLbyte nx, GLbyte ny, GLbyte nz) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3b(GLbyte nx, GLbyte ny, GLbyte nz)\r\n");
    return retVal;
}


static void APIENTRY logNormal3bv(const GLbyte *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3bv(const GLbyte *v)\r\n");
    return retVal;
}


static void APIENTRY logNormal3d(GLdouble nx, GLdouble ny, GLdouble nz) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3d(GLdouble nx, GLdouble ny, GLdouble nz)\r\n");
    return retVal;
}


static void APIENTRY logNormal3dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logNormal3f(GLfloat nx, GLfloat ny, GLfloat nz) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3f(GLfloat nx, GLfloat ny, GLfloat nz)\r\n");
    return retVal;
}


static void APIENTRY logNormal3fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logNormal3i(GLint nx, GLint ny, GLint nz) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3i(GLint nx, GLint ny, GLint nz)\r\n");
    return retVal;
}


static void APIENTRY logNormal3iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logNormal3s(GLshort nx, GLshort ny, GLshort nz) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3s(GLshort nx, GLshort ny, GLshort nz)\r\n");
    return retVal;
}


static void APIENTRY logNormal3sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormal3sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logNormalPointer(GLenum type, GLsizei stride, const GLvoid *pointer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logNormalPointer(GLenum type, GLsizei stride, const GLvoid *pointer)\r\n");
    return retVal;
}


static void APIENTRY logOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar)\r\n");
    return retVal;
}


static void APIENTRY logPassThrough(GLfloat token) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPassThrough(GLfloat token)\r\n");
    return retVal;
}


static void APIENTRY logPixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values)\r\n");
    return retVal;
}


static void APIENTRY logPixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values)\r\n");
    return retVal;
}


static void APIENTRY logPixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values)\r\n");
    return retVal;
}


static void APIENTRY logPixelStoref(GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelStoref(GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logPixelStorei(GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelStorei(GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logPixelTransferf(GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelTransferf(GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logPixelTransferi(GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelTransferi(GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logPixelZoom(GLfloat xfactor, GLfloat yfactor) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPixelZoom(GLfloat xfactor, GLfloat yfactor)\r\n");
    return retVal;
}


static void APIENTRY logPointSize(GLfloat size) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPointSize(GLfloat size)\r\n");
    return retVal;
}


static void APIENTRY logPolygonMode(GLenum face, GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPolygonMode(GLenum face, GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logPolygonOffset(GLfloat factor, GLfloat units) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPolygonOffset(GLfloat factor, GLfloat units)\r\n");
    return retVal;
}


static void APIENTRY logPolygonStipple(const GLubyte *mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPolygonStipple(const GLubyte *mask)\r\n");
    return retVal;
}


static void APIENTRY logPopAttrib(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPopAttrib(void)\r\n");
    return retVal;
}


static void APIENTRY logPopClientAttrib(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPopClientAttrib(void)\r\n");
    return retVal;
}


static void APIENTRY logPopMatrix(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPopMatrix(void)\r\n");
    return retVal;
}


static void APIENTRY logPopName(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPopName(void)\r\n");
    return retVal;
}


static void APIENTRY logPrioritizeTextures(GLsizei n, const GLuint *textures, const GLclampf *priorities) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPrioritizeTextures(GLsizei n, const GLuint *textures, const GLclampf *priorities)\r\n");
    return retVal;
}


static void APIENTRY logPushAttrib(GLbitfield mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPushAttrib(GLbitfield mask)\r\n");
    return retVal;
}


static void APIENTRY logPushClientAttrib(GLbitfield mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPushClientAttrib(GLbitfield mask)\r\n");
    return retVal;
}


static void APIENTRY logPushMatrix(void) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPushMatrix(void)\r\n");
    return retVal;
}


static void APIENTRY logPushName(GLuint name) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logPushName(GLuint name)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2d(GLdouble x, GLdouble y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2d(GLdouble x, GLdouble y)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2f(GLfloat x, GLfloat y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2f(GLfloat x, GLfloat y)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2i(GLint x, GLint y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2i(GLint x, GLint y)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2s(GLshort x, GLshort y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2s(GLshort x, GLshort y)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos2sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos2sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3d(GLdouble x, GLdouble y, GLdouble z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3d(GLdouble x, GLdouble y, GLdouble z)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3f(GLfloat x, GLfloat y, GLfloat z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3f(GLfloat x, GLfloat y, GLfloat z)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3i(GLint x, GLint y, GLint z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3i(GLint x, GLint y, GLint z)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3s(GLshort x, GLshort y, GLshort z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3s(GLshort x, GLshort y, GLshort z)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos3sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos3sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4i(GLint x, GLint y, GLint z, GLint w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4i(GLint x, GLint y, GLint z, GLint w)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w)\r\n");
    return retVal;
}


static void APIENTRY logRasterPos4sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRasterPos4sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logReadBuffer(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logReadBuffer(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)\r\n");
    return retVal;
}


static void APIENTRY logRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2)\r\n");
    return retVal;
}


static void APIENTRY logRectdv(const GLdouble *v1, const GLdouble *v2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRectdv(const GLdouble *v1, const GLdouble *v2)\r\n");
    return retVal;
}


static void APIENTRY logRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2)\r\n");
    return retVal;
}


static void APIENTRY logRectfv(const GLfloat *v1, const GLfloat *v2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRectfv(const GLfloat *v1, const GLfloat *v2)\r\n");
    return retVal;
}


static void APIENTRY logRecti(GLint x1, GLint y1, GLint x2, GLint y2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRecti(GLint x1, GLint y1, GLint x2, GLint y2)\r\n");
    return retVal;
}


static void APIENTRY logRectiv(const GLint *v1, const GLint *v2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRectiv(const GLint *v1, const GLint *v2)\r\n");
    return retVal;
}


static void APIENTRY logRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2)\r\n");
    return retVal;
}


static void APIENTRY logRectsv(const GLshort *v1, const GLshort *v2) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRectsv(const GLshort *v1, const GLshort *v2)\r\n");
    return retVal;
}


static GLint APIENTRY logRenderMode(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRenderMode(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z)\r\n");
    return retVal;
}


static void APIENTRY logRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z)\r\n");
    return retVal;
}


static void APIENTRY logScaled(GLdouble x, GLdouble y, GLdouble z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logScaled(GLdouble x, GLdouble y, GLdouble z)\r\n");
    return retVal;
}


static void APIENTRY logScalef(GLfloat x, GLfloat y, GLfloat z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logScalef(GLfloat x, GLfloat y, GLfloat z)\r\n");
    return retVal;
}


static void APIENTRY logScissor(GLint x, GLint y, GLsizei width, GLsizei height) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logScissor(GLint x, GLint y, GLsizei width, GLsizei height)\r\n");
    return retVal;
}


static void APIENTRY logSelectBuffer(GLsizei size, GLuint *buffer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logSelectBuffer(GLsizei size, GLuint *buffer)\r\n");
    return retVal;
}


static void APIENTRY logShadeModel(GLenum mode) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logShadeModel(GLenum mode)\r\n");
    return retVal;
}


static void APIENTRY logStencilFunc(GLenum func, GLint ref, GLuint mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logStencilFunc(GLenum func, GLint ref, GLuint mask)\r\n");
    return retVal;
}


static void APIENTRY logStencilMask(GLuint mask) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logStencilMask(GLuint mask)\r\n");
    return retVal;
}


static void APIENTRY logStencilOp(GLenum fail, GLenum zfail, GLenum zpass) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logStencilOp(GLenum fail, GLenum zfail, GLenum zpass)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1d(GLdouble s) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1d(GLdouble s)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1f(GLfloat s) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1f(GLfloat s)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1i(GLint s) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1i(GLint s)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1s(GLshort s) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1s(GLshort s)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord1sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord1sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2d(GLdouble s, GLdouble t) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2d(GLdouble s, GLdouble t)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2f(GLfloat s, GLfloat t) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2f(GLfloat s, GLfloat t)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2i(GLint s, GLint t) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2i(GLint s, GLint t)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2s(GLshort s, GLshort t) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2s(GLshort s, GLshort t)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord2sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord2sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3d(GLdouble s, GLdouble t, GLdouble r) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3d(GLdouble s, GLdouble t, GLdouble r)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3f(GLfloat s, GLfloat t, GLfloat r) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3f(GLfloat s, GLfloat t, GLfloat r)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3i(GLint s, GLint t, GLint r) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3i(GLint s, GLint t, GLint r)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3s(GLshort s, GLshort t, GLshort r) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3s(GLshort s, GLshort t, GLshort r)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord3sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord3sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4i(GLint s, GLint t, GLint r, GLint q) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4i(GLint s, GLint t, GLint r, GLint q)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q)\r\n");
    return retVal;
}


static void APIENTRY logTexCoord4sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoord4sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logTexCoordPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *pointer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexCoordPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)\r\n");
    return retVal;
}


static void APIENTRY logTexEnvf(GLenum target, GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexEnvf(GLenum target, GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logTexEnvfv(GLenum target, GLenum pname, const GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexEnvfv(GLenum target, GLenum pname, const GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logTexEnvi(GLenum target, GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexEnvi(GLenum target, GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logTexEnviv(GLenum target, GLenum pname, const GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexEnviv(GLenum target, GLenum pname, const GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logTexGend(GLenum coord, GLenum pname, GLdouble param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexGend(GLenum coord, GLenum pname, GLdouble param)\r\n");
    return retVal;
}


static void APIENTRY logTexGendv(GLenum coord, GLenum pname, const GLdouble *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexGendv(GLenum coord, GLenum pname, const GLdouble *params)\r\n");
    return retVal;
}


static void APIENTRY logTexGenf(GLenum coord, GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexGenf(GLenum coord, GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logTexGenfv(GLenum coord, GLenum pname, const GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexGenfv(GLenum coord, GLenum pname, const GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logTexGeni(GLenum coord, GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexGeni(GLenum coord, GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logTexGeniv(GLenum coord, GLenum pname, const GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexGeniv(GLenum coord, GLenum pname, const GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid *pixels) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid *pixels)\r\n");
    return retVal;
}


static void APIENTRY logTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels)\r\n");
    return retVal;
}


static void APIENTRY logTexParameterf(GLenum target, GLenum pname, GLfloat param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexParameterf(GLenum target, GLenum pname, GLfloat param)\r\n");
    return retVal;
}


static void APIENTRY logTexParameterfv(GLenum target, GLenum pname, const GLfloat *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexParameterfv(GLenum target, GLenum pname, const GLfloat *params)\r\n");
    return retVal;
}


static void APIENTRY logTexParameteri(GLenum target, GLenum pname, GLint param) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexParameteri(GLenum target, GLenum pname, GLint param)\r\n");
    return retVal;
}


static void APIENTRY logTexParameteriv(GLenum target, GLenum pname, const GLint *params) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexParameteriv(GLenum target, GLenum pname, const GLint *params)\r\n");
    return retVal;
}


static void APIENTRY logTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels)\r\n");
    return retVal;
}


static void APIENTRY logTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels)\r\n");
    return retVal;
}


static void APIENTRY logTranslated(GLdouble x, GLdouble y, GLdouble z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTranslated(GLdouble x, GLdouble y, GLdouble z)\r\n");
    return retVal;
}


static void APIENTRY logTranslatef(GLfloat x, GLfloat y, GLfloat z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logTranslatef(GLfloat x, GLfloat y, GLfloat z)\r\n");
    return retVal;
}


static void APIENTRY logVertex2d(GLdouble x, GLdouble y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2d(GLdouble x, GLdouble y)\r\n");
    return retVal;
}


static void APIENTRY logVertex2dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex2f(GLfloat x, GLfloat y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2f(GLfloat x, GLfloat y)\r\n");
    return retVal;
}


static void APIENTRY logVertex2fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex2i(GLint x, GLint y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2i(GLint x, GLint y)\r\n");
    return retVal;
}


static void APIENTRY logVertex2iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex2s(GLshort x, GLshort y) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2s(GLshort x, GLshort y)\r\n");
    return retVal;
}


static void APIENTRY logVertex2sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex2sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex3d(GLdouble x, GLdouble y, GLdouble z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3d(GLdouble x, GLdouble y, GLdouble z)\r\n");
    return retVal;
}


static void APIENTRY logVertex3dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex3f(GLfloat x, GLfloat y, GLfloat z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3f(GLfloat x, GLfloat y, GLfloat z)\r\n");
    return retVal;
}


static void APIENTRY logVertex3fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex3i(GLint x, GLint y, GLint z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3i(GLint x, GLint y, GLint z)\r\n");
    return retVal;
}


static void APIENTRY logVertex3iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex3s(GLshort x, GLshort y, GLshort z) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3s(GLshort x, GLshort y, GLshort z)\r\n");
    return retVal;
}


static void APIENTRY logVertex3sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex3sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)\r\n");
    return retVal;
}


static void APIENTRY logVertex4dv(const GLdouble *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4dv(const GLdouble *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)\r\n");
    return retVal;
}


static void APIENTRY logVertex4fv(const GLfloat *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4fv(const GLfloat *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex4i(GLint x, GLint y, GLint z, GLint w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4i(GLint x, GLint y, GLint z, GLint w)\r\n");
    return retVal;
}


static void APIENTRY logVertex4iv(const GLint *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4iv(const GLint *v)\r\n");
    return retVal;
}


static void APIENTRY logVertex4s(GLshort x, GLshort y, GLshort z, GLshort w) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)\r\n");
    return retVal;
}


static void APIENTRY logVertex4sv(const GLshort *v) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertex4sv(const GLshort *v)\r\n");
    return retVal;
}


static void APIENTRY logVertexPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *pointer) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logVertexPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *pointer)\r\n");
    return retVal;
}


static void APIENTRY logViewport(GLint x, GLint y, GLsizei width, GLsizei height) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logViewport(GLint x, GLint y, GLsizei width, GLsizei height)\r\n");
    return retVal;
}



#ifdef __linux__

static XVisualInfo * APIENTRY logChooseVisual(Display *dpy, int screen, int *attribList) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logChooseVisual(Display *dpy, int screen, int *attribList)\r\n");
    return retVal;
}


static GLXContext APIENTRY logCreateContext(Display *dpy, XVisualInfo *vis, GLXContext shareList, Bool direct) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logCreateContext(Display *dpy, XVisualInfo *vis, GLXContext shareList, Bool direct)\r\n");
    return retVal;
}


static void APIENTRY logDestroyContext(Display *dpy, GLXContext ctx) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logDestroyContext(Display *dpy, GLXContext ctx)\r\n");
    return retVal;
}


static Bool APIENTRY logMakeCurrent(Display *dpy, GLXDrawable drawable, GLXContext ctx) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logMakeCurrent(Display *dpy, GLXDrawable drawable, GLXContext ctx)\r\n");
    return retVal;
}


static void APIENTRY logSwapBuffers(Display *dpy, GLXDrawable drawable) {
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY logSwapBuffers(Display *dpy, GLXDrawable drawable)\r\n");
    return retVal;
}



#endif


#ifdef WIN32


#endif


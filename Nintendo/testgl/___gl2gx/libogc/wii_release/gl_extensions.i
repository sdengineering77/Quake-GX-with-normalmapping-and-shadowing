# 1 "c:/projects/wii/gl2gx/libogc/../source/gl_extensions.c"
# 1 "c:\\projects\\wii\\gl2gx\\libogc\\wii_release//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "c:/projects/wii/gl2gx/libogc/../source/gl_extensions.c"

# 1 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h" 1



# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/assert.h" 1 3
# 9 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/assert.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/_ansi.h" 1 3
# 15 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/_ansi.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/newlib.h" 1 3
# 16 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/config.h" 1 3



# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/config.h" 2 3
# 17 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/_ansi.h" 2 3
# 10 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/assert.h" 2 3
# 39 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/assert.h" 3
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__));

void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__));
# 5 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h" 2

# 1 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h" 1
# 146 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
typedef unsigned int GLenum;
typedef unsigned char GLboolean;
typedef unsigned int GLbitfield;
typedef void GLvoid;
typedef signed char GLbyte;
typedef short GLshort;
typedef int GLint;
typedef unsigned char GLubyte;
typedef unsigned short GLushort;
typedef unsigned int GLuint;
typedef int GLsizei;
typedef float GLfloat;
typedef float GLclampf;
typedef double GLdouble;
typedef double GLclampd;
# 773 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
__attribute__((visibility("default"))) void glClearIndex( GLfloat c );

__attribute__((visibility("default"))) void glClearColor( GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha );

__attribute__((visibility("default"))) void glClear( GLbitfield mask );

__attribute__((visibility("default"))) void glIndexMask( GLuint mask );

__attribute__((visibility("default"))) void glColorMask( GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha );

__attribute__((visibility("default"))) void glAlphaFunc( GLenum func, GLclampf ref );

__attribute__((visibility("default"))) void glBlendFunc( GLenum sfactor, GLenum dfactor );

__attribute__((visibility("default"))) void glLogicOp( GLenum opcode );

__attribute__((visibility("default"))) void glCullFace( GLenum mode );

__attribute__((visibility("default"))) void glFrontFace( GLenum mode );

__attribute__((visibility("default"))) void glPointSize( GLfloat size );

__attribute__((visibility("default"))) void glLineWidth( GLfloat width );

__attribute__((visibility("default"))) void glLineStipple( GLint factor, GLushort pattern );

__attribute__((visibility("default"))) void glPolygonMode( GLenum face, GLenum mode );

__attribute__((visibility("default"))) void glPolygonOffset( GLfloat factor, GLfloat units );

__attribute__((visibility("default"))) void glPolygonStipple( const GLubyte *mask );

__attribute__((visibility("default"))) void glGetPolygonStipple( GLubyte *mask );

__attribute__((visibility("default"))) void glEdgeFlag( GLboolean flag );

__attribute__((visibility("default"))) void glEdgeFlagv( const GLboolean *flag );

__attribute__((visibility("default"))) void glScissor( GLint x, GLint y, GLsizei width, GLsizei height);

__attribute__((visibility("default"))) void glClipPlane( GLenum plane, const GLdouble *equation );

__attribute__((visibility("default"))) void glGetClipPlane( GLenum plane, GLdouble *equation );

__attribute__((visibility("default"))) void glDrawBuffer( GLenum mode );

__attribute__((visibility("default"))) void glReadBuffer( GLenum mode );

__attribute__((visibility("default"))) void glEnable( GLenum cap );

__attribute__((visibility("default"))) void glDisable( GLenum cap );

__attribute__((visibility("default"))) GLboolean glIsEnabled( GLenum cap );


__attribute__((visibility("default"))) void glEnableClientState( GLenum cap );

__attribute__((visibility("default"))) void glDisableClientState( GLenum cap );


__attribute__((visibility("default"))) void glGetBooleanv( GLenum pname, GLboolean *params );

__attribute__((visibility("default"))) void glGetDoublev( GLenum pname, GLdouble *params );

__attribute__((visibility("default"))) void glGetFloatv( GLenum pname, GLfloat *params );

__attribute__((visibility("default"))) void glGetIntegerv( GLenum pname, GLint *params );


__attribute__((visibility("default"))) void glPushAttrib( GLbitfield mask );

__attribute__((visibility("default"))) void glPopAttrib( void );


__attribute__((visibility("default"))) void glPushClientAttrib( GLbitfield mask );

__attribute__((visibility("default"))) void glPopClientAttrib( void );


__attribute__((visibility("default"))) GLint glRenderMode( GLenum mode );

__attribute__((visibility("default"))) GLenum glGetError( void );

__attribute__((visibility("default"))) const GLubyte * glGetString( GLenum name );

__attribute__((visibility("default"))) void glFinish( void );

__attribute__((visibility("default"))) void glFlush( void );

__attribute__((visibility("default"))) void glHint( GLenum target, GLenum mode );






__attribute__((visibility("default"))) void glClearDepth( GLclampd depth );

__attribute__((visibility("default"))) void glDepthFunc( GLenum func );

__attribute__((visibility("default"))) void glDepthMask( GLboolean flag );

__attribute__((visibility("default"))) void glDepthRange( GLclampd near_val, GLclampd far_val );






__attribute__((visibility("default"))) void glClearAccum( GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha );

__attribute__((visibility("default"))) void glAccum( GLenum op, GLfloat value );






__attribute__((visibility("default"))) void glMatrixMode( GLenum mode );

__attribute__((visibility("default"))) void glOrtho( GLdouble left, GLdouble right,
                                 GLdouble bottom, GLdouble top,
                                 GLdouble near_val, GLdouble far_val );

__attribute__((visibility("default"))) void glFrustum( GLdouble left, GLdouble right,
                                   GLdouble bottom, GLdouble top,
                                   GLdouble near_val, GLdouble far_val );

__attribute__((visibility("default"))) void glViewport( GLint x, GLint y,
                                    GLsizei width, GLsizei height );

__attribute__((visibility("default"))) void glPushMatrix( void );

__attribute__((visibility("default"))) void glPopMatrix( void );

__attribute__((visibility("default"))) void glLoadIdentity( void );

__attribute__((visibility("default"))) void glLoadMatrixd( const GLdouble *m );
__attribute__((visibility("default"))) void glLoadMatrixf( const GLfloat *m );

__attribute__((visibility("default"))) void glMultMatrixd( const GLdouble *m );
__attribute__((visibility("default"))) void glMultMatrixf( const GLfloat *m );

__attribute__((visibility("default"))) void glRotated( GLdouble angle,
                                   GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glRotatef( GLfloat angle,
                                   GLfloat x, GLfloat y, GLfloat z );

__attribute__((visibility("default"))) void glScaled( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glScalef( GLfloat x, GLfloat y, GLfloat z );

__attribute__((visibility("default"))) void glTranslated( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glTranslatef( GLfloat x, GLfloat y, GLfloat z );






__attribute__((visibility("default"))) GLboolean glIsList( GLuint list );

__attribute__((visibility("default"))) void glDeleteLists( GLuint list, GLsizei range );

__attribute__((visibility("default"))) GLuint glGenLists( GLsizei range );

__attribute__((visibility("default"))) void glNewList( GLuint list, GLenum mode );

__attribute__((visibility("default"))) void glEndList( void );

__attribute__((visibility("default"))) void glCallList( GLuint list );

__attribute__((visibility("default"))) void glCallLists( GLsizei n, GLenum type,
                                     const GLvoid *lists );

__attribute__((visibility("default"))) void glListBase( GLuint base );






__attribute__((visibility("default"))) void glBegin( GLenum mode );

__attribute__((visibility("default"))) void glEnd( void );


__attribute__((visibility("default"))) void glVertex2d( GLdouble x, GLdouble y );
__attribute__((visibility("default"))) void glVertex2f( GLfloat x, GLfloat y );
__attribute__((visibility("default"))) void glVertex2i( GLint x, GLint y );
__attribute__((visibility("default"))) void glVertex2s( GLshort x, GLshort y );

__attribute__((visibility("default"))) void glVertex3d( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glVertex3f( GLfloat x, GLfloat y, GLfloat z );
__attribute__((visibility("default"))) void glVertex3i( GLint x, GLint y, GLint z );
__attribute__((visibility("default"))) void glVertex3s( GLshort x, GLshort y, GLshort z );

__attribute__((visibility("default"))) void glVertex4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
__attribute__((visibility("default"))) void glVertex4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
__attribute__((visibility("default"))) void glVertex4i( GLint x, GLint y, GLint z, GLint w );
__attribute__((visibility("default"))) void glVertex4s( GLshort x, GLshort y, GLshort z, GLshort w );

__attribute__((visibility("default"))) void glVertex2dv( const GLdouble *v );
__attribute__((visibility("default"))) void glVertex2fv( const GLfloat *v );
__attribute__((visibility("default"))) void glVertex2iv( const GLint *v );
__attribute__((visibility("default"))) void glVertex2sv( const GLshort *v );

__attribute__((visibility("default"))) void glVertex3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glVertex3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glVertex3iv( const GLint *v );
__attribute__((visibility("default"))) void glVertex3sv( const GLshort *v );

__attribute__((visibility("default"))) void glVertex4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glVertex4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glVertex4iv( const GLint *v );
__attribute__((visibility("default"))) void glVertex4sv( const GLshort *v );


__attribute__((visibility("default"))) void glNormal3b( GLbyte nx, GLbyte ny, GLbyte nz );
__attribute__((visibility("default"))) void glNormal3d( GLdouble nx, GLdouble ny, GLdouble nz );
__attribute__((visibility("default"))) void glNormal3f( GLfloat nx, GLfloat ny, GLfloat nz );
__attribute__((visibility("default"))) void glNormal3i( GLint nx, GLint ny, GLint nz );
__attribute__((visibility("default"))) void glNormal3s( GLshort nx, GLshort ny, GLshort nz );

__attribute__((visibility("default"))) void glNormal3bv( const GLbyte *v );
__attribute__((visibility("default"))) void glNormal3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glNormal3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glNormal3iv( const GLint *v );
__attribute__((visibility("default"))) void glNormal3sv( const GLshort *v );


__attribute__((visibility("default"))) void glIndexd( GLdouble c );
__attribute__((visibility("default"))) void glIndexf( GLfloat c );
__attribute__((visibility("default"))) void glIndexi( GLint c );
__attribute__((visibility("default"))) void glIndexs( GLshort c );
__attribute__((visibility("default"))) void glIndexub( GLubyte c );

__attribute__((visibility("default"))) void glIndexdv( const GLdouble *c );
__attribute__((visibility("default"))) void glIndexfv( const GLfloat *c );
__attribute__((visibility("default"))) void glIndexiv( const GLint *c );
__attribute__((visibility("default"))) void glIndexsv( const GLshort *c );
__attribute__((visibility("default"))) void glIndexubv( const GLubyte *c );

__attribute__((visibility("default"))) void glColor3b( GLbyte red, GLbyte green, GLbyte blue );
__attribute__((visibility("default"))) void glColor3d( GLdouble red, GLdouble green, GLdouble blue );
__attribute__((visibility("default"))) void glColor3f( GLfloat red, GLfloat green, GLfloat blue );
__attribute__((visibility("default"))) void glColor3i( GLint red, GLint green, GLint blue );
__attribute__((visibility("default"))) void glColor3s( GLshort red, GLshort green, GLshort blue );
__attribute__((visibility("default"))) void glColor3ub( GLubyte red, GLubyte green, GLubyte blue );
__attribute__((visibility("default"))) void glColor3ui( GLuint red, GLuint green, GLuint blue );
__attribute__((visibility("default"))) void glColor3us( GLushort red, GLushort green, GLushort blue );

__attribute__((visibility("default"))) void glColor4b( GLbyte red, GLbyte green,
                                   GLbyte blue, GLbyte alpha );
__attribute__((visibility("default"))) void glColor4d( GLdouble red, GLdouble green,
                                   GLdouble blue, GLdouble alpha );
__attribute__((visibility("default"))) void glColor4f( GLfloat red, GLfloat green,
                                   GLfloat blue, GLfloat alpha );
__attribute__((visibility("default"))) void glColor4i( GLint red, GLint green,
                                   GLint blue, GLint alpha );
__attribute__((visibility("default"))) void glColor4s( GLshort red, GLshort green,
                                   GLshort blue, GLshort alpha );
__attribute__((visibility("default"))) void glColor4ub( GLubyte red, GLubyte green,
                                    GLubyte blue, GLubyte alpha );
__attribute__((visibility("default"))) void glColor4ui( GLuint red, GLuint green,
                                    GLuint blue, GLuint alpha );
__attribute__((visibility("default"))) void glColor4us( GLushort red, GLushort green,
                                    GLushort blue, GLushort alpha );


__attribute__((visibility("default"))) void glColor3bv( const GLbyte *v );
__attribute__((visibility("default"))) void glColor3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glColor3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glColor3iv( const GLint *v );
__attribute__((visibility("default"))) void glColor3sv( const GLshort *v );
__attribute__((visibility("default"))) void glColor3ubv( const GLubyte *v );
__attribute__((visibility("default"))) void glColor3uiv( const GLuint *v );
__attribute__((visibility("default"))) void glColor3usv( const GLushort *v );

__attribute__((visibility("default"))) void glColor4bv( const GLbyte *v );
__attribute__((visibility("default"))) void glColor4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glColor4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glColor4iv( const GLint *v );
__attribute__((visibility("default"))) void glColor4sv( const GLshort *v );
__attribute__((visibility("default"))) void glColor4ubv( const GLubyte *v );
__attribute__((visibility("default"))) void glColor4uiv( const GLuint *v );
__attribute__((visibility("default"))) void glColor4usv( const GLushort *v );


__attribute__((visibility("default"))) void glTexCoord1d( GLdouble s );
__attribute__((visibility("default"))) void glTexCoord1f( GLfloat s );
__attribute__((visibility("default"))) void glTexCoord1i( GLint s );
__attribute__((visibility("default"))) void glTexCoord1s( GLshort s );

__attribute__((visibility("default"))) void glTexCoord2d( GLdouble s, GLdouble t );
__attribute__((visibility("default"))) void glTexCoord2f( GLfloat s, GLfloat t );
__attribute__((visibility("default"))) void glTexCoord2i( GLint s, GLint t );
__attribute__((visibility("default"))) void glTexCoord2s( GLshort s, GLshort t );

__attribute__((visibility("default"))) void glTexCoord3d( GLdouble s, GLdouble t, GLdouble r );
__attribute__((visibility("default"))) void glTexCoord3f( GLfloat s, GLfloat t, GLfloat r );
__attribute__((visibility("default"))) void glTexCoord3i( GLint s, GLint t, GLint r );
__attribute__((visibility("default"))) void glTexCoord3s( GLshort s, GLshort t, GLshort r );

__attribute__((visibility("default"))) void glTexCoord4d( GLdouble s, GLdouble t, GLdouble r, GLdouble q );
__attribute__((visibility("default"))) void glTexCoord4f( GLfloat s, GLfloat t, GLfloat r, GLfloat q );
__attribute__((visibility("default"))) void glTexCoord4i( GLint s, GLint t, GLint r, GLint q );
__attribute__((visibility("default"))) void glTexCoord4s( GLshort s, GLshort t, GLshort r, GLshort q );

__attribute__((visibility("default"))) void glTexCoord1dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord1fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord1iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord1sv( const GLshort *v );

__attribute__((visibility("default"))) void glTexCoord2dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord2fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord2iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord2sv( const GLshort *v );

__attribute__((visibility("default"))) void glTexCoord3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord3iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord3sv( const GLshort *v );

__attribute__((visibility("default"))) void glTexCoord4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glTexCoord4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glTexCoord4iv( const GLint *v );
__attribute__((visibility("default"))) void glTexCoord4sv( const GLshort *v );


__attribute__((visibility("default"))) void glRasterPos2d( GLdouble x, GLdouble y );
__attribute__((visibility("default"))) void glRasterPos2f( GLfloat x, GLfloat y );
__attribute__((visibility("default"))) void glRasterPos2i( GLint x, GLint y );
__attribute__((visibility("default"))) void glRasterPos2s( GLshort x, GLshort y );

__attribute__((visibility("default"))) void glRasterPos3d( GLdouble x, GLdouble y, GLdouble z );
__attribute__((visibility("default"))) void glRasterPos3f( GLfloat x, GLfloat y, GLfloat z );
__attribute__((visibility("default"))) void glRasterPos3i( GLint x, GLint y, GLint z );
__attribute__((visibility("default"))) void glRasterPos3s( GLshort x, GLshort y, GLshort z );

__attribute__((visibility("default"))) void glRasterPos4d( GLdouble x, GLdouble y, GLdouble z, GLdouble w );
__attribute__((visibility("default"))) void glRasterPos4f( GLfloat x, GLfloat y, GLfloat z, GLfloat w );
__attribute__((visibility("default"))) void glRasterPos4i( GLint x, GLint y, GLint z, GLint w );
__attribute__((visibility("default"))) void glRasterPos4s( GLshort x, GLshort y, GLshort z, GLshort w );

__attribute__((visibility("default"))) void glRasterPos2dv( const GLdouble *v );
__attribute__((visibility("default"))) void glRasterPos2fv( const GLfloat *v );
__attribute__((visibility("default"))) void glRasterPos2iv( const GLint *v );
__attribute__((visibility("default"))) void glRasterPos2sv( const GLshort *v );

__attribute__((visibility("default"))) void glRasterPos3dv( const GLdouble *v );
__attribute__((visibility("default"))) void glRasterPos3fv( const GLfloat *v );
__attribute__((visibility("default"))) void glRasterPos3iv( const GLint *v );
__attribute__((visibility("default"))) void glRasterPos3sv( const GLshort *v );

__attribute__((visibility("default"))) void glRasterPos4dv( const GLdouble *v );
__attribute__((visibility("default"))) void glRasterPos4fv( const GLfloat *v );
__attribute__((visibility("default"))) void glRasterPos4iv( const GLint *v );
__attribute__((visibility("default"))) void glRasterPos4sv( const GLshort *v );


__attribute__((visibility("default"))) void glRectd( GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2 );
__attribute__((visibility("default"))) void glRectf( GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2 );
__attribute__((visibility("default"))) void glRecti( GLint x1, GLint y1, GLint x2, GLint y2 );
__attribute__((visibility("default"))) void glRects( GLshort x1, GLshort y1, GLshort x2, GLshort y2 );


__attribute__((visibility("default"))) void glRectdv( const GLdouble *v1, const GLdouble *v2 );
__attribute__((visibility("default"))) void glRectfv( const GLfloat *v1, const GLfloat *v2 );
__attribute__((visibility("default"))) void glRectiv( const GLint *v1, const GLint *v2 );
__attribute__((visibility("default"))) void glRectsv( const GLshort *v1, const GLshort *v2 );






__attribute__((visibility("default"))) void glVertexPointer( GLint size, GLenum type,
                                       GLsizei stride, const GLvoid *ptr );

__attribute__((visibility("default"))) void glNormalPointer( GLenum type, GLsizei stride,
                                       const GLvoid *ptr );

__attribute__((visibility("default"))) void glColorPointer( GLint size, GLenum type,
                                      GLsizei stride, const GLvoid *ptr );

__attribute__((visibility("default"))) void glIndexPointer( GLenum type, GLsizei stride,
                                      const GLvoid *ptr );

__attribute__((visibility("default"))) void glTexCoordPointer( GLint size, GLenum type,
                                         GLsizei stride, const GLvoid *ptr );

__attribute__((visibility("default"))) void glEdgeFlagPointer( GLsizei stride, const GLvoid *ptr );

__attribute__((visibility("default"))) void glGetPointerv( GLenum pname, GLvoid **params );

__attribute__((visibility("default"))) void glArrayElement( GLint i );

__attribute__((visibility("default"))) void glDrawArrays( GLenum mode, GLint first, GLsizei count );

__attribute__((visibility("default"))) void glDrawElements( GLenum mode, GLsizei count,
                                      GLenum type, const GLvoid *indices );

__attribute__((visibility("default"))) void glInterleavedArrays( GLenum format, GLsizei stride,
                                           const GLvoid *pointer );





__attribute__((visibility("default"))) void glShadeModel( GLenum mode );

__attribute__((visibility("default"))) void glLightf( GLenum light, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glLighti( GLenum light, GLenum pname, GLint param );
__attribute__((visibility("default"))) void glLightfv( GLenum light, GLenum pname,
                                 const GLfloat *params );
__attribute__((visibility("default"))) void glLightiv( GLenum light, GLenum pname,
                                 const GLint *params );

__attribute__((visibility("default"))) void glGetLightfv( GLenum light, GLenum pname,
                                    GLfloat *params );
__attribute__((visibility("default"))) void glGetLightiv( GLenum light, GLenum pname,
                                    GLint *params );

__attribute__((visibility("default"))) void glLightModelf( GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glLightModeli( GLenum pname, GLint param );
__attribute__((visibility("default"))) void glLightModelfv( GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glLightModeliv( GLenum pname, const GLint *params );

__attribute__((visibility("default"))) void glMaterialf( GLenum face, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glMateriali( GLenum face, GLenum pname, GLint param );
__attribute__((visibility("default"))) void glMaterialfv( GLenum face, GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glMaterialiv( GLenum face, GLenum pname, const GLint *params );

__attribute__((visibility("default"))) void glGetMaterialfv( GLenum face, GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetMaterialiv( GLenum face, GLenum pname, GLint *params );

__attribute__((visibility("default"))) void glColorMaterial( GLenum face, GLenum mode );






__attribute__((visibility("default"))) void glPixelZoom( GLfloat xfactor, GLfloat yfactor );

__attribute__((visibility("default"))) void glPixelStoref( GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glPixelStorei( GLenum pname, GLint param );

__attribute__((visibility("default"))) void glPixelTransferf( GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glPixelTransferi( GLenum pname, GLint param );

__attribute__((visibility("default"))) void glPixelMapfv( GLenum map, GLsizei mapsize,
                                    const GLfloat *values );
__attribute__((visibility("default"))) void glPixelMapuiv( GLenum map, GLsizei mapsize,
                                     const GLuint *values );
__attribute__((visibility("default"))) void glPixelMapusv( GLenum map, GLsizei mapsize,
                                     const GLushort *values );

__attribute__((visibility("default"))) void glGetPixelMapfv( GLenum map, GLfloat *values );
__attribute__((visibility("default"))) void glGetPixelMapuiv( GLenum map, GLuint *values );
__attribute__((visibility("default"))) void glGetPixelMapusv( GLenum map, GLushort *values );

__attribute__((visibility("default"))) void glBitmap( GLsizei width, GLsizei height,
                                GLfloat xorig, GLfloat yorig,
                                GLfloat xmove, GLfloat ymove,
                                const GLubyte *bitmap );

__attribute__((visibility("default"))) void glReadPixels( GLint x, GLint y,
                                    GLsizei width, GLsizei height,
                                    GLenum format, GLenum type,
                                    GLvoid *pixels );

__attribute__((visibility("default"))) void glDrawPixels( GLsizei width, GLsizei height,
                                    GLenum format, GLenum type,
                                    const GLvoid *pixels );

__attribute__((visibility("default"))) void glCopyPixels( GLint x, GLint y,
                                    GLsizei width, GLsizei height,
                                    GLenum type );





__attribute__((visibility("default"))) void glStencilFunc( GLenum func, GLint ref, GLuint mask );

__attribute__((visibility("default"))) void glStencilMask( GLuint mask );

__attribute__((visibility("default"))) void glStencilOp( GLenum fail, GLenum zfail, GLenum zpass );

__attribute__((visibility("default"))) void glClearStencil( GLint s );







__attribute__((visibility("default"))) void glTexGend( GLenum coord, GLenum pname, GLdouble param );
__attribute__((visibility("default"))) void glTexGenf( GLenum coord, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glTexGeni( GLenum coord, GLenum pname, GLint param );

__attribute__((visibility("default"))) void glTexGendv( GLenum coord, GLenum pname, const GLdouble *params );
__attribute__((visibility("default"))) void glTexGenfv( GLenum coord, GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glTexGeniv( GLenum coord, GLenum pname, const GLint *params );

__attribute__((visibility("default"))) void glGetTexGendv( GLenum coord, GLenum pname, GLdouble *params );
__attribute__((visibility("default"))) void glGetTexGenfv( GLenum coord, GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetTexGeniv( GLenum coord, GLenum pname, GLint *params );


__attribute__((visibility("default"))) void glTexEnvf( GLenum target, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glTexEnvi( GLenum target, GLenum pname, GLint param );

__attribute__((visibility("default"))) void glTexEnvfv( GLenum target, GLenum pname, const GLfloat *params );
__attribute__((visibility("default"))) void glTexEnviv( GLenum target, GLenum pname, const GLint *params );

__attribute__((visibility("default"))) void glGetTexEnvfv( GLenum target, GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetTexEnviv( GLenum target, GLenum pname, GLint *params );


__attribute__((visibility("default"))) void glTexParameterf( GLenum target, GLenum pname, GLfloat param );
__attribute__((visibility("default"))) void glTexParameteri( GLenum target, GLenum pname, GLint param );

__attribute__((visibility("default"))) void glTexParameterfv( GLenum target, GLenum pname,
                                          const GLfloat *params );
__attribute__((visibility("default"))) void glTexParameteriv( GLenum target, GLenum pname,
                                          const GLint *params );

__attribute__((visibility("default"))) void glGetTexParameterfv( GLenum target,
                                           GLenum pname, GLfloat *params);
__attribute__((visibility("default"))) void glGetTexParameteriv( GLenum target,
                                           GLenum pname, GLint *params );

__attribute__((visibility("default"))) void glGetTexLevelParameterfv( GLenum target, GLint level,
                                                GLenum pname, GLfloat *params );
__attribute__((visibility("default"))) void glGetTexLevelParameteriv( GLenum target, GLint level,
                                                GLenum pname, GLint *params );


__attribute__((visibility("default"))) void glTexImage1D( GLenum target, GLint level,
                                    GLint internalFormat,
                                    GLsizei width, GLint border,
                                    GLenum format, GLenum type,
                                    const GLvoid *pixels );

__attribute__((visibility("default"))) void glTexImage2D( GLenum target, GLint level,
                                    GLint internalFormat,
                                    GLsizei width, GLsizei height,
                                    GLint border, GLenum format, GLenum type,
                                    const GLvoid *pixels );

__attribute__((visibility("default"))) void glGetTexImage( GLenum target, GLint level,
                                     GLenum format, GLenum type,
                                     GLvoid *pixels );




__attribute__((visibility("default"))) void glGenTextures( GLsizei n, GLuint *textures );

__attribute__((visibility("default"))) void glDeleteTextures( GLsizei n, const GLuint *textures);

__attribute__((visibility("default"))) void glBindTexture( GLenum target, GLuint texture );

__attribute__((visibility("default"))) void glPrioritizeTextures( GLsizei n,
                                            const GLuint *textures,
                                            const GLclampf *priorities );

__attribute__((visibility("default"))) GLboolean glAreTexturesResident( GLsizei n,
                                                  const GLuint *textures,
                                                  GLboolean *residences );

__attribute__((visibility("default"))) GLboolean glIsTexture( GLuint texture );


__attribute__((visibility("default"))) void glTexSubImage1D( GLenum target, GLint level,
                                       GLint xoffset,
                                       GLsizei width, GLenum format,
                                       GLenum type, const GLvoid *pixels );


__attribute__((visibility("default"))) void glTexSubImage2D( GLenum target, GLint level,
                                       GLint xoffset, GLint yoffset,
                                       GLsizei width, GLsizei height,
                                       GLenum format, GLenum type,
                                       const GLvoid *pixels );


__attribute__((visibility("default"))) void glCopyTexImage1D( GLenum target, GLint level,
                                        GLenum internalformat,
                                        GLint x, GLint y,
                                        GLsizei width, GLint border );


__attribute__((visibility("default"))) void glCopyTexImage2D( GLenum target, GLint level,
                                        GLenum internalformat,
                                        GLint x, GLint y,
                                        GLsizei width, GLsizei height,
                                        GLint border );


__attribute__((visibility("default"))) void glCopyTexSubImage1D( GLenum target, GLint level,
                                           GLint xoffset, GLint x, GLint y,
                                           GLsizei width );


__attribute__((visibility("default"))) void glCopyTexSubImage2D( GLenum target, GLint level,
                                           GLint xoffset, GLint yoffset,
                                           GLint x, GLint y,
                                           GLsizei width, GLsizei height );






__attribute__((visibility("default"))) void glMap1d( GLenum target, GLdouble u1, GLdouble u2,
                               GLint stride,
                               GLint order, const GLdouble *points );
__attribute__((visibility("default"))) void glMap1f( GLenum target, GLfloat u1, GLfloat u2,
                               GLint stride,
                               GLint order, const GLfloat *points );

__attribute__((visibility("default"))) void glMap2d( GLenum target,
       GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,
       GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,
       const GLdouble *points );
__attribute__((visibility("default"))) void glMap2f( GLenum target,
       GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
       GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
       const GLfloat *points );

__attribute__((visibility("default"))) void glGetMapdv( GLenum target, GLenum query, GLdouble *v );
__attribute__((visibility("default"))) void glGetMapfv( GLenum target, GLenum query, GLfloat *v );
__attribute__((visibility("default"))) void glGetMapiv( GLenum target, GLenum query, GLint *v );

__attribute__((visibility("default"))) void glEvalCoord1d( GLdouble u );
__attribute__((visibility("default"))) void glEvalCoord1f( GLfloat u );

__attribute__((visibility("default"))) void glEvalCoord1dv( const GLdouble *u );
__attribute__((visibility("default"))) void glEvalCoord1fv( const GLfloat *u );

__attribute__((visibility("default"))) void glEvalCoord2d( GLdouble u, GLdouble v );
__attribute__((visibility("default"))) void glEvalCoord2f( GLfloat u, GLfloat v );

__attribute__((visibility("default"))) void glEvalCoord2dv( const GLdouble *u );
__attribute__((visibility("default"))) void glEvalCoord2fv( const GLfloat *u );

__attribute__((visibility("default"))) void glMapGrid1d( GLint un, GLdouble u1, GLdouble u2 );
__attribute__((visibility("default"))) void glMapGrid1f( GLint un, GLfloat u1, GLfloat u2 );

__attribute__((visibility("default"))) void glMapGrid2d( GLint un, GLdouble u1, GLdouble u2,
                                   GLint vn, GLdouble v1, GLdouble v2 );
__attribute__((visibility("default"))) void glMapGrid2f( GLint un, GLfloat u1, GLfloat u2,
                                   GLint vn, GLfloat v1, GLfloat v2 );

__attribute__((visibility("default"))) void glEvalPoint1( GLint i );

__attribute__((visibility("default"))) void glEvalPoint2( GLint i, GLint j );

__attribute__((visibility("default"))) void glEvalMesh1( GLenum mode, GLint i1, GLint i2 );

__attribute__((visibility("default"))) void glEvalMesh2( GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2 );






__attribute__((visibility("default"))) void glFogf( GLenum pname, GLfloat param );

__attribute__((visibility("default"))) void glFogi( GLenum pname, GLint param );

__attribute__((visibility("default"))) void glFogfv( GLenum pname, const GLfloat *params );

__attribute__((visibility("default"))) void glFogiv( GLenum pname, const GLint *params );






__attribute__((visibility("default"))) void glFeedbackBuffer( GLsizei size, GLenum type, GLfloat *buffer );

__attribute__((visibility("default"))) void glPassThrough( GLfloat token );

__attribute__((visibility("default"))) void glSelectBuffer( GLsizei size, GLuint *buffer );

__attribute__((visibility("default"))) void glInitNames( void );

__attribute__((visibility("default"))) void glLoadName( GLuint name );

__attribute__((visibility("default"))) void glPushName( GLuint name );

__attribute__((visibility("default"))) void glPopName( void );
# 1518 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
__attribute__((visibility("default"))) void glDrawRangeElements( GLenum mode, GLuint start,
 GLuint end, GLsizei count, GLenum type, const GLvoid *indices );

__attribute__((visibility("default"))) void glTexImage3D( GLenum target, GLint level,
                                      GLint internalFormat,
                                      GLsizei width, GLsizei height,
                                      GLsizei depth, GLint border,
                                      GLenum format, GLenum type,
                                      const GLvoid *pixels );

__attribute__((visibility("default"))) void glTexSubImage3D( GLenum target, GLint level,
                                         GLint xoffset, GLint yoffset,
                                         GLint zoffset, GLsizei width,
                                         GLsizei height, GLsizei depth,
                                         GLenum format,
                                         GLenum type, const GLvoid *pixels);

__attribute__((visibility("default"))) void glCopyTexSubImage3D( GLenum target, GLint level,
                                             GLint xoffset, GLint yoffset,
                                             GLint zoffset, GLint x,
                                             GLint y, GLsizei width,
                                             GLsizei height );

typedef void ( * PFNGLDRAWRANGEELEMENTSPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices);
typedef void ( * PFNGLTEXIMAGE3DPROC) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLCOPYTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
# 1588 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
__attribute__((visibility("default"))) void glActiveTextureARB(GLenum texture);
__attribute__((visibility("default"))) void glClientActiveTextureARB(GLenum texture);
__attribute__((visibility("default"))) void glMultiTexCoord1dARB(GLenum target, GLdouble s);
__attribute__((visibility("default"))) void glMultiTexCoord1dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord1fARB(GLenum target, GLfloat s);
__attribute__((visibility("default"))) void glMultiTexCoord1fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord1iARB(GLenum target, GLint s);
__attribute__((visibility("default"))) void glMultiTexCoord1ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord1sARB(GLenum target, GLshort s);
__attribute__((visibility("default"))) void glMultiTexCoord1svARB(GLenum target, const GLshort *v);
__attribute__((visibility("default"))) void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t);
__attribute__((visibility("default"))) void glMultiTexCoord2dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t);
__attribute__((visibility("default"))) void glMultiTexCoord2fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t);
__attribute__((visibility("default"))) void glMultiTexCoord2ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t);
__attribute__((visibility("default"))) void glMultiTexCoord2svARB(GLenum target, const GLshort *v);
__attribute__((visibility("default"))) void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r);
__attribute__((visibility("default"))) void glMultiTexCoord3dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r);
__attribute__((visibility("default"))) void glMultiTexCoord3fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r);
__attribute__((visibility("default"))) void glMultiTexCoord3ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r);
__attribute__((visibility("default"))) void glMultiTexCoord3svARB(GLenum target, const GLshort *v);
__attribute__((visibility("default"))) void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
__attribute__((visibility("default"))) void glMultiTexCoord4dvARB(GLenum target, const GLdouble *v);
__attribute__((visibility("default"))) void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
__attribute__((visibility("default"))) void glMultiTexCoord4fvARB(GLenum target, const GLfloat *v);
__attribute__((visibility("default"))) void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q);
__attribute__((visibility("default"))) void glMultiTexCoord4ivARB(GLenum target, const GLint *v);
__attribute__((visibility("default"))) void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
__attribute__((visibility("default"))) void glMultiTexCoord4svARB(GLenum target, const GLshort *v);

typedef void ( * PFNGLACTIVETEXTUREARBPROC) (GLenum texture);
typedef void ( * PFNGLCLIENTACTIVETEXTUREARBPROC) (GLenum texture);
typedef void ( * PFNGLMULTITEXCOORD1DARBPROC) (GLenum target, GLdouble s);
typedef void ( * PFNGLMULTITEXCOORD1DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD1FARBPROC) (GLenum target, GLfloat s);
typedef void ( * PFNGLMULTITEXCOORD1FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD1IARBPROC) (GLenum target, GLint s);
typedef void ( * PFNGLMULTITEXCOORD1IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD1SARBPROC) (GLenum target, GLshort s);
typedef void ( * PFNGLMULTITEXCOORD1SVARBPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD2DARBPROC) (GLenum target, GLdouble s, GLdouble t);
typedef void ( * PFNGLMULTITEXCOORD2DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD2FARBPROC) (GLenum target, GLfloat s, GLfloat t);
typedef void ( * PFNGLMULTITEXCOORD2FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD2IARBPROC) (GLenum target, GLint s, GLint t);
typedef void ( * PFNGLMULTITEXCOORD2IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD2SARBPROC) (GLenum target, GLshort s, GLshort t);
typedef void ( * PFNGLMULTITEXCOORD2SVARBPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD3DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
typedef void ( * PFNGLMULTITEXCOORD3DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD3FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
typedef void ( * PFNGLMULTITEXCOORD3FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD3IARBPROC) (GLenum target, GLint s, GLint t, GLint r);
typedef void ( * PFNGLMULTITEXCOORD3IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD3SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
typedef void ( * PFNGLMULTITEXCOORD3SVARBPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD4DARBPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
typedef void ( * PFNGLMULTITEXCOORD4DVARBPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD4FARBPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
typedef void ( * PFNGLMULTITEXCOORD4FVARBPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD4IARBPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
typedef void ( * PFNGLMULTITEXCOORD4IVARBPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD4SARBPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
typedef void ( * PFNGLMULTITEXCOORD4SVARBPROC) (GLenum target, const GLshort *v);
# 1672 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
# 1 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h" 1
# 31 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
# 1 "c:/projects/wii/gl2gx/libogc/include/GL/GLwii.h" 1







# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdlib.h" 1 3
# 14 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdlib.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 214 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 3 4
typedef long int wchar_t;
# 15 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdlib.h" 2 3

# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 1 3
# 13 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/_ansi.h" 1 3
# 14 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 2 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h" 1 3
# 12 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_types.h" 1 3






# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_default_types.h" 1 3
# 26 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/_types.h" 2 3


typedef long long _fpos_t;


typedef long long _off_t;
# 13 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h" 2 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 47 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/lock.h" 3
extern int __libc_lock_init(int*,int);
extern int __libc_lock_close(int*);
extern int __libc_lock_acquire(int*);
extern int __libc_lock_try_acquire(int*);
extern int __libc_lock_release(int*);
# 14 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h" 2 3
# 24 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h" 3
typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;
# 56 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h" 3
typedef int _ssize_t;






# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 355 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *, char *, int);

  int (*_write) (struct _reent *, void *, const char *, int);

  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 812 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__section__(".sdata")));
extern struct _reent *const _global_impure_ptr __attribute__((__section__(".sdata")));

void _reclaim_reent (struct _reent *);
# 17 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/stdlib.h" 1 3
# 18 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdlib.h" 2 3

# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/alloca.h" 1 3
# 20 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdlib.h" 2 3








typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;
# 57 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *));




void * calloc (size_t __nmemb, size_t __size);
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *);
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size);
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);


int mkstemp (char *);
char * mktemp (char *);


void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size);

void * reallocf (void * __r, size_t __size);

void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);
int on_exit (void (*__func)(int, void *),void * __arg);
void _Exit (int __status) __attribute__ ((noreturn));
int putenv (char *__string);
int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);
int setenv (const char *__string, const char *__value, int __overwrite);
int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);
int rand_r (unsigned *__seed);

double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);
long long atoll (const char *__nptr);
long long _atoll_r (struct _reent *, const char *__nptr);
long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *__n, char **__end_PTR, int __base);
long long _strtoll_r (struct _reent *, const char *__n, char **__end_PTR, int __base);
unsigned long long strtoull (const char *__n, char **__end_PTR, int __base);
unsigned long long _strtoull_r (struct _reent *, const char *__n, char **__end_PTR, int __base);


void cfree (void *);
int unsetenv (const char *__string);
int _unsetenv_r (struct _reent *, const char *__string);




char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t);
void * _calloc_r (struct _reent *, size_t, size_t);
void _free_r (struct _reent *, void *);
void * _realloc_r (struct _reent *, void *, size_t);
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);


# 9 "c:/projects/wii/gl2gx/libogc/include/GL/GLwii.h" 2

void ShowConsole();
void HideConsole();
unsigned char getFPS();
void PreallocTexMem(size_t size);
# 32 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h" 2
# 3390 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 152 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 3391 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h" 2


typedef char GLchar;




typedef ptrdiff_t GLintptr;
typedef ptrdiff_t GLsizeiptr;




typedef ptrdiff_t GLintptrARB;
typedef ptrdiff_t GLsizeiptrARB;




typedef char GLcharARB;
typedef unsigned int GLhandleARB;




typedef unsigned short GLhalfARB;



typedef unsigned short GLhalfNV;
# 3456 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 1 3
# 16 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 1 3
# 41 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed int int32_t;
typedef unsigned int uint32_t;
# 97 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
  typedef long long unsigned int uintmax_t;
# 243 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 17 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 2 3

# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 19 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 2 3
# 270 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 3
typedef struct {
  intmax_t quot;
  intmax_t rem;
} imaxdiv_t;





extern intmax_t imaxabs(intmax_t j);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denomer);
extern intmax_t strtoimax(const char *__restrict, char **__restrict, int);
extern uintmax_t strtoumax(const char *__restrict, char **__restrict, int);
extern intmax_t wcstoimax(const wchar_t *__restrict, wchar_t **__restrict, int);
extern uintmax_t wcstoumax(const wchar_t *__restrict, wchar_t **__restrict, int);
# 3457 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h" 2




typedef int64_t GLint64EXT;
typedef uint64_t GLuint64EXT;
# 3550 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glActiveTexture (GLenum);
__attribute__((visibility("default"))) void glClientActiveTexture (GLenum);
__attribute__((visibility("default"))) void glMultiTexCoord1d (GLenum, GLdouble);
__attribute__((visibility("default"))) void glMultiTexCoord1dv (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glMultiTexCoord1f (GLenum, GLfloat);
__attribute__((visibility("default"))) void glMultiTexCoord1fv (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glMultiTexCoord1i (GLenum, GLint);
__attribute__((visibility("default"))) void glMultiTexCoord1iv (GLenum, const GLint *);
__attribute__((visibility("default"))) void glMultiTexCoord1s (GLenum, GLshort);
__attribute__((visibility("default"))) void glMultiTexCoord1sv (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glMultiTexCoord2d (GLenum, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glMultiTexCoord2dv (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glMultiTexCoord2f (GLenum, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glMultiTexCoord2fv (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glMultiTexCoord2i (GLenum, GLint, GLint);
__attribute__((visibility("default"))) void glMultiTexCoord2iv (GLenum, const GLint *);
__attribute__((visibility("default"))) void glMultiTexCoord2s (GLenum, GLshort, GLshort);
__attribute__((visibility("default"))) void glMultiTexCoord2sv (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glMultiTexCoord3d (GLenum, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glMultiTexCoord3dv (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glMultiTexCoord3f (GLenum, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glMultiTexCoord3fv (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glMultiTexCoord3i (GLenum, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glMultiTexCoord3iv (GLenum, const GLint *);
__attribute__((visibility("default"))) void glMultiTexCoord3s (GLenum, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glMultiTexCoord3sv (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glMultiTexCoord4d (GLenum, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glMultiTexCoord4dv (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glMultiTexCoord4f (GLenum, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glMultiTexCoord4fv (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glMultiTexCoord4i (GLenum, GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glMultiTexCoord4iv (GLenum, const GLint *);
__attribute__((visibility("default"))) void glMultiTexCoord4s (GLenum, GLshort, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glMultiTexCoord4sv (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glLoadTransposeMatrixf (const GLfloat *);
__attribute__((visibility("default"))) void glLoadTransposeMatrixd (const GLdouble *);
__attribute__((visibility("default"))) void glMultTransposeMatrixf (const GLfloat *);
__attribute__((visibility("default"))) void glMultTransposeMatrixd (const GLdouble *);
__attribute__((visibility("default"))) void glSampleCoverage (GLclampf, GLboolean);
__attribute__((visibility("default"))) void glCompressedTexImage3D (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexImage2D (GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexImage1D (GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexSubImage3D (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexSubImage2D (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexSubImage1D (GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glGetCompressedTexImage (GLenum, GLint, GLvoid *);

typedef void ( * PFNGLACTIVETEXTUREPROC) (GLenum texture);
typedef void ( * PFNGLCLIENTACTIVETEXTUREPROC) (GLenum texture);
typedef void ( * PFNGLMULTITEXCOORD1DPROC) (GLenum target, GLdouble s);
typedef void ( * PFNGLMULTITEXCOORD1DVPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD1FPROC) (GLenum target, GLfloat s);
typedef void ( * PFNGLMULTITEXCOORD1FVPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD1IPROC) (GLenum target, GLint s);
typedef void ( * PFNGLMULTITEXCOORD1IVPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD1SPROC) (GLenum target, GLshort s);
typedef void ( * PFNGLMULTITEXCOORD1SVPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD2DPROC) (GLenum target, GLdouble s, GLdouble t);
typedef void ( * PFNGLMULTITEXCOORD2DVPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD2FPROC) (GLenum target, GLfloat s, GLfloat t);
typedef void ( * PFNGLMULTITEXCOORD2FVPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD2IPROC) (GLenum target, GLint s, GLint t);
typedef void ( * PFNGLMULTITEXCOORD2IVPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD2SPROC) (GLenum target, GLshort s, GLshort t);
typedef void ( * PFNGLMULTITEXCOORD2SVPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD3DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r);
typedef void ( * PFNGLMULTITEXCOORD3DVPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD3FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r);
typedef void ( * PFNGLMULTITEXCOORD3FVPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD3IPROC) (GLenum target, GLint s, GLint t, GLint r);
typedef void ( * PFNGLMULTITEXCOORD3IVPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD3SPROC) (GLenum target, GLshort s, GLshort t, GLshort r);
typedef void ( * PFNGLMULTITEXCOORD3SVPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLMULTITEXCOORD4DPROC) (GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
typedef void ( * PFNGLMULTITEXCOORD4DVPROC) (GLenum target, const GLdouble *v);
typedef void ( * PFNGLMULTITEXCOORD4FPROC) (GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
typedef void ( * PFNGLMULTITEXCOORD4FVPROC) (GLenum target, const GLfloat *v);
typedef void ( * PFNGLMULTITEXCOORD4IPROC) (GLenum target, GLint s, GLint t, GLint r, GLint q);
typedef void ( * PFNGLMULTITEXCOORD4IVPROC) (GLenum target, const GLint *v);
typedef void ( * PFNGLMULTITEXCOORD4SPROC) (GLenum target, GLshort s, GLshort t, GLshort r, GLshort q);
typedef void ( * PFNGLMULTITEXCOORD4SVPROC) (GLenum target, const GLshort *v);
typedef void ( * PFNGLLOADTRANSPOSEMATRIXFPROC) (const GLfloat *m);
typedef void ( * PFNGLLOADTRANSPOSEMATRIXDPROC) (const GLdouble *m);
typedef void ( * PFNGLMULTTRANSPOSEMATRIXFPROC) (const GLfloat *m);
typedef void ( * PFNGLMULTTRANSPOSEMATRIXDPROC) (const GLdouble *m);
typedef void ( * PFNGLSAMPLECOVERAGEPROC) (GLclampf value, GLboolean invert);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE3DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE2DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE1DPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLGETCOMPRESSEDTEXIMAGEPROC) (GLenum target, GLint level, GLvoid *img);





__attribute__((visibility("default"))) void glBlendFuncSeparate (GLenum, GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) void glFogCoordf (GLfloat);
__attribute__((visibility("default"))) void glFogCoordfv (const GLfloat *);
__attribute__((visibility("default"))) void glFogCoordd (GLdouble);
__attribute__((visibility("default"))) void glFogCoorddv (const GLdouble *);
__attribute__((visibility("default"))) void glFogCoordPointer (GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glMultiDrawArrays (GLenum, GLint *, GLsizei *, GLsizei);
__attribute__((visibility("default"))) void glMultiDrawElements (GLenum, const GLsizei *, GLenum, const GLvoid* *, GLsizei);
__attribute__((visibility("default"))) void glPointParameterf (GLenum, GLfloat);
__attribute__((visibility("default"))) void glPointParameterfv (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glPointParameteri (GLenum, GLint);
__attribute__((visibility("default"))) void glPointParameteriv (GLenum, const GLint *);
__attribute__((visibility("default"))) void glSecondaryColor3b (GLbyte, GLbyte, GLbyte);
__attribute__((visibility("default"))) void glSecondaryColor3bv (const GLbyte *);
__attribute__((visibility("default"))) void glSecondaryColor3d (GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glSecondaryColor3dv (const GLdouble *);
__attribute__((visibility("default"))) void glSecondaryColor3f (GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glSecondaryColor3fv (const GLfloat *);
__attribute__((visibility("default"))) void glSecondaryColor3i (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glSecondaryColor3iv (const GLint *);
__attribute__((visibility("default"))) void glSecondaryColor3s (GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glSecondaryColor3sv (const GLshort *);
__attribute__((visibility("default"))) void glSecondaryColor3ub (GLubyte, GLubyte, GLubyte);
__attribute__((visibility("default"))) void glSecondaryColor3ubv (const GLubyte *);
__attribute__((visibility("default"))) void glSecondaryColor3ui (GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glSecondaryColor3uiv (const GLuint *);
__attribute__((visibility("default"))) void glSecondaryColor3us (GLushort, GLushort, GLushort);
__attribute__((visibility("default"))) void glSecondaryColor3usv (const GLushort *);
__attribute__((visibility("default"))) void glSecondaryColorPointer (GLint, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glWindowPos2d (GLdouble, GLdouble);
__attribute__((visibility("default"))) void glWindowPos2dv (const GLdouble *);
__attribute__((visibility("default"))) void glWindowPos2f (GLfloat, GLfloat);
__attribute__((visibility("default"))) void glWindowPos2fv (const GLfloat *);
__attribute__((visibility("default"))) void glWindowPos2i (GLint, GLint);
__attribute__((visibility("default"))) void glWindowPos2iv (const GLint *);
__attribute__((visibility("default"))) void glWindowPos2s (GLshort, GLshort);
__attribute__((visibility("default"))) void glWindowPos2sv (const GLshort *);
__attribute__((visibility("default"))) void glWindowPos3d (GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glWindowPos3dv (const GLdouble *);
__attribute__((visibility("default"))) void glWindowPos3f (GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glWindowPos3fv (const GLfloat *);
__attribute__((visibility("default"))) void glWindowPos3i (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glWindowPos3iv (const GLint *);
__attribute__((visibility("default"))) void glWindowPos3s (GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glWindowPos3sv (const GLshort *);

typedef void ( * PFNGLBLENDFUNCSEPARATEPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
typedef void ( * PFNGLFOGCOORDFPROC) (GLfloat coord);
typedef void ( * PFNGLFOGCOORDFVPROC) (const GLfloat *coord);
typedef void ( * PFNGLFOGCOORDDPROC) (GLdouble coord);
typedef void ( * PFNGLFOGCOORDDVPROC) (const GLdouble *coord);
typedef void ( * PFNGLFOGCOORDPOINTERPROC) (GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void ( * PFNGLMULTIDRAWARRAYSPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
typedef void ( * PFNGLMULTIDRAWELEMENTSPROC) (GLenum mode, const GLsizei *count, GLenum type, const GLvoid* *indices, GLsizei primcount);
typedef void ( * PFNGLPOINTPARAMETERFPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPOINTPARAMETERFVPROC) (GLenum pname, const GLfloat *params);
typedef void ( * PFNGLPOINTPARAMETERIPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLPOINTPARAMETERIVPROC) (GLenum pname, const GLint *params);
typedef void ( * PFNGLSECONDARYCOLOR3BPROC) (GLbyte red, GLbyte green, GLbyte blue);
typedef void ( * PFNGLSECONDARYCOLOR3BVPROC) (const GLbyte *v);
typedef void ( * PFNGLSECONDARYCOLOR3DPROC) (GLdouble red, GLdouble green, GLdouble blue);
typedef void ( * PFNGLSECONDARYCOLOR3DVPROC) (const GLdouble *v);
typedef void ( * PFNGLSECONDARYCOLOR3FPROC) (GLfloat red, GLfloat green, GLfloat blue);
typedef void ( * PFNGLSECONDARYCOLOR3FVPROC) (const GLfloat *v);
typedef void ( * PFNGLSECONDARYCOLOR3IPROC) (GLint red, GLint green, GLint blue);
typedef void ( * PFNGLSECONDARYCOLOR3IVPROC) (const GLint *v);
typedef void ( * PFNGLSECONDARYCOLOR3SPROC) (GLshort red, GLshort green, GLshort blue);
typedef void ( * PFNGLSECONDARYCOLOR3SVPROC) (const GLshort *v);
typedef void ( * PFNGLSECONDARYCOLOR3UBPROC) (GLubyte red, GLubyte green, GLubyte blue);
typedef void ( * PFNGLSECONDARYCOLOR3UBVPROC) (const GLubyte *v);
typedef void ( * PFNGLSECONDARYCOLOR3UIPROC) (GLuint red, GLuint green, GLuint blue);
typedef void ( * PFNGLSECONDARYCOLOR3UIVPROC) (const GLuint *v);
typedef void ( * PFNGLSECONDARYCOLOR3USPROC) (GLushort red, GLushort green, GLushort blue);
typedef void ( * PFNGLSECONDARYCOLOR3USVPROC) (const GLushort *v);
typedef void ( * PFNGLSECONDARYCOLORPOINTERPROC) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void ( * PFNGLWINDOWPOS2DPROC) (GLdouble x, GLdouble y);
typedef void ( * PFNGLWINDOWPOS2DVPROC) (const GLdouble *v);
typedef void ( * PFNGLWINDOWPOS2FPROC) (GLfloat x, GLfloat y);
typedef void ( * PFNGLWINDOWPOS2FVPROC) (const GLfloat *v);
typedef void ( * PFNGLWINDOWPOS2IPROC) (GLint x, GLint y);
typedef void ( * PFNGLWINDOWPOS2IVPROC) (const GLint *v);
typedef void ( * PFNGLWINDOWPOS2SPROC) (GLshort x, GLshort y);
typedef void ( * PFNGLWINDOWPOS2SVPROC) (const GLshort *v);
typedef void ( * PFNGLWINDOWPOS3DPROC) (GLdouble x, GLdouble y, GLdouble z);
typedef void ( * PFNGLWINDOWPOS3DVPROC) (const GLdouble *v);
typedef void ( * PFNGLWINDOWPOS3FPROC) (GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLWINDOWPOS3FVPROC) (const GLfloat *v);
typedef void ( * PFNGLWINDOWPOS3IPROC) (GLint x, GLint y, GLint z);
typedef void ( * PFNGLWINDOWPOS3IVPROC) (const GLint *v);
typedef void ( * PFNGLWINDOWPOS3SPROC) (GLshort x, GLshort y, GLshort z);
typedef void ( * PFNGLWINDOWPOS3SVPROC) (const GLshort *v);





__attribute__((visibility("default"))) void glGenQueries (GLsizei, GLuint *);
__attribute__((visibility("default"))) void glDeleteQueries (GLsizei, const GLuint *);
__attribute__((visibility("default"))) GLboolean glIsQuery (GLuint);
__attribute__((visibility("default"))) void glBeginQuery (GLenum, GLuint);
__attribute__((visibility("default"))) void glEndQuery (GLenum);
__attribute__((visibility("default"))) void glGetQueryiv (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetQueryObjectiv (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetQueryObjectuiv (GLuint, GLenum, GLuint *);
__attribute__((visibility("default"))) void glBindBuffer (GLenum, GLuint);
__attribute__((visibility("default"))) void glDeleteBuffers (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenBuffers (GLsizei, GLuint *);
__attribute__((visibility("default"))) GLboolean glIsBuffer (GLuint);
__attribute__((visibility("default"))) void glBufferData (GLenum, GLsizeiptr, const GLvoid *, GLenum);
__attribute__((visibility("default"))) void glBufferSubData (GLenum, GLintptr, GLsizeiptr, const GLvoid *);
__attribute__((visibility("default"))) void glGetBufferSubData (GLenum, GLintptr, GLsizeiptr, GLvoid *);
__attribute__((visibility("default"))) GLvoid* glMapBuffer (GLenum, GLenum);
__attribute__((visibility("default"))) GLboolean glUnmapBuffer (GLenum);
__attribute__((visibility("default"))) void glGetBufferParameteriv (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetBufferPointerv (GLenum, GLenum, GLvoid* *);

typedef void ( * PFNGLGENQUERIESPROC) (GLsizei n, GLuint *ids);
typedef void ( * PFNGLDELETEQUERIESPROC) (GLsizei n, const GLuint *ids);
typedef GLboolean ( * PFNGLISQUERYPROC) (GLuint id);
typedef void ( * PFNGLBEGINQUERYPROC) (GLenum target, GLuint id);
typedef void ( * PFNGLENDQUERYPROC) (GLenum target);
typedef void ( * PFNGLGETQUERYIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETQUERYOBJECTIVPROC) (GLuint id, GLenum pname, GLint *params);
typedef void ( * PFNGLGETQUERYOBJECTUIVPROC) (GLuint id, GLenum pname, GLuint *params);
typedef void ( * PFNGLBINDBUFFERPROC) (GLenum target, GLuint buffer);
typedef void ( * PFNGLDELETEBUFFERSPROC) (GLsizei n, const GLuint *buffers);
typedef void ( * PFNGLGENBUFFERSPROC) (GLsizei n, GLuint *buffers);
typedef GLboolean ( * PFNGLISBUFFERPROC) (GLuint buffer);
typedef void ( * PFNGLBUFFERDATAPROC) (GLenum target, GLsizeiptr size, const GLvoid *data, GLenum usage);
typedef void ( * PFNGLBUFFERSUBDATAPROC) (GLenum target, GLintptr offset, GLsizeiptr size, const GLvoid *data);
typedef void ( * PFNGLGETBUFFERSUBDATAPROC) (GLenum target, GLintptr offset, GLsizeiptr size, GLvoid *data);
typedef GLvoid* ( * PFNGLMAPBUFFERPROC) (GLenum target, GLenum access);
typedef GLboolean ( * PFNGLUNMAPBUFFERPROC) (GLenum target);
typedef void ( * PFNGLGETBUFFERPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETBUFFERPOINTERVPROC) (GLenum target, GLenum pname, GLvoid* *params);





__attribute__((visibility("default"))) void glBlendEquationSeparate (GLenum, GLenum);
__attribute__((visibility("default"))) void glDrawBuffers (GLsizei, const GLenum *);
__attribute__((visibility("default"))) void glStencilOpSeparate (GLenum, GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) void glStencilFuncSeparate (GLenum, GLenum, GLint, GLuint);
__attribute__((visibility("default"))) void glStencilMaskSeparate (GLenum, GLuint);
__attribute__((visibility("default"))) void glAttachShader (GLuint, GLuint);
__attribute__((visibility("default"))) void glBindAttribLocation (GLuint, GLuint, const GLchar *);
__attribute__((visibility("default"))) void glCompileShader (GLuint);
__attribute__((visibility("default"))) GLuint glCreateProgram (void);
__attribute__((visibility("default"))) GLuint glCreateShader (GLenum);
__attribute__((visibility("default"))) void glDeleteProgram (GLuint);
__attribute__((visibility("default"))) void glDeleteShader (GLuint);
__attribute__((visibility("default"))) void glDetachShader (GLuint, GLuint);
__attribute__((visibility("default"))) void glDisableVertexAttribArray (GLuint);
__attribute__((visibility("default"))) void glEnableVertexAttribArray (GLuint);
__attribute__((visibility("default"))) void glGetActiveAttrib (GLuint, GLuint, GLsizei, GLsizei *, GLint *, GLenum *, GLchar *);
__attribute__((visibility("default"))) void glGetActiveUniform (GLuint, GLuint, GLsizei, GLsizei *, GLint *, GLenum *, GLchar *);
__attribute__((visibility("default"))) void glGetAttachedShaders (GLuint, GLsizei, GLsizei *, GLuint *);
__attribute__((visibility("default"))) GLint glGetAttribLocation (GLuint, const GLchar *);
__attribute__((visibility("default"))) void glGetProgramiv (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetProgramInfoLog (GLuint, GLsizei, GLsizei *, GLchar *);
__attribute__((visibility("default"))) void glGetShaderiv (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetShaderInfoLog (GLuint, GLsizei, GLsizei *, GLchar *);
__attribute__((visibility("default"))) void glGetShaderSource (GLuint, GLsizei, GLsizei *, GLchar *);
__attribute__((visibility("default"))) GLint glGetUniformLocation (GLuint, const GLchar *);
__attribute__((visibility("default"))) void glGetUniformfv (GLuint, GLint, GLfloat *);
__attribute__((visibility("default"))) void glGetUniformiv (GLuint, GLint, GLint *);
__attribute__((visibility("default"))) void glGetVertexAttribdv (GLuint, GLenum, GLdouble *);
__attribute__((visibility("default"))) void glGetVertexAttribfv (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetVertexAttribiv (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetVertexAttribPointerv (GLuint, GLenum, GLvoid* *);
__attribute__((visibility("default"))) GLboolean glIsProgram (GLuint);
__attribute__((visibility("default"))) GLboolean glIsShader (GLuint);
__attribute__((visibility("default"))) void glLinkProgram (GLuint);
__attribute__((visibility("default"))) void glShaderSource (GLuint, GLsizei, const GLchar* *, const GLint *);
__attribute__((visibility("default"))) void glUseProgram (GLuint);
__attribute__((visibility("default"))) void glUniform1f (GLint, GLfloat);
__attribute__((visibility("default"))) void glUniform2f (GLint, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glUniform3f (GLint, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glUniform4f (GLint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glUniform1i (GLint, GLint);
__attribute__((visibility("default"))) void glUniform2i (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glUniform3i (GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glUniform4i (GLint, GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glUniform1fv (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform2fv (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform3fv (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform4fv (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform1iv (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniform2iv (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniform3iv (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniform4iv (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniformMatrix2fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix3fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix4fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glValidateProgram (GLuint);
__attribute__((visibility("default"))) void glVertexAttrib1d (GLuint, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib1dv (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib1f (GLuint, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib1fv (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib1s (GLuint, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib1sv (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib2d (GLuint, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib2dv (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib2f (GLuint, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib2fv (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib2s (GLuint, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib2sv (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib3d (GLuint, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib3dv (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib3f (GLuint, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib3fv (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib3s (GLuint, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib3sv (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4Nbv (GLuint, const GLbyte *);
__attribute__((visibility("default"))) void glVertexAttrib4Niv (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttrib4Nsv (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4Nub (GLuint, GLubyte, GLubyte, GLubyte, GLubyte);
__attribute__((visibility("default"))) void glVertexAttrib4Nubv (GLuint, const GLubyte *);
__attribute__((visibility("default"))) void glVertexAttrib4Nuiv (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttrib4Nusv (GLuint, const GLushort *);
__attribute__((visibility("default"))) void glVertexAttrib4bv (GLuint, const GLbyte *);
__attribute__((visibility("default"))) void glVertexAttrib4d (GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib4dv (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib4f (GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib4fv (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib4iv (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttrib4s (GLuint, GLshort, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib4sv (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4ubv (GLuint, const GLubyte *);
__attribute__((visibility("default"))) void glVertexAttrib4uiv (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttrib4usv (GLuint, const GLushort *);
__attribute__((visibility("default"))) void glVertexAttribPointer (GLuint, GLint, GLenum, GLboolean, GLsizei, const GLvoid *);

typedef void ( * PFNGLBLENDEQUATIONSEPARATEPROC) (GLenum modeRGB, GLenum modeAlpha);
typedef void ( * PFNGLDRAWBUFFERSPROC) (GLsizei n, const GLenum *bufs);
typedef void ( * PFNGLSTENCILOPSEPARATEPROC) (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
typedef void ( * PFNGLSTENCILFUNCSEPARATEPROC) (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);
typedef void ( * PFNGLSTENCILMASKSEPARATEPROC) (GLenum face, GLuint mask);
typedef void ( * PFNGLATTACHSHADERPROC) (GLuint program, GLuint shader);
typedef void ( * PFNGLBINDATTRIBLOCATIONPROC) (GLuint program, GLuint index, const GLchar *name);
typedef void ( * PFNGLCOMPILESHADERPROC) (GLuint shader);
typedef GLuint ( * PFNGLCREATEPROGRAMPROC) (void);
typedef GLuint ( * PFNGLCREATESHADERPROC) (GLenum type);
typedef void ( * PFNGLDELETEPROGRAMPROC) (GLuint program);
typedef void ( * PFNGLDELETESHADERPROC) (GLuint shader);
typedef void ( * PFNGLDETACHSHADERPROC) (GLuint program, GLuint shader);
typedef void ( * PFNGLDISABLEVERTEXATTRIBARRAYPROC) (GLuint index);
typedef void ( * PFNGLENABLEVERTEXATTRIBARRAYPROC) (GLuint index);
typedef void ( * PFNGLGETACTIVEATTRIBPROC) (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
typedef void ( * PFNGLGETACTIVEUNIFORMPROC) (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name);
typedef void ( * PFNGLGETATTACHEDSHADERSPROC) (GLuint program, GLsizei maxCount, GLsizei *count, GLuint *obj);
typedef GLint ( * PFNGLGETATTRIBLOCATIONPROC) (GLuint program, const GLchar *name);
typedef void ( * PFNGLGETPROGRAMIVPROC) (GLuint program, GLenum pname, GLint *params);
typedef void ( * PFNGLGETPROGRAMINFOLOGPROC) (GLuint program, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
typedef void ( * PFNGLGETSHADERIVPROC) (GLuint shader, GLenum pname, GLint *params);
typedef void ( * PFNGLGETSHADERINFOLOGPROC) (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *infoLog);
typedef void ( * PFNGLGETSHADERSOURCEPROC) (GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source);
typedef GLint ( * PFNGLGETUNIFORMLOCATIONPROC) (GLuint program, const GLchar *name);
typedef void ( * PFNGLGETUNIFORMFVPROC) (GLuint program, GLint location, GLfloat *params);
typedef void ( * PFNGLGETUNIFORMIVPROC) (GLuint program, GLint location, GLint *params);
typedef void ( * PFNGLGETVERTEXATTRIBDVPROC) (GLuint index, GLenum pname, GLdouble *params);
typedef void ( * PFNGLGETVERTEXATTRIBFVPROC) (GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETVERTEXATTRIBIVPROC) (GLuint index, GLenum pname, GLint *params);
typedef void ( * PFNGLGETVERTEXATTRIBPOINTERVPROC) (GLuint index, GLenum pname, GLvoid* *pointer);
typedef GLboolean ( * PFNGLISPROGRAMPROC) (GLuint program);
typedef GLboolean ( * PFNGLISSHADERPROC) (GLuint shader);
typedef void ( * PFNGLLINKPROGRAMPROC) (GLuint program);
typedef void ( * PFNGLSHADERSOURCEPROC) (GLuint shader, GLsizei count, const GLchar* *string, const GLint *length);
typedef void ( * PFNGLUSEPROGRAMPROC) (GLuint program);
typedef void ( * PFNGLUNIFORM1FPROC) (GLint location, GLfloat v0);
typedef void ( * PFNGLUNIFORM2FPROC) (GLint location, GLfloat v0, GLfloat v1);
typedef void ( * PFNGLUNIFORM3FPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
typedef void ( * PFNGLUNIFORM4FPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
typedef void ( * PFNGLUNIFORM1IPROC) (GLint location, GLint v0);
typedef void ( * PFNGLUNIFORM2IPROC) (GLint location, GLint v0, GLint v1);
typedef void ( * PFNGLUNIFORM3IPROC) (GLint location, GLint v0, GLint v1, GLint v2);
typedef void ( * PFNGLUNIFORM4IPROC) (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
typedef void ( * PFNGLUNIFORM1FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM2FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM3FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM4FVPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM1IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORM2IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORM3IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORM4IVPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORMMATRIX2FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX3FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX4FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLVALIDATEPROGRAMPROC) (GLuint program);
typedef void ( * PFNGLVERTEXATTRIB1DPROC) (GLuint index, GLdouble x);
typedef void ( * PFNGLVERTEXATTRIB1DVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB1FPROC) (GLuint index, GLfloat x);
typedef void ( * PFNGLVERTEXATTRIB1FVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB1SPROC) (GLuint index, GLshort x);
typedef void ( * PFNGLVERTEXATTRIB1SVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB2DPROC) (GLuint index, GLdouble x, GLdouble y);
typedef void ( * PFNGLVERTEXATTRIB2DVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB2FPROC) (GLuint index, GLfloat x, GLfloat y);
typedef void ( * PFNGLVERTEXATTRIB2FVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB2SPROC) (GLuint index, GLshort x, GLshort y);
typedef void ( * PFNGLVERTEXATTRIB2SVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB3DPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void ( * PFNGLVERTEXATTRIB3DVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB3FPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLVERTEXATTRIB3FVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB3SPROC) (GLuint index, GLshort x, GLshort y, GLshort z);
typedef void ( * PFNGLVERTEXATTRIB3SVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4NBVPROC) (GLuint index, const GLbyte *v);
typedef void ( * PFNGLVERTEXATTRIB4NIVPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIB4NSVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4NUBPROC) (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
typedef void ( * PFNGLVERTEXATTRIB4NUBVPROC) (GLuint index, const GLubyte *v);
typedef void ( * PFNGLVERTEXATTRIB4NUIVPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIB4NUSVPROC) (GLuint index, const GLushort *v);
typedef void ( * PFNGLVERTEXATTRIB4BVPROC) (GLuint index, const GLbyte *v);
typedef void ( * PFNGLVERTEXATTRIB4DPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLVERTEXATTRIB4DVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB4FPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLVERTEXATTRIB4FVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB4IVPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIB4SPROC) (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void ( * PFNGLVERTEXATTRIB4SVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4UBVPROC) (GLuint index, const GLubyte *v);
typedef void ( * PFNGLVERTEXATTRIB4UIVPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIB4USVPROC) (GLuint index, const GLushort *v);
typedef void ( * PFNGLVERTEXATTRIBPOINTERPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid *pointer);





__attribute__((visibility("default"))) void glUniformMatrix2x3fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix3x2fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix2x4fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix4x2fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix3x4fv (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix4x3fv (GLint, GLsizei, GLboolean, const GLfloat *);

typedef void ( * PFNGLUNIFORMMATRIX2X3FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX3X2FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX2X4FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX4X2FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX3X4FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX4X3FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
# 4072 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glLoadTransposeMatrixfARB (const GLfloat *);
__attribute__((visibility("default"))) void glLoadTransposeMatrixdARB (const GLdouble *);
__attribute__((visibility("default"))) void glMultTransposeMatrixfARB (const GLfloat *);
__attribute__((visibility("default"))) void glMultTransposeMatrixdARB (const GLdouble *);

typedef void ( * PFNGLLOADTRANSPOSEMATRIXFARBPROC) (const GLfloat *m);
typedef void ( * PFNGLLOADTRANSPOSEMATRIXDARBPROC) (const GLdouble *m);
typedef void ( * PFNGLMULTTRANSPOSEMATRIXFARBPROC) (const GLfloat *m);
typedef void ( * PFNGLMULTTRANSPOSEMATRIXDARBPROC) (const GLdouble *m);





__attribute__((visibility("default"))) void glSampleCoverageARB (GLclampf, GLboolean);

typedef void ( * PFNGLSAMPLECOVERAGEARBPROC) (GLclampf value, GLboolean invert);
# 4102 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glCompressedTexImage3DARB (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexImage2DARB (GLenum, GLint, GLenum, GLsizei, GLsizei, GLint, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexImage1DARB (GLenum, GLint, GLenum, GLsizei, GLint, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexSubImage3DARB (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexSubImage2DARB (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glCompressedTexSubImage1DARB (GLenum, GLint, GLint, GLsizei, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glGetCompressedTexImageARB (GLenum, GLint, GLvoid *);

typedef void ( * PFNGLCOMPRESSEDTEXIMAGE3DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE2DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE1DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLGETCOMPRESSEDTEXIMAGEARBPROC) (GLenum target, GLint level, GLvoid *img);
# 4126 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glPointParameterfARB (GLenum, GLfloat);
__attribute__((visibility("default"))) void glPointParameterfvARB (GLenum, const GLfloat *);

typedef void ( * PFNGLPOINTPARAMETERFARBPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPOINTPARAMETERFVARBPROC) (GLenum pname, const GLfloat *params);





__attribute__((visibility("default"))) void glWeightbvARB (GLint, const GLbyte *);
__attribute__((visibility("default"))) void glWeightsvARB (GLint, const GLshort *);
__attribute__((visibility("default"))) void glWeightivARB (GLint, const GLint *);
__attribute__((visibility("default"))) void glWeightfvARB (GLint, const GLfloat *);
__attribute__((visibility("default"))) void glWeightdvARB (GLint, const GLdouble *);
__attribute__((visibility("default"))) void glWeightubvARB (GLint, const GLubyte *);
__attribute__((visibility("default"))) void glWeightusvARB (GLint, const GLushort *);
__attribute__((visibility("default"))) void glWeightuivARB (GLint, const GLuint *);
__attribute__((visibility("default"))) void glWeightPointerARB (GLint, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glVertexBlendARB (GLint);

typedef void ( * PFNGLWEIGHTBVARBPROC) (GLint size, const GLbyte *weights);
typedef void ( * PFNGLWEIGHTSVARBPROC) (GLint size, const GLshort *weights);
typedef void ( * PFNGLWEIGHTIVARBPROC) (GLint size, const GLint *weights);
typedef void ( * PFNGLWEIGHTFVARBPROC) (GLint size, const GLfloat *weights);
typedef void ( * PFNGLWEIGHTDVARBPROC) (GLint size, const GLdouble *weights);
typedef void ( * PFNGLWEIGHTUBVARBPROC) (GLint size, const GLubyte *weights);
typedef void ( * PFNGLWEIGHTUSVARBPROC) (GLint size, const GLushort *weights);
typedef void ( * PFNGLWEIGHTUIVARBPROC) (GLint size, const GLuint *weights);
typedef void ( * PFNGLWEIGHTPOINTERARBPROC) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void ( * PFNGLVERTEXBLENDARBPROC) (GLint count);





__attribute__((visibility("default"))) void glCurrentPaletteMatrixARB (GLint);
__attribute__((visibility("default"))) void glMatrixIndexubvARB (GLint, const GLubyte *);
__attribute__((visibility("default"))) void glMatrixIndexusvARB (GLint, const GLushort *);
__attribute__((visibility("default"))) void glMatrixIndexuivARB (GLint, const GLuint *);
__attribute__((visibility("default"))) void glMatrixIndexPointerARB (GLint, GLenum, GLsizei, const GLvoid *);

typedef void ( * PFNGLCURRENTPALETTEMATRIXARBPROC) (GLint index);
typedef void ( * PFNGLMATRIXINDEXUBVARBPROC) (GLint size, const GLubyte *indices);
typedef void ( * PFNGLMATRIXINDEXUSVARBPROC) (GLint size, const GLushort *indices);
typedef void ( * PFNGLMATRIXINDEXUIVARBPROC) (GLint size, const GLuint *indices);
typedef void ( * PFNGLMATRIXINDEXPOINTERARBPROC) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
# 4206 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glWindowPos2dARB (GLdouble, GLdouble);
__attribute__((visibility("default"))) void glWindowPos2dvARB (const GLdouble *);
__attribute__((visibility("default"))) void glWindowPos2fARB (GLfloat, GLfloat);
__attribute__((visibility("default"))) void glWindowPos2fvARB (const GLfloat *);
__attribute__((visibility("default"))) void glWindowPos2iARB (GLint, GLint);
__attribute__((visibility("default"))) void glWindowPos2ivARB (const GLint *);
__attribute__((visibility("default"))) void glWindowPos2sARB (GLshort, GLshort);
__attribute__((visibility("default"))) void glWindowPos2svARB (const GLshort *);
__attribute__((visibility("default"))) void glWindowPos3dARB (GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glWindowPos3dvARB (const GLdouble *);
__attribute__((visibility("default"))) void glWindowPos3fARB (GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glWindowPos3fvARB (const GLfloat *);
__attribute__((visibility("default"))) void glWindowPos3iARB (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glWindowPos3ivARB (const GLint *);
__attribute__((visibility("default"))) void glWindowPos3sARB (GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glWindowPos3svARB (const GLshort *);

typedef void ( * PFNGLWINDOWPOS2DARBPROC) (GLdouble x, GLdouble y);
typedef void ( * PFNGLWINDOWPOS2DVARBPROC) (const GLdouble *v);
typedef void ( * PFNGLWINDOWPOS2FARBPROC) (GLfloat x, GLfloat y);
typedef void ( * PFNGLWINDOWPOS2FVARBPROC) (const GLfloat *v);
typedef void ( * PFNGLWINDOWPOS2IARBPROC) (GLint x, GLint y);
typedef void ( * PFNGLWINDOWPOS2IVARBPROC) (const GLint *v);
typedef void ( * PFNGLWINDOWPOS2SARBPROC) (GLshort x, GLshort y);
typedef void ( * PFNGLWINDOWPOS2SVARBPROC) (const GLshort *v);
typedef void ( * PFNGLWINDOWPOS3DARBPROC) (GLdouble x, GLdouble y, GLdouble z);
typedef void ( * PFNGLWINDOWPOS3DVARBPROC) (const GLdouble *v);
typedef void ( * PFNGLWINDOWPOS3FARBPROC) (GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLWINDOWPOS3FVARBPROC) (const GLfloat *v);
typedef void ( * PFNGLWINDOWPOS3IARBPROC) (GLint x, GLint y, GLint z);
typedef void ( * PFNGLWINDOWPOS3IVARBPROC) (const GLint *v);
typedef void ( * PFNGLWINDOWPOS3SARBPROC) (GLshort x, GLshort y, GLshort z);
typedef void ( * PFNGLWINDOWPOS3SVARBPROC) (const GLshort *v);





__attribute__((visibility("default"))) void glVertexAttrib1dARB (GLuint, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib1dvARB (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib1fARB (GLuint, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib1fvARB (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib1sARB (GLuint, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib1svARB (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib2dARB (GLuint, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib2dvARB (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib2fARB (GLuint, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib2fvARB (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib2sARB (GLuint, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib2svARB (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib3dARB (GLuint, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib3dvARB (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib3fARB (GLuint, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib3fvARB (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib3sARB (GLuint, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib3svARB (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4NbvARB (GLuint, const GLbyte *);
__attribute__((visibility("default"))) void glVertexAttrib4NivARB (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttrib4NsvARB (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4NubARB (GLuint, GLubyte, GLubyte, GLubyte, GLubyte);
__attribute__((visibility("default"))) void glVertexAttrib4NubvARB (GLuint, const GLubyte *);
__attribute__((visibility("default"))) void glVertexAttrib4NuivARB (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttrib4NusvARB (GLuint, const GLushort *);
__attribute__((visibility("default"))) void glVertexAttrib4bvARB (GLuint, const GLbyte *);
__attribute__((visibility("default"))) void glVertexAttrib4dARB (GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib4dvARB (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib4fARB (GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib4fvARB (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib4ivARB (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttrib4sARB (GLuint, GLshort, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib4svARB (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4ubvARB (GLuint, const GLubyte *);
__attribute__((visibility("default"))) void glVertexAttrib4uivARB (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttrib4usvARB (GLuint, const GLushort *);
__attribute__((visibility("default"))) void glVertexAttribPointerARB (GLuint, GLint, GLenum, GLboolean, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glEnableVertexAttribArrayARB (GLuint);
__attribute__((visibility("default"))) void glDisableVertexAttribArrayARB (GLuint);
__attribute__((visibility("default"))) void glProgramStringARB (GLenum, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glBindProgramARB (GLenum, GLuint);
__attribute__((visibility("default"))) void glDeleteProgramsARB (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenProgramsARB (GLsizei, GLuint *);
__attribute__((visibility("default"))) void glProgramEnvParameter4dARB (GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glProgramEnvParameter4dvARB (GLenum, GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glProgramEnvParameter4fARB (GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glProgramEnvParameter4fvARB (GLenum, GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glProgramLocalParameter4dARB (GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glProgramLocalParameter4dvARB (GLenum, GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glProgramLocalParameter4fARB (GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glProgramLocalParameter4fvARB (GLenum, GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glGetProgramEnvParameterdvARB (GLenum, GLuint, GLdouble *);
__attribute__((visibility("default"))) void glGetProgramEnvParameterfvARB (GLenum, GLuint, GLfloat *);
__attribute__((visibility("default"))) void glGetProgramLocalParameterdvARB (GLenum, GLuint, GLdouble *);
__attribute__((visibility("default"))) void glGetProgramLocalParameterfvARB (GLenum, GLuint, GLfloat *);
__attribute__((visibility("default"))) void glGetProgramivARB (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetProgramStringARB (GLenum, GLenum, GLvoid *);
__attribute__((visibility("default"))) void glGetVertexAttribdvARB (GLuint, GLenum, GLdouble *);
__attribute__((visibility("default"))) void glGetVertexAttribfvARB (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetVertexAttribivARB (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetVertexAttribPointervARB (GLuint, GLenum, GLvoid* *);
__attribute__((visibility("default"))) GLboolean glIsProgramARB (GLuint);

typedef void ( * PFNGLVERTEXATTRIB1DARBPROC) (GLuint index, GLdouble x);
typedef void ( * PFNGLVERTEXATTRIB1DVARBPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB1FARBPROC) (GLuint index, GLfloat x);
typedef void ( * PFNGLVERTEXATTRIB1FVARBPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB1SARBPROC) (GLuint index, GLshort x);
typedef void ( * PFNGLVERTEXATTRIB1SVARBPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB2DARBPROC) (GLuint index, GLdouble x, GLdouble y);
typedef void ( * PFNGLVERTEXATTRIB2DVARBPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB2FARBPROC) (GLuint index, GLfloat x, GLfloat y);
typedef void ( * PFNGLVERTEXATTRIB2FVARBPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB2SARBPROC) (GLuint index, GLshort x, GLshort y);
typedef void ( * PFNGLVERTEXATTRIB2SVARBPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB3DARBPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void ( * PFNGLVERTEXATTRIB3DVARBPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB3FARBPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLVERTEXATTRIB3FVARBPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB3SARBPROC) (GLuint index, GLshort x, GLshort y, GLshort z);
typedef void ( * PFNGLVERTEXATTRIB3SVARBPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4NBVARBPROC) (GLuint index, const GLbyte *v);
typedef void ( * PFNGLVERTEXATTRIB4NIVARBPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIB4NSVARBPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4NUBARBPROC) (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
typedef void ( * PFNGLVERTEXATTRIB4NUBVARBPROC) (GLuint index, const GLubyte *v);
typedef void ( * PFNGLVERTEXATTRIB4NUIVARBPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIB4NUSVARBPROC) (GLuint index, const GLushort *v);
typedef void ( * PFNGLVERTEXATTRIB4BVARBPROC) (GLuint index, const GLbyte *v);
typedef void ( * PFNGLVERTEXATTRIB4DARBPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLVERTEXATTRIB4DVARBPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB4FARBPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLVERTEXATTRIB4FVARBPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB4IVARBPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIB4SARBPROC) (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void ( * PFNGLVERTEXATTRIB4SVARBPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4UBVARBPROC) (GLuint index, const GLubyte *v);
typedef void ( * PFNGLVERTEXATTRIB4UIVARBPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIB4USVARBPROC) (GLuint index, const GLushort *v);
typedef void ( * PFNGLVERTEXATTRIBPOINTERARBPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const GLvoid *pointer);
typedef void ( * PFNGLENABLEVERTEXATTRIBARRAYARBPROC) (GLuint index);
typedef void ( * PFNGLDISABLEVERTEXATTRIBARRAYARBPROC) (GLuint index);
typedef void ( * PFNGLPROGRAMSTRINGARBPROC) (GLenum target, GLenum format, GLsizei len, const GLvoid *string);
typedef void ( * PFNGLBINDPROGRAMARBPROC) (GLenum target, GLuint program);
typedef void ( * PFNGLDELETEPROGRAMSARBPROC) (GLsizei n, const GLuint *programs);
typedef void ( * PFNGLGENPROGRAMSARBPROC) (GLsizei n, GLuint *programs);
typedef void ( * PFNGLPROGRAMENVPARAMETER4DARBPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLPROGRAMENVPARAMETER4DVARBPROC) (GLenum target, GLuint index, const GLdouble *params);
typedef void ( * PFNGLPROGRAMENVPARAMETER4FARBPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLPROGRAMENVPARAMETER4FVARBPROC) (GLenum target, GLuint index, const GLfloat *params);
typedef void ( * PFNGLPROGRAMLOCALPARAMETER4DARBPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLPROGRAMLOCALPARAMETER4DVARBPROC) (GLenum target, GLuint index, const GLdouble *params);
typedef void ( * PFNGLPROGRAMLOCALPARAMETER4FARBPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLPROGRAMLOCALPARAMETER4FVARBPROC) (GLenum target, GLuint index, const GLfloat *params);
typedef void ( * PFNGLGETPROGRAMENVPARAMETERDVARBPROC) (GLenum target, GLuint index, GLdouble *params);
typedef void ( * PFNGLGETPROGRAMENVPARAMETERFVARBPROC) (GLenum target, GLuint index, GLfloat *params);
typedef void ( * PFNGLGETPROGRAMLOCALPARAMETERDVARBPROC) (GLenum target, GLuint index, GLdouble *params);
typedef void ( * PFNGLGETPROGRAMLOCALPARAMETERFVARBPROC) (GLenum target, GLuint index, GLfloat *params);
typedef void ( * PFNGLGETPROGRAMIVARBPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETPROGRAMSTRINGARBPROC) (GLenum target, GLenum pname, GLvoid *string);
typedef void ( * PFNGLGETVERTEXATTRIBDVARBPROC) (GLuint index, GLenum pname, GLdouble *params);
typedef void ( * PFNGLGETVERTEXATTRIBFVARBPROC) (GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETVERTEXATTRIBIVARBPROC) (GLuint index, GLenum pname, GLint *params);
typedef void ( * PFNGLGETVERTEXATTRIBPOINTERVARBPROC) (GLuint index, GLenum pname, GLvoid* *pointer);
typedef GLboolean ( * PFNGLISPROGRAMARBPROC) (GLuint program);
# 4379 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glBindBufferARB (GLenum, GLuint);
__attribute__((visibility("default"))) void glDeleteBuffersARB (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenBuffersARB (GLsizei, GLuint *);
__attribute__((visibility("default"))) GLboolean glIsBufferARB (GLuint);
__attribute__((visibility("default"))) void glBufferDataARB (GLenum, GLsizeiptrARB, const GLvoid *, GLenum);
__attribute__((visibility("default"))) void glBufferSubDataARB (GLenum, GLintptrARB, GLsizeiptrARB, const GLvoid *);
__attribute__((visibility("default"))) void glGetBufferSubDataARB (GLenum, GLintptrARB, GLsizeiptrARB, GLvoid *);
__attribute__((visibility("default"))) GLvoid* glMapBufferARB (GLenum, GLenum);
__attribute__((visibility("default"))) GLboolean glUnmapBufferARB (GLenum);
__attribute__((visibility("default"))) void glGetBufferParameterivARB (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetBufferPointervARB (GLenum, GLenum, GLvoid* *);

typedef void ( * PFNGLBINDBUFFERARBPROC) (GLenum target, GLuint buffer);
typedef void ( * PFNGLDELETEBUFFERSARBPROC) (GLsizei n, const GLuint *buffers);
typedef void ( * PFNGLGENBUFFERSARBPROC) (GLsizei n, GLuint *buffers);
typedef GLboolean ( * PFNGLISBUFFERARBPROC) (GLuint buffer);
typedef void ( * PFNGLBUFFERDATAARBPROC) (GLenum target, GLsizeiptrARB size, const GLvoid *data, GLenum usage);
typedef void ( * PFNGLBUFFERSUBDATAARBPROC) (GLenum target, GLintptrARB offset, GLsizeiptrARB size, const GLvoid *data);
typedef void ( * PFNGLGETBUFFERSUBDATAARBPROC) (GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid *data);
typedef GLvoid* ( * PFNGLMAPBUFFERARBPROC) (GLenum target, GLenum access);
typedef GLboolean ( * PFNGLUNMAPBUFFERARBPROC) (GLenum target);
typedef void ( * PFNGLGETBUFFERPARAMETERIVARBPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETBUFFERPOINTERVARBPROC) (GLenum target, GLenum pname, GLvoid* *params);





__attribute__((visibility("default"))) void glGenQueriesARB (GLsizei, GLuint *);
__attribute__((visibility("default"))) void glDeleteQueriesARB (GLsizei, const GLuint *);
__attribute__((visibility("default"))) GLboolean glIsQueryARB (GLuint);
__attribute__((visibility("default"))) void glBeginQueryARB (GLenum, GLuint);
__attribute__((visibility("default"))) void glEndQueryARB (GLenum);
__attribute__((visibility("default"))) void glGetQueryivARB (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetQueryObjectivARB (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetQueryObjectuivARB (GLuint, GLenum, GLuint *);

typedef void ( * PFNGLGENQUERIESARBPROC) (GLsizei n, GLuint *ids);
typedef void ( * PFNGLDELETEQUERIESARBPROC) (GLsizei n, const GLuint *ids);
typedef GLboolean ( * PFNGLISQUERYARBPROC) (GLuint id);
typedef void ( * PFNGLBEGINQUERYARBPROC) (GLenum target, GLuint id);
typedef void ( * PFNGLENDQUERYARBPROC) (GLenum target);
typedef void ( * PFNGLGETQUERYIVARBPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETQUERYOBJECTIVARBPROC) (GLuint id, GLenum pname, GLint *params);
typedef void ( * PFNGLGETQUERYOBJECTUIVARBPROC) (GLuint id, GLenum pname, GLuint *params);





__attribute__((visibility("default"))) void glDeleteObjectARB (GLhandleARB);
__attribute__((visibility("default"))) GLhandleARB glGetHandleARB (GLenum);
__attribute__((visibility("default"))) void glDetachObjectARB (GLhandleARB, GLhandleARB);
__attribute__((visibility("default"))) GLhandleARB glCreateShaderObjectARB (GLenum);
__attribute__((visibility("default"))) void glShaderSourceARB (GLhandleARB, GLsizei, const GLcharARB* *, const GLint *);
__attribute__((visibility("default"))) void glCompileShaderARB (GLhandleARB);
__attribute__((visibility("default"))) GLhandleARB glCreateProgramObjectARB (void);
__attribute__((visibility("default"))) void glAttachObjectARB (GLhandleARB, GLhandleARB);
__attribute__((visibility("default"))) void glLinkProgramARB (GLhandleARB);
__attribute__((visibility("default"))) void glUseProgramObjectARB (GLhandleARB);
__attribute__((visibility("default"))) void glValidateProgramARB (GLhandleARB);
__attribute__((visibility("default"))) void glUniform1fARB (GLint, GLfloat);
__attribute__((visibility("default"))) void glUniform2fARB (GLint, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glUniform3fARB (GLint, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glUniform4fARB (GLint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glUniform1iARB (GLint, GLint);
__attribute__((visibility("default"))) void glUniform2iARB (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glUniform3iARB (GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glUniform4iARB (GLint, GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glUniform1fvARB (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform2fvARB (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform3fvARB (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform4fvARB (GLint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glUniform1ivARB (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniform2ivARB (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniform3ivARB (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniform4ivARB (GLint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glUniformMatrix2fvARB (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix3fvARB (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glUniformMatrix4fvARB (GLint, GLsizei, GLboolean, const GLfloat *);
__attribute__((visibility("default"))) void glGetObjectParameterfvARB (GLhandleARB, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetObjectParameterivARB (GLhandleARB, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetInfoLogARB (GLhandleARB, GLsizei, GLsizei *, GLcharARB *);
__attribute__((visibility("default"))) void glGetAttachedObjectsARB (GLhandleARB, GLsizei, GLsizei *, GLhandleARB *);
__attribute__((visibility("default"))) GLint glGetUniformLocationARB (GLhandleARB, const GLcharARB *);
__attribute__((visibility("default"))) void glGetActiveUniformARB (GLhandleARB, GLuint, GLsizei, GLsizei *, GLint *, GLenum *, GLcharARB *);
__attribute__((visibility("default"))) void glGetUniformfvARB (GLhandleARB, GLint, GLfloat *);
__attribute__((visibility("default"))) void glGetUniformivARB (GLhandleARB, GLint, GLint *);
__attribute__((visibility("default"))) void glGetShaderSourceARB (GLhandleARB, GLsizei, GLsizei *, GLcharARB *);

typedef void ( * PFNGLDELETEOBJECTARBPROC) (GLhandleARB obj);
typedef GLhandleARB ( * PFNGLGETHANDLEARBPROC) (GLenum pname);
typedef void ( * PFNGLDETACHOBJECTARBPROC) (GLhandleARB containerObj, GLhandleARB attachedObj);
typedef GLhandleARB ( * PFNGLCREATESHADEROBJECTARBPROC) (GLenum shaderType);
typedef void ( * PFNGLSHADERSOURCEARBPROC) (GLhandleARB shaderObj, GLsizei count, const GLcharARB* *string, const GLint *length);
typedef void ( * PFNGLCOMPILESHADERARBPROC) (GLhandleARB shaderObj);
typedef GLhandleARB ( * PFNGLCREATEPROGRAMOBJECTARBPROC) (void);
typedef void ( * PFNGLATTACHOBJECTARBPROC) (GLhandleARB containerObj, GLhandleARB obj);
typedef void ( * PFNGLLINKPROGRAMARBPROC) (GLhandleARB programObj);
typedef void ( * PFNGLUSEPROGRAMOBJECTARBPROC) (GLhandleARB programObj);
typedef void ( * PFNGLVALIDATEPROGRAMARBPROC) (GLhandleARB programObj);
typedef void ( * PFNGLUNIFORM1FARBPROC) (GLint location, GLfloat v0);
typedef void ( * PFNGLUNIFORM2FARBPROC) (GLint location, GLfloat v0, GLfloat v1);
typedef void ( * PFNGLUNIFORM3FARBPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2);
typedef void ( * PFNGLUNIFORM4FARBPROC) (GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3);
typedef void ( * PFNGLUNIFORM1IARBPROC) (GLint location, GLint v0);
typedef void ( * PFNGLUNIFORM2IARBPROC) (GLint location, GLint v0, GLint v1);
typedef void ( * PFNGLUNIFORM3IARBPROC) (GLint location, GLint v0, GLint v1, GLint v2);
typedef void ( * PFNGLUNIFORM4IARBPROC) (GLint location, GLint v0, GLint v1, GLint v2, GLint v3);
typedef void ( * PFNGLUNIFORM1FVARBPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM2FVARBPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM3FVARBPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM4FVARBPROC) (GLint location, GLsizei count, const GLfloat *value);
typedef void ( * PFNGLUNIFORM1IVARBPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORM2IVARBPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORM3IVARBPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORM4IVARBPROC) (GLint location, GLsizei count, const GLint *value);
typedef void ( * PFNGLUNIFORMMATRIX2FVARBPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX3FVARBPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX4FVARBPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLGETOBJECTPARAMETERFVARBPROC) (GLhandleARB obj, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETOBJECTPARAMETERIVARBPROC) (GLhandleARB obj, GLenum pname, GLint *params);
typedef void ( * PFNGLGETINFOLOGARBPROC) (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *infoLog);
typedef void ( * PFNGLGETATTACHEDOBJECTSARBPROC) (GLhandleARB containerObj, GLsizei maxCount, GLsizei *count, GLhandleARB *obj);
typedef GLint ( * PFNGLGETUNIFORMLOCATIONARBPROC) (GLhandleARB programObj, const GLcharARB *name);
typedef void ( * PFNGLGETACTIVEUNIFORMARBPROC) (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
typedef void ( * PFNGLGETUNIFORMFVARBPROC) (GLhandleARB programObj, GLint location, GLfloat *params);
typedef void ( * PFNGLGETUNIFORMIVARBPROC) (GLhandleARB programObj, GLint location, GLint *params);
typedef void ( * PFNGLGETSHADERSOURCEARBPROC) (GLhandleARB obj, GLsizei maxLength, GLsizei *length, GLcharARB *source);





__attribute__((visibility("default"))) void glBindAttribLocationARB (GLhandleARB, GLuint, const GLcharARB *);
__attribute__((visibility("default"))) void glGetActiveAttribARB (GLhandleARB, GLuint, GLsizei, GLsizei *, GLint *, GLenum *, GLcharARB *);
__attribute__((visibility("default"))) GLint glGetAttribLocationARB (GLhandleARB, const GLcharARB *);

typedef void ( * PFNGLBINDATTRIBLOCATIONARBPROC) (GLhandleARB programObj, GLuint index, const GLcharARB *name);
typedef void ( * PFNGLGETACTIVEATTRIBARBPROC) (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
typedef GLint ( * PFNGLGETATTRIBLOCATIONARBPROC) (GLhandleARB programObj, const GLcharARB *name);
# 4545 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glDrawBuffersARB (GLsizei, const GLenum *);

typedef void ( * PFNGLDRAWBUFFERSARBPROC) (GLsizei n, const GLenum *bufs);
# 4557 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glClampColorARB (GLenum, GLenum);

typedef void ( * PFNGLCLAMPCOLORARBPROC) (GLenum target, GLenum clamp);
# 4581 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glBlendColorEXT (GLclampf, GLclampf, GLclampf, GLclampf);

typedef void ( * PFNGLBLENDCOLOREXTPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);





__attribute__((visibility("default"))) void glPolygonOffsetEXT (GLfloat, GLfloat);

typedef void ( * PFNGLPOLYGONOFFSETEXTPROC) (GLfloat factor, GLfloat bias);
# 4601 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glTexImage3DEXT (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glTexSubImage3DEXT (GLenum, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLenum, GLenum, const GLvoid *);

typedef void ( * PFNGLTEXIMAGE3DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);





__attribute__((visibility("default"))) void glGetTexFilterFuncSGIS (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glTexFilterFuncSGIS (GLenum, GLenum, GLsizei, const GLfloat *);

typedef void ( * PFNGLGETTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLfloat *weights);
typedef void ( * PFNGLTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);





__attribute__((visibility("default"))) void glTexSubImage1DEXT (GLenum, GLint, GLint, GLsizei, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glTexSubImage2DEXT (GLenum, GLint, GLint, GLint, GLsizei, GLsizei, GLenum, GLenum, const GLvoid *);

typedef void ( * PFNGLTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);





__attribute__((visibility("default"))) void glCopyTexImage1DEXT (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLint);
__attribute__((visibility("default"))) void glCopyTexImage2DEXT (GLenum, GLint, GLenum, GLint, GLint, GLsizei, GLsizei, GLint);
__attribute__((visibility("default"))) void glCopyTexSubImage1DEXT (GLenum, GLint, GLint, GLint, GLint, GLsizei);
__attribute__((visibility("default"))) void glCopyTexSubImage2DEXT (GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei);
__attribute__((visibility("default"))) void glCopyTexSubImage3DEXT (GLenum, GLint, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei);

typedef void ( * PFNGLCOPYTEXIMAGE1DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
typedef void ( * PFNGLCOPYTEXIMAGE2DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
typedef void ( * PFNGLCOPYTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLCOPYTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void ( * PFNGLCOPYTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);





__attribute__((visibility("default"))) void glGetHistogramEXT (GLenum, GLboolean, GLenum, GLenum, GLvoid *);
__attribute__((visibility("default"))) void glGetHistogramParameterfvEXT (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetHistogramParameterivEXT (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetMinmaxEXT (GLenum, GLboolean, GLenum, GLenum, GLvoid *);
__attribute__((visibility("default"))) void glGetMinmaxParameterfvEXT (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetMinmaxParameterivEXT (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glHistogramEXT (GLenum, GLsizei, GLenum, GLboolean);
__attribute__((visibility("default"))) void glMinmaxEXT (GLenum, GLenum, GLboolean);
__attribute__((visibility("default"))) void glResetHistogramEXT (GLenum);
__attribute__((visibility("default"))) void glResetMinmaxEXT (GLenum);

typedef void ( * PFNGLGETHISTOGRAMEXTPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
typedef void ( * PFNGLGETHISTOGRAMPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETHISTOGRAMPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETMINMAXEXTPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
typedef void ( * PFNGLGETMINMAXPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETMINMAXPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLHISTOGRAMEXTPROC) (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
typedef void ( * PFNGLMINMAXEXTPROC) (GLenum target, GLenum internalformat, GLboolean sink);
typedef void ( * PFNGLRESETHISTOGRAMEXTPROC) (GLenum target);
typedef void ( * PFNGLRESETMINMAXEXTPROC) (GLenum target);





__attribute__((visibility("default"))) void glConvolutionFilter1DEXT (GLenum, GLenum, GLsizei, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glConvolutionFilter2DEXT (GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glConvolutionParameterfEXT (GLenum, GLenum, GLfloat);
__attribute__((visibility("default"))) void glConvolutionParameterfvEXT (GLenum, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glConvolutionParameteriEXT (GLenum, GLenum, GLint);
__attribute__((visibility("default"))) void glConvolutionParameterivEXT (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glCopyConvolutionFilter1DEXT (GLenum, GLenum, GLint, GLint, GLsizei);
__attribute__((visibility("default"))) void glCopyConvolutionFilter2DEXT (GLenum, GLenum, GLint, GLint, GLsizei, GLsizei);
__attribute__((visibility("default"))) void glGetConvolutionFilterEXT (GLenum, GLenum, GLenum, GLvoid *);
__attribute__((visibility("default"))) void glGetConvolutionParameterfvEXT (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetConvolutionParameterivEXT (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetSeparableFilterEXT (GLenum, GLenum, GLenum, GLvoid *, GLvoid *, GLvoid *);
__attribute__((visibility("default"))) void glSeparableFilter2DEXT (GLenum, GLenum, GLsizei, GLsizei, GLenum, GLenum, const GLvoid *, const GLvoid *);

typedef void ( * PFNGLCONVOLUTIONFILTER1DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image);
typedef void ( * PFNGLCONVOLUTIONFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image);
typedef void ( * PFNGLCONVOLUTIONPARAMETERFEXTPROC) (GLenum target, GLenum pname, GLfloat params);
typedef void ( * PFNGLCONVOLUTIONPARAMETERFVEXTPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLCONVOLUTIONPARAMETERIEXTPROC) (GLenum target, GLenum pname, GLint params);
typedef void ( * PFNGLCONVOLUTIONPARAMETERIVEXTPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLCOPYCONVOLUTIONFILTER1DEXTPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLCOPYCONVOLUTIONFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void ( * PFNGLGETCONVOLUTIONFILTEREXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *image);
typedef void ( * PFNGLGETCONVOLUTIONPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETCONVOLUTIONPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETSEPARABLEFILTEREXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
typedef void ( * PFNGLSEPARABLEFILTER2DEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column);
# 4709 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glColorTableSGI (GLenum, GLenum, GLsizei, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glColorTableParameterfvSGI (GLenum, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glColorTableParameterivSGI (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glCopyColorTableSGI (GLenum, GLenum, GLint, GLint, GLsizei);
__attribute__((visibility("default"))) void glGetColorTableSGI (GLenum, GLenum, GLenum, GLvoid *);
__attribute__((visibility("default"))) void glGetColorTableParameterfvSGI (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetColorTableParameterivSGI (GLenum, GLenum, GLint *);

typedef void ( * PFNGLCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
typedef void ( * PFNGLCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLCOPYCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLGETCOLORTABLESGIPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, GLint *params);





__attribute__((visibility("default"))) void glPixelTexGenSGIX (GLenum);

typedef void ( * PFNGLPIXELTEXGENSGIXPROC) (GLenum mode);





__attribute__((visibility("default"))) void glPixelTexGenParameteriSGIS (GLenum, GLint);
__attribute__((visibility("default"))) void glPixelTexGenParameterivSGIS (GLenum, const GLint *);
__attribute__((visibility("default"))) void glPixelTexGenParameterfSGIS (GLenum, GLfloat);
__attribute__((visibility("default"))) void glPixelTexGenParameterfvSGIS (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glGetPixelTexGenParameterivSGIS (GLenum, GLint *);
__attribute__((visibility("default"))) void glGetPixelTexGenParameterfvSGIS (GLenum, GLfloat *);

typedef void ( * PFNGLPIXELTEXGENPARAMETERISGISPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, const GLint *params);
typedef void ( * PFNGLPIXELTEXGENPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, GLint *params);
typedef void ( * PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);





__attribute__((visibility("default"))) void glTexImage4DSGIS (GLenum, GLint, GLenum, GLsizei, GLsizei, GLsizei, GLsizei, GLint, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glTexSubImage4DSGIS (GLenum, GLint, GLint, GLint, GLint, GLint, GLsizei, GLsizei, GLsizei, GLsizei, GLenum, GLenum, const GLvoid *);

typedef void ( * PFNGLTEXIMAGE4DSGISPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE4DSGISPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const GLvoid *pixels);
# 4773 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) GLboolean glAreTexturesResidentEXT (GLsizei, const GLuint *, GLboolean *);
__attribute__((visibility("default"))) void glBindTextureEXT (GLenum, GLuint);
__attribute__((visibility("default"))) void glDeleteTexturesEXT (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenTexturesEXT (GLsizei, GLuint *);
__attribute__((visibility("default"))) GLboolean glIsTextureEXT (GLuint);
__attribute__((visibility("default"))) void glPrioritizeTexturesEXT (GLsizei, const GLuint *, const GLclampf *);

typedef GLboolean ( * PFNGLARETEXTURESRESIDENTEXTPROC) (GLsizei n, const GLuint *textures, GLboolean *residences);
typedef void ( * PFNGLBINDTEXTUREEXTPROC) (GLenum target, GLuint texture);
typedef void ( * PFNGLDELETETEXTURESEXTPROC) (GLsizei n, const GLuint *textures);
typedef void ( * PFNGLGENTEXTURESEXTPROC) (GLsizei n, GLuint *textures);
typedef GLboolean ( * PFNGLISTEXTUREEXTPROC) (GLuint texture);
typedef void ( * PFNGLPRIORITIZETEXTURESEXTPROC) (GLsizei n, const GLuint *textures, const GLclampf *priorities);





__attribute__((visibility("default"))) void glDetailTexFuncSGIS (GLenum, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glGetDetailTexFuncSGIS (GLenum, GLfloat *);

typedef void ( * PFNGLDETAILTEXFUNCSGISPROC) (GLenum target, GLsizei n, const GLfloat *points);
typedef void ( * PFNGLGETDETAILTEXFUNCSGISPROC) (GLenum target, GLfloat *points);





__attribute__((visibility("default"))) void glSharpenTexFuncSGIS (GLenum, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glGetSharpenTexFuncSGIS (GLenum, GLfloat *);

typedef void ( * PFNGLSHARPENTEXFUNCSGISPROC) (GLenum target, GLsizei n, const GLfloat *points);
typedef void ( * PFNGLGETSHARPENTEXFUNCSGISPROC) (GLenum target, GLfloat *points);
# 4819 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glSampleMaskSGIS (GLclampf, GLboolean);
__attribute__((visibility("default"))) void glSamplePatternSGIS (GLenum);

typedef void ( * PFNGLSAMPLEMASKSGISPROC) (GLclampf value, GLboolean invert);
typedef void ( * PFNGLSAMPLEPATTERNSGISPROC) (GLenum pattern);
# 4833 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glArrayElementEXT (GLint);
__attribute__((visibility("default"))) void glColorPointerEXT (GLint, GLenum, GLsizei, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glDrawArraysEXT (GLenum, GLint, GLsizei);
__attribute__((visibility("default"))) void glEdgeFlagPointerEXT (GLsizei, GLsizei, const GLboolean *);
__attribute__((visibility("default"))) void glGetPointervEXT (GLenum, GLvoid* *);
__attribute__((visibility("default"))) void glIndexPointerEXT (GLenum, GLsizei, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glNormalPointerEXT (GLenum, GLsizei, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glTexCoordPointerEXT (GLint, GLenum, GLsizei, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glVertexPointerEXT (GLint, GLenum, GLsizei, GLsizei, const GLvoid *);

typedef void ( * PFNGLARRAYELEMENTEXTPROC) (GLint i);
typedef void ( * PFNGLCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLDRAWARRAYSEXTPROC) (GLenum mode, GLint first, GLsizei count);
typedef void ( * PFNGLEDGEFLAGPOINTEREXTPROC) (GLsizei stride, GLsizei count, const GLboolean *pointer);
typedef void ( * PFNGLGETPOINTERVEXTPROC) (GLenum pname, GLvoid* *params);
typedef void ( * PFNGLINDEXPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLNORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLTEXCOORDPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLVERTEXPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
# 4881 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glBlendEquationEXT (GLenum);

typedef void ( * PFNGLBLENDEQUATIONEXTPROC) (GLenum mode);
# 4909 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glSpriteParameterfSGIX (GLenum, GLfloat);
__attribute__((visibility("default"))) void glSpriteParameterfvSGIX (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glSpriteParameteriSGIX (GLenum, GLint);
__attribute__((visibility("default"))) void glSpriteParameterivSGIX (GLenum, const GLint *);

typedef void ( * PFNGLSPRITEPARAMETERFSGIXPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLSPRITEPARAMETERFVSGIXPROC) (GLenum pname, const GLfloat *params);
typedef void ( * PFNGLSPRITEPARAMETERISGIXPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLSPRITEPARAMETERIVSGIXPROC) (GLenum pname, const GLint *params);
# 4927 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glPointParameterfEXT (GLenum, GLfloat);
__attribute__((visibility("default"))) void glPointParameterfvEXT (GLenum, const GLfloat *);

typedef void ( * PFNGLPOINTPARAMETERFEXTPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPOINTPARAMETERFVEXTPROC) (GLenum pname, const GLfloat *params);





__attribute__((visibility("default"))) void glPointParameterfSGIS (GLenum, GLfloat);
__attribute__((visibility("default"))) void glPointParameterfvSGIS (GLenum, const GLfloat *);

typedef void ( * PFNGLPOINTPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPOINTPARAMETERFVSGISPROC) (GLenum pname, const GLfloat *params);





__attribute__((visibility("default"))) GLint glGetInstrumentsSGIX (void);
__attribute__((visibility("default"))) void glInstrumentsBufferSGIX (GLsizei, GLint *);
__attribute__((visibility("default"))) GLint glPollInstrumentsSGIX (GLint *);
__attribute__((visibility("default"))) void glReadInstrumentsSGIX (GLint);
__attribute__((visibility("default"))) void glStartInstrumentsSGIX (void);
__attribute__((visibility("default"))) void glStopInstrumentsSGIX (GLint);

typedef GLint ( * PFNGLGETINSTRUMENTSSGIXPROC) (void);
typedef void ( * PFNGLINSTRUMENTSBUFFERSGIXPROC) (GLsizei size, GLint *buffer);
typedef GLint ( * PFNGLPOLLINSTRUMENTSSGIXPROC) (GLint *marker_p);
typedef void ( * PFNGLREADINSTRUMENTSSGIXPROC) (GLint marker);
typedef void ( * PFNGLSTARTINSTRUMENTSSGIXPROC) (void);
typedef void ( * PFNGLSTOPINSTRUMENTSSGIXPROC) (GLint marker);
# 4969 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glFrameZoomSGIX (GLint);

typedef void ( * PFNGLFRAMEZOOMSGIXPROC) (GLint factor);





__attribute__((visibility("default"))) void glTagSampleBufferSGIX (void);

typedef void ( * PFNGLTAGSAMPLEBUFFERSGIXPROC) (void);





__attribute__((visibility("default"))) void glDeformationMap3dSGIX (GLenum, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, GLdouble, GLdouble, GLint, GLint, const GLdouble *);
__attribute__((visibility("default"))) void glDeformationMap3fSGIX (GLenum, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, GLfloat, GLfloat, GLint, GLint, const GLfloat *);
__attribute__((visibility("default"))) void glDeformSGIX (GLbitfield);
__attribute__((visibility("default"))) void glLoadIdentityDeformationMapSGIX (GLbitfield);

typedef void ( * PFNGLDEFORMATIONMAP3DSGIXPROC) (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble *points);
typedef void ( * PFNGLDEFORMATIONMAP3FSGIXPROC) (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat *points);
typedef void ( * PFNGLDEFORMSGIXPROC) (GLbitfield mask);
typedef void ( * PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC) (GLbitfield mask);





__attribute__((visibility("default"))) void glReferencePlaneSGIX (const GLdouble *);

typedef void ( * PFNGLREFERENCEPLANESGIXPROC) (const GLdouble *equation);





__attribute__((visibility("default"))) void glFlushRasterSGIX (void);

typedef void ( * PFNGLFLUSHRASTERSGIXPROC) (void);
# 5019 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glFogFuncSGIS (GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glGetFogFuncSGIS (GLfloat *);

typedef void ( * PFNGLFOGFUNCSGISPROC) (GLsizei n, const GLfloat *points);
typedef void ( * PFNGLGETFOGFUNCSGISPROC) (GLfloat *points);
# 5033 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glImageTransformParameteriHP (GLenum, GLenum, GLint);
__attribute__((visibility("default"))) void glImageTransformParameterfHP (GLenum, GLenum, GLfloat);
__attribute__((visibility("default"))) void glImageTransformParameterivHP (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glImageTransformParameterfvHP (GLenum, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glGetImageTransformParameterivHP (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetImageTransformParameterfvHP (GLenum, GLenum, GLfloat *);

typedef void ( * PFNGLIMAGETRANSFORMPARAMETERIHPPROC) (GLenum target, GLenum pname, GLint param);
typedef void ( * PFNGLIMAGETRANSFORMPARAMETERFHPPROC) (GLenum target, GLenum pname, GLfloat param);
typedef void ( * PFNGLIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, GLfloat *params);
# 5059 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glColorSubTableEXT (GLenum, GLsizei, GLsizei, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glCopyColorSubTableEXT (GLenum, GLsizei, GLint, GLint, GLsizei);

typedef void ( * PFNGLCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data);
typedef void ( * PFNGLCOPYCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
# 5073 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glHintPGI (GLenum, GLint);

typedef void ( * PFNGLHINTPGIPROC) (GLenum target, GLint mode);





__attribute__((visibility("default"))) void glColorTableEXT (GLenum, GLenum, GLsizei, GLenum, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glGetColorTableEXT (GLenum, GLenum, GLenum, GLvoid *);
__attribute__((visibility("default"))) void glGetColorTableParameterivEXT (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetColorTableParameterfvEXT (GLenum, GLenum, GLfloat *);

typedef void ( * PFNGLCOLORTABLEEXTPROC) (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
typedef void ( * PFNGLGETCOLORTABLEEXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *data);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
# 5099 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glGetListParameterfvSGIX (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetListParameterivSGIX (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glListParameterfSGIX (GLuint, GLenum, GLfloat);
__attribute__((visibility("default"))) void glListParameterfvSGIX (GLuint, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glListParameteriSGIX (GLuint, GLenum, GLint);
__attribute__((visibility("default"))) void glListParameterivSGIX (GLuint, GLenum, const GLint *);

typedef void ( * PFNGLGETLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, GLint *params);
typedef void ( * PFNGLLISTPARAMETERFSGIXPROC) (GLuint list, GLenum pname, GLfloat param);
typedef void ( * PFNGLLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLLISTPARAMETERISGIXPROC) (GLuint list, GLenum pname, GLint param);
typedef void ( * PFNGLLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, const GLint *params);
# 5137 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glIndexMaterialEXT (GLenum, GLenum);

typedef void ( * PFNGLINDEXMATERIALEXTPROC) (GLenum face, GLenum mode);





__attribute__((visibility("default"))) void glIndexFuncEXT (GLenum, GLclampf);

typedef void ( * PFNGLINDEXFUNCEXTPROC) (GLenum func, GLclampf ref);
# 5157 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glLockArraysEXT (GLint, GLsizei);
__attribute__((visibility("default"))) void glUnlockArraysEXT (void);

typedef void ( * PFNGLLOCKARRAYSEXTPROC) (GLint first, GLsizei count);
typedef void ( * PFNGLUNLOCKARRAYSEXTPROC) (void);





__attribute__((visibility("default"))) void glCullParameterdvEXT (GLenum, GLdouble *);
__attribute__((visibility("default"))) void glCullParameterfvEXT (GLenum, GLfloat *);

typedef void ( * PFNGLCULLPARAMETERDVEXTPROC) (GLenum pname, GLdouble *params);
typedef void ( * PFNGLCULLPARAMETERFVEXTPROC) (GLenum pname, GLfloat *params);
# 5181 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glFragmentColorMaterialSGIX (GLenum, GLenum);
__attribute__((visibility("default"))) void glFragmentLightfSGIX (GLenum, GLenum, GLfloat);
__attribute__((visibility("default"))) void glFragmentLightfvSGIX (GLenum, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glFragmentLightiSGIX (GLenum, GLenum, GLint);
__attribute__((visibility("default"))) void glFragmentLightivSGIX (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glFragmentLightModelfSGIX (GLenum, GLfloat);
__attribute__((visibility("default"))) void glFragmentLightModelfvSGIX (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glFragmentLightModeliSGIX (GLenum, GLint);
__attribute__((visibility("default"))) void glFragmentLightModelivSGIX (GLenum, const GLint *);
__attribute__((visibility("default"))) void glFragmentMaterialfSGIX (GLenum, GLenum, GLfloat);
__attribute__((visibility("default"))) void glFragmentMaterialfvSGIX (GLenum, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glFragmentMaterialiSGIX (GLenum, GLenum, GLint);
__attribute__((visibility("default"))) void glFragmentMaterialivSGIX (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glGetFragmentLightfvSGIX (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetFragmentLightivSGIX (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetFragmentMaterialfvSGIX (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetFragmentMaterialivSGIX (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glLightEnviSGIX (GLenum, GLint);

typedef void ( * PFNGLFRAGMENTCOLORMATERIALSGIXPROC) (GLenum face, GLenum mode);
typedef void ( * PFNGLFRAGMENTLIGHTFSGIXPROC) (GLenum light, GLenum pname, GLfloat param);
typedef void ( * PFNGLFRAGMENTLIGHTFVSGIXPROC) (GLenum light, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLFRAGMENTLIGHTISGIXPROC) (GLenum light, GLenum pname, GLint param);
typedef void ( * PFNGLFRAGMENTLIGHTIVSGIXPROC) (GLenum light, GLenum pname, const GLint *params);
typedef void ( * PFNGLFRAGMENTLIGHTMODELFSGIXPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLFRAGMENTLIGHTMODELFVSGIXPROC) (GLenum pname, const GLfloat *params);
typedef void ( * PFNGLFRAGMENTLIGHTMODELISGIXPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLFRAGMENTLIGHTMODELIVSGIXPROC) (GLenum pname, const GLint *params);
typedef void ( * PFNGLFRAGMENTMATERIALFSGIXPROC) (GLenum face, GLenum pname, GLfloat param);
typedef void ( * PFNGLFRAGMENTMATERIALFVSGIXPROC) (GLenum face, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLFRAGMENTMATERIALISGIXPROC) (GLenum face, GLenum pname, GLint param);
typedef void ( * PFNGLFRAGMENTMATERIALIVSGIXPROC) (GLenum face, GLenum pname, const GLint *params);
typedef void ( * PFNGLGETFRAGMENTLIGHTFVSGIXPROC) (GLenum light, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETFRAGMENTLIGHTIVSGIXPROC) (GLenum light, GLenum pname, GLint *params);
typedef void ( * PFNGLGETFRAGMENTMATERIALFVSGIXPROC) (GLenum face, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETFRAGMENTMATERIALIVSGIXPROC) (GLenum face, GLenum pname, GLint *params);
typedef void ( * PFNGLLIGHTENVISGIXPROC) (GLenum pname, GLint param);
# 5231 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glDrawRangeElementsEXT (GLenum, GLuint, GLuint, GLsizei, GLenum, const GLvoid *);

typedef void ( * PFNGLDRAWRANGEELEMENTSEXTPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices);
# 5247 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glApplyTextureEXT (GLenum);
__attribute__((visibility("default"))) void glTextureLightEXT (GLenum);
__attribute__((visibility("default"))) void glTextureMaterialEXT (GLenum, GLenum);

typedef void ( * PFNGLAPPLYTEXTUREEXTPROC) (GLenum mode);
typedef void ( * PFNGLTEXTURELIGHTEXTPROC) (GLenum pname);
typedef void ( * PFNGLTEXTUREMATERIALEXTPROC) (GLenum face, GLenum mode);
# 5267 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glAsyncMarkerSGIX (GLuint);
__attribute__((visibility("default"))) GLint glFinishAsyncSGIX (GLuint *);
__attribute__((visibility("default"))) GLint glPollAsyncSGIX (GLuint *);
__attribute__((visibility("default"))) GLuint glGenAsyncMarkersSGIX (GLsizei);
__attribute__((visibility("default"))) void glDeleteAsyncMarkersSGIX (GLuint, GLsizei);
__attribute__((visibility("default"))) GLboolean glIsAsyncMarkerSGIX (GLuint);

typedef void ( * PFNGLASYNCMARKERSGIXPROC) (GLuint marker);
typedef GLint ( * PFNGLFINISHASYNCSGIXPROC) (GLuint *markerp);
typedef GLint ( * PFNGLPOLLASYNCSGIXPROC) (GLuint *markerp);
typedef GLuint ( * PFNGLGENASYNCMARKERSSGIXPROC) (GLsizei range);
typedef void ( * PFNGLDELETEASYNCMARKERSSGIXPROC) (GLuint marker, GLsizei range);
typedef GLboolean ( * PFNGLISASYNCMARKERSGIXPROC) (GLuint marker);
# 5293 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glVertexPointervINTEL (GLint, GLenum, const GLvoid* *);
__attribute__((visibility("default"))) void glNormalPointervINTEL (GLenum, const GLvoid* *);
__attribute__((visibility("default"))) void glColorPointervINTEL (GLint, GLenum, const GLvoid* *);
__attribute__((visibility("default"))) void glTexCoordPointervINTEL (GLint, GLenum, const GLvoid* *);

typedef void ( * PFNGLVERTEXPOINTERVINTELPROC) (GLint size, GLenum type, const GLvoid* *pointer);
typedef void ( * PFNGLNORMALPOINTERVINTELPROC) (GLenum type, const GLvoid* *pointer);
typedef void ( * PFNGLCOLORPOINTERVINTELPROC) (GLint size, GLenum type, const GLvoid* *pointer);
typedef void ( * PFNGLTEXCOORDPOINTERVINTELPROC) (GLint size, GLenum type, const GLvoid* *pointer);
# 5311 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glPixelTransformParameteriEXT (GLenum, GLenum, GLint);
__attribute__((visibility("default"))) void glPixelTransformParameterfEXT (GLenum, GLenum, GLfloat);
__attribute__((visibility("default"))) void glPixelTransformParameterivEXT (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glPixelTransformParameterfvEXT (GLenum, GLenum, const GLfloat *);

typedef void ( * PFNGLPIXELTRANSFORMPARAMETERIEXTPROC) (GLenum target, GLenum pname, GLint param);
typedef void ( * PFNGLPIXELTRANSFORMPARAMETERFEXTPROC) (GLenum target, GLenum pname, GLfloat param);
typedef void ( * PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC) (GLenum target, GLenum pname, const GLfloat *params);
# 5337 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glSecondaryColor3bEXT (GLbyte, GLbyte, GLbyte);
__attribute__((visibility("default"))) void glSecondaryColor3bvEXT (const GLbyte *);
__attribute__((visibility("default"))) void glSecondaryColor3dEXT (GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glSecondaryColor3dvEXT (const GLdouble *);
__attribute__((visibility("default"))) void glSecondaryColor3fEXT (GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glSecondaryColor3fvEXT (const GLfloat *);
__attribute__((visibility("default"))) void glSecondaryColor3iEXT (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glSecondaryColor3ivEXT (const GLint *);
__attribute__((visibility("default"))) void glSecondaryColor3sEXT (GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glSecondaryColor3svEXT (const GLshort *);
__attribute__((visibility("default"))) void glSecondaryColor3ubEXT (GLubyte, GLubyte, GLubyte);
__attribute__((visibility("default"))) void glSecondaryColor3ubvEXT (const GLubyte *);
__attribute__((visibility("default"))) void glSecondaryColor3uiEXT (GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glSecondaryColor3uivEXT (const GLuint *);
__attribute__((visibility("default"))) void glSecondaryColor3usEXT (GLushort, GLushort, GLushort);
__attribute__((visibility("default"))) void glSecondaryColor3usvEXT (const GLushort *);
__attribute__((visibility("default"))) void glSecondaryColorPointerEXT (GLint, GLenum, GLsizei, const GLvoid *);

typedef void ( * PFNGLSECONDARYCOLOR3BEXTPROC) (GLbyte red, GLbyte green, GLbyte blue);
typedef void ( * PFNGLSECONDARYCOLOR3BVEXTPROC) (const GLbyte *v);
typedef void ( * PFNGLSECONDARYCOLOR3DEXTPROC) (GLdouble red, GLdouble green, GLdouble blue);
typedef void ( * PFNGLSECONDARYCOLOR3DVEXTPROC) (const GLdouble *v);
typedef void ( * PFNGLSECONDARYCOLOR3FEXTPROC) (GLfloat red, GLfloat green, GLfloat blue);
typedef void ( * PFNGLSECONDARYCOLOR3FVEXTPROC) (const GLfloat *v);
typedef void ( * PFNGLSECONDARYCOLOR3IEXTPROC) (GLint red, GLint green, GLint blue);
typedef void ( * PFNGLSECONDARYCOLOR3IVEXTPROC) (const GLint *v);
typedef void ( * PFNGLSECONDARYCOLOR3SEXTPROC) (GLshort red, GLshort green, GLshort blue);
typedef void ( * PFNGLSECONDARYCOLOR3SVEXTPROC) (const GLshort *v);
typedef void ( * PFNGLSECONDARYCOLOR3UBEXTPROC) (GLubyte red, GLubyte green, GLubyte blue);
typedef void ( * PFNGLSECONDARYCOLOR3UBVEXTPROC) (const GLubyte *v);
typedef void ( * PFNGLSECONDARYCOLOR3UIEXTPROC) (GLuint red, GLuint green, GLuint blue);
typedef void ( * PFNGLSECONDARYCOLOR3UIVEXTPROC) (const GLuint *v);
typedef void ( * PFNGLSECONDARYCOLOR3USEXTPROC) (GLushort red, GLushort green, GLushort blue);
typedef void ( * PFNGLSECONDARYCOLOR3USVEXTPROC) (const GLushort *v);
typedef void ( * PFNGLSECONDARYCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);





__attribute__((visibility("default"))) void glTextureNormalEXT (GLenum);

typedef void ( * PFNGLTEXTURENORMALEXTPROC) (GLenum mode);





__attribute__((visibility("default"))) void glMultiDrawArraysEXT (GLenum, GLint *, GLsizei *, GLsizei);
__attribute__((visibility("default"))) void glMultiDrawElementsEXT (GLenum, const GLsizei *, GLenum, const GLvoid* *, GLsizei);

typedef void ( * PFNGLMULTIDRAWARRAYSEXTPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
typedef void ( * PFNGLMULTIDRAWELEMENTSEXTPROC) (GLenum mode, const GLsizei *count, GLenum type, const GLvoid* *indices, GLsizei primcount);





__attribute__((visibility("default"))) void glFogCoordfEXT (GLfloat);
__attribute__((visibility("default"))) void glFogCoordfvEXT (const GLfloat *);
__attribute__((visibility("default"))) void glFogCoorddEXT (GLdouble);
__attribute__((visibility("default"))) void glFogCoorddvEXT (const GLdouble *);
__attribute__((visibility("default"))) void glFogCoordPointerEXT (GLenum, GLsizei, const GLvoid *);

typedef void ( * PFNGLFOGCOORDFEXTPROC) (GLfloat coord);
typedef void ( * PFNGLFOGCOORDFVEXTPROC) (const GLfloat *coord);
typedef void ( * PFNGLFOGCOORDDEXTPROC) (GLdouble coord);
typedef void ( * PFNGLFOGCOORDDVEXTPROC) (const GLdouble *coord);
typedef void ( * PFNGLFOGCOORDPOINTEREXTPROC) (GLenum type, GLsizei stride, const GLvoid *pointer);
# 5415 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glTangent3bEXT (GLbyte, GLbyte, GLbyte);
__attribute__((visibility("default"))) void glTangent3bvEXT (const GLbyte *);
__attribute__((visibility("default"))) void glTangent3dEXT (GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glTangent3dvEXT (const GLdouble *);
__attribute__((visibility("default"))) void glTangent3fEXT (GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTangent3fvEXT (const GLfloat *);
__attribute__((visibility("default"))) void glTangent3iEXT (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glTangent3ivEXT (const GLint *);
__attribute__((visibility("default"))) void glTangent3sEXT (GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glTangent3svEXT (const GLshort *);
__attribute__((visibility("default"))) void glBinormal3bEXT (GLbyte, GLbyte, GLbyte);
__attribute__((visibility("default"))) void glBinormal3bvEXT (const GLbyte *);
__attribute__((visibility("default"))) void glBinormal3dEXT (GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glBinormal3dvEXT (const GLdouble *);
__attribute__((visibility("default"))) void glBinormal3fEXT (GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glBinormal3fvEXT (const GLfloat *);
__attribute__((visibility("default"))) void glBinormal3iEXT (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glBinormal3ivEXT (const GLint *);
__attribute__((visibility("default"))) void glBinormal3sEXT (GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glBinormal3svEXT (const GLshort *);
__attribute__((visibility("default"))) void glTangentPointerEXT (GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glBinormalPointerEXT (GLenum, GLsizei, const GLvoid *);

typedef void ( * PFNGLTANGENT3BEXTPROC) (GLbyte tx, GLbyte ty, GLbyte tz);
typedef void ( * PFNGLTANGENT3BVEXTPROC) (const GLbyte *v);
typedef void ( * PFNGLTANGENT3DEXTPROC) (GLdouble tx, GLdouble ty, GLdouble tz);
typedef void ( * PFNGLTANGENT3DVEXTPROC) (const GLdouble *v);
typedef void ( * PFNGLTANGENT3FEXTPROC) (GLfloat tx, GLfloat ty, GLfloat tz);
typedef void ( * PFNGLTANGENT3FVEXTPROC) (const GLfloat *v);
typedef void ( * PFNGLTANGENT3IEXTPROC) (GLint tx, GLint ty, GLint tz);
typedef void ( * PFNGLTANGENT3IVEXTPROC) (const GLint *v);
typedef void ( * PFNGLTANGENT3SEXTPROC) (GLshort tx, GLshort ty, GLshort tz);
typedef void ( * PFNGLTANGENT3SVEXTPROC) (const GLshort *v);
typedef void ( * PFNGLBINORMAL3BEXTPROC) (GLbyte bx, GLbyte by, GLbyte bz);
typedef void ( * PFNGLBINORMAL3BVEXTPROC) (const GLbyte *v);
typedef void ( * PFNGLBINORMAL3DEXTPROC) (GLdouble bx, GLdouble by, GLdouble bz);
typedef void ( * PFNGLBINORMAL3DVEXTPROC) (const GLdouble *v);
typedef void ( * PFNGLBINORMAL3FEXTPROC) (GLfloat bx, GLfloat by, GLfloat bz);
typedef void ( * PFNGLBINORMAL3FVEXTPROC) (const GLfloat *v);
typedef void ( * PFNGLBINORMAL3IEXTPROC) (GLint bx, GLint by, GLint bz);
typedef void ( * PFNGLBINORMAL3IVEXTPROC) (const GLint *v);
typedef void ( * PFNGLBINORMAL3SEXTPROC) (GLshort bx, GLshort by, GLshort bz);
typedef void ( * PFNGLBINORMAL3SVEXTPROC) (const GLshort *v);
typedef void ( * PFNGLTANGENTPOINTEREXTPROC) (GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void ( * PFNGLBINORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, const GLvoid *pointer);
# 5481 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glFinishTextureSUNX (void);

typedef void ( * PFNGLFINISHTEXTURESUNXPROC) (void);





__attribute__((visibility("default"))) void glGlobalAlphaFactorbSUN (GLbyte);
__attribute__((visibility("default"))) void glGlobalAlphaFactorsSUN (GLshort);
__attribute__((visibility("default"))) void glGlobalAlphaFactoriSUN (GLint);
__attribute__((visibility("default"))) void glGlobalAlphaFactorfSUN (GLfloat);
__attribute__((visibility("default"))) void glGlobalAlphaFactordSUN (GLdouble);
__attribute__((visibility("default"))) void glGlobalAlphaFactorubSUN (GLubyte);
__attribute__((visibility("default"))) void glGlobalAlphaFactorusSUN (GLushort);
__attribute__((visibility("default"))) void glGlobalAlphaFactoruiSUN (GLuint);

typedef void ( * PFNGLGLOBALALPHAFACTORBSUNPROC) (GLbyte factor);
typedef void ( * PFNGLGLOBALALPHAFACTORSSUNPROC) (GLshort factor);
typedef void ( * PFNGLGLOBALALPHAFACTORISUNPROC) (GLint factor);
typedef void ( * PFNGLGLOBALALPHAFACTORFSUNPROC) (GLfloat factor);
typedef void ( * PFNGLGLOBALALPHAFACTORDSUNPROC) (GLdouble factor);
typedef void ( * PFNGLGLOBALALPHAFACTORUBSUNPROC) (GLubyte factor);
typedef void ( * PFNGLGLOBALALPHAFACTORUSSUNPROC) (GLushort factor);
typedef void ( * PFNGLGLOBALALPHAFACTORUISUNPROC) (GLuint factor);





__attribute__((visibility("default"))) void glReplacementCodeuiSUN (GLuint);
__attribute__((visibility("default"))) void glReplacementCodeusSUN (GLushort);
__attribute__((visibility("default"))) void glReplacementCodeubSUN (GLubyte);
__attribute__((visibility("default"))) void glReplacementCodeuivSUN (const GLuint *);
__attribute__((visibility("default"))) void glReplacementCodeusvSUN (const GLushort *);
__attribute__((visibility("default"))) void glReplacementCodeubvSUN (const GLubyte *);
__attribute__((visibility("default"))) void glReplacementCodePointerSUN (GLenum, GLsizei, const GLvoid* *);

typedef void ( * PFNGLREPLACEMENTCODEUISUNPROC) (GLuint code);
typedef void ( * PFNGLREPLACEMENTCODEUSSUNPROC) (GLushort code);
typedef void ( * PFNGLREPLACEMENTCODEUBSUNPROC) (GLubyte code);
typedef void ( * PFNGLREPLACEMENTCODEUIVSUNPROC) (const GLuint *code);
typedef void ( * PFNGLREPLACEMENTCODEUSVSUNPROC) (const GLushort *code);
typedef void ( * PFNGLREPLACEMENTCODEUBVSUNPROC) (const GLubyte *code);
typedef void ( * PFNGLREPLACEMENTCODEPOINTERSUNPROC) (GLenum type, GLsizei stride, const GLvoid* *pointer);





__attribute__((visibility("default"))) void glColor4ubVertex2fSUN (GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glColor4ubVertex2fvSUN (const GLubyte *, const GLfloat *);
__attribute__((visibility("default"))) void glColor4ubVertex3fSUN (GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glColor4ubVertex3fvSUN (const GLubyte *, const GLfloat *);
__attribute__((visibility("default"))) void glColor3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glColor3fVertex3fvSUN (const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glNormal3fVertex3fvSUN (const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glColor4fNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glColor4fNormal3fVertex3fvSUN (const GLfloat *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glTexCoord2fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTexCoord2fVertex3fvSUN (const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glTexCoord4fVertex4fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTexCoord4fVertex4fvSUN (const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glTexCoord2fColor4ubVertex3fSUN (GLfloat, GLfloat, GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTexCoord2fColor4ubVertex3fvSUN (const GLfloat *, const GLubyte *, const GLfloat *);
__attribute__((visibility("default"))) void glTexCoord2fColor3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTexCoord2fColor3fVertex3fvSUN (const GLfloat *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glTexCoord2fNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTexCoord2fNormal3fVertex3fvSUN (const GLfloat *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glTexCoord2fColor4fNormal3fVertex3fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTexCoord2fColor4fNormal3fVertex3fvSUN (const GLfloat *, const GLfloat *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glTexCoord4fColor4fNormal3fVertex4fSUN (GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glTexCoord4fColor4fNormal3fVertex4fvSUN (const GLfloat *, const GLfloat *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiVertex3fvSUN (const GLuint *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiColor4ubVertex3fSUN (GLuint, GLubyte, GLubyte, GLubyte, GLubyte, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiColor4ubVertex3fvSUN (const GLuint *, const GLubyte *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiColor3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiColor3fVertex3fvSUN (const GLuint *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiNormal3fVertex3fvSUN (const GLuint *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiColor4fNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiColor4fNormal3fVertex3fvSUN (const GLuint *, const GLfloat *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiTexCoord2fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiTexCoord2fVertex3fvSUN (const GLuint *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN (const GLuint *, const GLfloat *, const GLfloat *, const GLfloat *);
__attribute__((visibility("default"))) void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN (GLuint, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN (const GLuint *, const GLfloat *, const GLfloat *, const GLfloat *, const GLfloat *);

typedef void ( * PFNGLCOLOR4UBVERTEX2FSUNPROC) (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y);
typedef void ( * PFNGLCOLOR4UBVERTEX2FVSUNPROC) (const GLubyte *c, const GLfloat *v);
typedef void ( * PFNGLCOLOR4UBVERTEX3FSUNPROC) (GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLCOLOR4UBVERTEX3FVSUNPROC) (const GLubyte *c, const GLfloat *v);
typedef void ( * PFNGLCOLOR3FVERTEX3FSUNPROC) (GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLCOLOR3FVERTEX3FVSUNPROC) (const GLfloat *c, const GLfloat *v);
typedef void ( * PFNGLNORMAL3FVERTEX3FSUNPROC) (GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLNORMAL3FVERTEX3FVSUNPROC) (const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (const GLfloat *c, const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLTEXCOORD2FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLTEXCOORD2FVERTEX3FVSUNPROC) (const GLfloat *tc, const GLfloat *v);
typedef void ( * PFNGLTEXCOORD4FVERTEX4FSUNPROC) (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLTEXCOORD4FVERTEX4FVSUNPROC) (const GLfloat *tc, const GLfloat *v);
typedef void ( * PFNGLTEXCOORD2FCOLOR4UBVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLTEXCOORD2FCOLOR4UBVERTEX3FVSUNPROC) (const GLfloat *tc, const GLubyte *c, const GLfloat *v);
typedef void ( * PFNGLTEXCOORD2FCOLOR3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLTEXCOORD2FCOLOR3FVERTEX3FVSUNPROC) (const GLfloat *tc, const GLfloat *c, const GLfloat *v);
typedef void ( * PFNGLTEXCOORD2FNORMAL3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLTEXCOORD2FNORMAL3FVERTEX3FVSUNPROC) (const GLfloat *tc, const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLTEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FSUNPROC) (GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLTEXCOORD4FCOLOR4FNORMAL3FVERTEX4FVSUNPROC) (const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUIVERTEX3FSUNPROC) (GLuint rc, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUIVERTEX3FVSUNPROC) (const GLuint *rc, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FSUNPROC) (GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUICOLOR4UBVERTEX3FVSUNPROC) (const GLuint *rc, const GLubyte *c, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FSUNPROC) (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUICOLOR3FVERTEX3FVSUNPROC) (const GLuint *rc, const GLfloat *c, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUINORMAL3FVERTEX3FVSUNPROC) (const GLuint *rc, const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUICOLOR4FNORMAL3FVERTEX3FVSUNPROC) (const GLuint *rc, const GLfloat *c, const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUITEXCOORD2FVERTEX3FVSUNPROC) (const GLuint *rc, const GLfloat *tc, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUITEXCOORD2FNORMAL3FVERTEX3FVSUNPROC) (const GLuint *rc, const GLfloat *tc, const GLfloat *n, const GLfloat *v);
typedef void ( * PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FSUNPROC) (GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLREPLACEMENTCODEUITEXCOORD2FCOLOR4FNORMAL3FVERTEX3FVSUNPROC) (const GLuint *rc, const GLfloat *tc, const GLfloat *c, const GLfloat *n, const GLfloat *v);





__attribute__((visibility("default"))) void glBlendFuncSeparateEXT (GLenum, GLenum, GLenum, GLenum);

typedef void ( * PFNGLBLENDFUNCSEPARATEEXTPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);





__attribute__((visibility("default"))) void glBlendFuncSeparateINGR (GLenum, GLenum, GLenum, GLenum);

typedef void ( * PFNGLBLENDFUNCSEPARATEINGRPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
# 5669 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glVertexWeightfEXT (GLfloat);
__attribute__((visibility("default"))) void glVertexWeightfvEXT (const GLfloat *);
__attribute__((visibility("default"))) void glVertexWeightPointerEXT (GLsizei, GLenum, GLsizei, const GLvoid *);

typedef void ( * PFNGLVERTEXWEIGHTFEXTPROC) (GLfloat weight);
typedef void ( * PFNGLVERTEXWEIGHTFVEXTPROC) (const GLfloat *weight);
typedef void ( * PFNGLVERTEXWEIGHTPOINTEREXTPROC) (GLsizei size, GLenum type, GLsizei stride, const GLvoid *pointer);
# 5685 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glFlushVertexArrayRangeNV (void);
__attribute__((visibility("default"))) void glVertexArrayRangeNV (GLsizei, const GLvoid *);

typedef void ( * PFNGLFLUSHVERTEXARRAYRANGENVPROC) (void);
typedef void ( * PFNGLVERTEXARRAYRANGENVPROC) (GLsizei length, const GLvoid *pointer);





__attribute__((visibility("default"))) void glCombinerParameterfvNV (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glCombinerParameterfNV (GLenum, GLfloat);
__attribute__((visibility("default"))) void glCombinerParameterivNV (GLenum, const GLint *);
__attribute__((visibility("default"))) void glCombinerParameteriNV (GLenum, GLint);
__attribute__((visibility("default"))) void glCombinerInputNV (GLenum, GLenum, GLenum, GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) void glCombinerOutputNV (GLenum, GLenum, GLenum, GLenum, GLenum, GLenum, GLenum, GLboolean, GLboolean, GLboolean);
__attribute__((visibility("default"))) void glFinalCombinerInputNV (GLenum, GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) void glGetCombinerInputParameterfvNV (GLenum, GLenum, GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetCombinerInputParameterivNV (GLenum, GLenum, GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetCombinerOutputParameterfvNV (GLenum, GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetCombinerOutputParameterivNV (GLenum, GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetFinalCombinerInputParameterfvNV (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetFinalCombinerInputParameterivNV (GLenum, GLenum, GLint *);

typedef void ( * PFNGLCOMBINERPARAMETERFVNVPROC) (GLenum pname, const GLfloat *params);
typedef void ( * PFNGLCOMBINERPARAMETERFNVPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLCOMBINERPARAMETERIVNVPROC) (GLenum pname, const GLint *params);
typedef void ( * PFNGLCOMBINERPARAMETERINVPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLCOMBINERINPUTNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
typedef void ( * PFNGLCOMBINEROUTPUTNVPROC) (GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum);
typedef void ( * PFNGLFINALCOMBINERINPUTNVPROC) (GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage);
typedef void ( * PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC) (GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint *params);
typedef void ( * PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC) (GLenum stage, GLenum portion, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC) (GLenum stage, GLenum portion, GLenum pname, GLint *params);
typedef void ( * PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC) (GLenum variable, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC) (GLenum variable, GLenum pname, GLint *params);
# 5743 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glResizeBuffersMESA (void);

typedef void ( * PFNGLRESIZEBUFFERSMESAPROC) (void);





__attribute__((visibility("default"))) void glWindowPos2dMESA (GLdouble, GLdouble);
__attribute__((visibility("default"))) void glWindowPos2dvMESA (const GLdouble *);
__attribute__((visibility("default"))) void glWindowPos2fMESA (GLfloat, GLfloat);
__attribute__((visibility("default"))) void glWindowPos2fvMESA (const GLfloat *);
__attribute__((visibility("default"))) void glWindowPos2iMESA (GLint, GLint);
__attribute__((visibility("default"))) void glWindowPos2ivMESA (const GLint *);
__attribute__((visibility("default"))) void glWindowPos2sMESA (GLshort, GLshort);
__attribute__((visibility("default"))) void glWindowPos2svMESA (const GLshort *);
__attribute__((visibility("default"))) void glWindowPos3dMESA (GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glWindowPos3dvMESA (const GLdouble *);
__attribute__((visibility("default"))) void glWindowPos3fMESA (GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glWindowPos3fvMESA (const GLfloat *);
__attribute__((visibility("default"))) void glWindowPos3iMESA (GLint, GLint, GLint);
__attribute__((visibility("default"))) void glWindowPos3ivMESA (const GLint *);
__attribute__((visibility("default"))) void glWindowPos3sMESA (GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glWindowPos3svMESA (const GLshort *);
__attribute__((visibility("default"))) void glWindowPos4dMESA (GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glWindowPos4dvMESA (const GLdouble *);
__attribute__((visibility("default"))) void glWindowPos4fMESA (GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glWindowPos4fvMESA (const GLfloat *);
__attribute__((visibility("default"))) void glWindowPos4iMESA (GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glWindowPos4ivMESA (const GLint *);
__attribute__((visibility("default"))) void glWindowPos4sMESA (GLshort, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glWindowPos4svMESA (const GLshort *);

typedef void ( * PFNGLWINDOWPOS2DMESAPROC) (GLdouble x, GLdouble y);
typedef void ( * PFNGLWINDOWPOS2DVMESAPROC) (const GLdouble *v);
typedef void ( * PFNGLWINDOWPOS2FMESAPROC) (GLfloat x, GLfloat y);
typedef void ( * PFNGLWINDOWPOS2FVMESAPROC) (const GLfloat *v);
typedef void ( * PFNGLWINDOWPOS2IMESAPROC) (GLint x, GLint y);
typedef void ( * PFNGLWINDOWPOS2IVMESAPROC) (const GLint *v);
typedef void ( * PFNGLWINDOWPOS2SMESAPROC) (GLshort x, GLshort y);
typedef void ( * PFNGLWINDOWPOS2SVMESAPROC) (const GLshort *v);
typedef void ( * PFNGLWINDOWPOS3DMESAPROC) (GLdouble x, GLdouble y, GLdouble z);
typedef void ( * PFNGLWINDOWPOS3DVMESAPROC) (const GLdouble *v);
typedef void ( * PFNGLWINDOWPOS3FMESAPROC) (GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLWINDOWPOS3FVMESAPROC) (const GLfloat *v);
typedef void ( * PFNGLWINDOWPOS3IMESAPROC) (GLint x, GLint y, GLint z);
typedef void ( * PFNGLWINDOWPOS3IVMESAPROC) (const GLint *v);
typedef void ( * PFNGLWINDOWPOS3SMESAPROC) (GLshort x, GLshort y, GLshort z);
typedef void ( * PFNGLWINDOWPOS3SVMESAPROC) (const GLshort *v);
typedef void ( * PFNGLWINDOWPOS4DMESAPROC) (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLWINDOWPOS4DVMESAPROC) (const GLdouble *v);
typedef void ( * PFNGLWINDOWPOS4FMESAPROC) (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLWINDOWPOS4FVMESAPROC) (const GLfloat *v);
typedef void ( * PFNGLWINDOWPOS4IMESAPROC) (GLint x, GLint y, GLint z, GLint w);
typedef void ( * PFNGLWINDOWPOS4IVMESAPROC) (const GLint *v);
typedef void ( * PFNGLWINDOWPOS4SMESAPROC) (GLshort x, GLshort y, GLshort z, GLshort w);
typedef void ( * PFNGLWINDOWPOS4SVMESAPROC) (const GLshort *v);
# 5809 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glMultiModeDrawArraysIBM (const GLenum *, const GLint *, const GLsizei *, GLsizei, GLint);
__attribute__((visibility("default"))) void glMultiModeDrawElementsIBM (const GLenum *, const GLsizei *, GLenum, const GLvoid* const *, GLsizei, GLint);

typedef void ( * PFNGLMULTIMODEDRAWARRAYSIBMPROC) (const GLenum *mode, const GLint *first, const GLsizei *count, GLsizei primcount, GLint modestride);
typedef void ( * PFNGLMULTIMODEDRAWELEMENTSIBMPROC) (const GLenum *mode, const GLsizei *count, GLenum type, const GLvoid* const *indices, GLsizei primcount, GLint modestride);





__attribute__((visibility("default"))) void glColorPointerListIBM (GLint, GLenum, GLint, const GLvoid* *, GLint);
__attribute__((visibility("default"))) void glSecondaryColorPointerListIBM (GLint, GLenum, GLint, const GLvoid* *, GLint);
__attribute__((visibility("default"))) void glEdgeFlagPointerListIBM (GLint, const GLboolean* *, GLint);
__attribute__((visibility("default"))) void glFogCoordPointerListIBM (GLenum, GLint, const GLvoid* *, GLint);
__attribute__((visibility("default"))) void glIndexPointerListIBM (GLenum, GLint, const GLvoid* *, GLint);
__attribute__((visibility("default"))) void glNormalPointerListIBM (GLenum, GLint, const GLvoid* *, GLint);
__attribute__((visibility("default"))) void glTexCoordPointerListIBM (GLint, GLenum, GLint, const GLvoid* *, GLint);
__attribute__((visibility("default"))) void glVertexPointerListIBM (GLint, GLenum, GLint, const GLvoid* *, GLint);

typedef void ( * PFNGLCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLSECONDARYCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLEDGEFLAGPOINTERLISTIBMPROC) (GLint stride, const GLboolean* *pointer, GLint ptrstride);
typedef void ( * PFNGLFOGCOORDPOINTERLISTIBMPROC) (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLINDEXPOINTERLISTIBMPROC) (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLNORMALPOINTERLISTIBMPROC) (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLTEXCOORDPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLVERTEXPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
# 5865 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glTbufferMask3DFX (GLuint);

typedef void ( * PFNGLTBUFFERMASK3DFXPROC) (GLuint mask);





__attribute__((visibility("default"))) void glSampleMaskEXT (GLclampf, GLboolean);
__attribute__((visibility("default"))) void glSamplePatternEXT (GLenum);

typedef void ( * PFNGLSAMPLEMASKEXTPROC) (GLclampf value, GLboolean invert);
typedef void ( * PFNGLSAMPLEPATTERNEXTPROC) (GLenum pattern);
# 5899 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glTextureColorMaskSGIS (GLboolean, GLboolean, GLboolean, GLboolean);

typedef void ( * PFNGLTEXTURECOLORMASKSGISPROC) (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);





__attribute__((visibility("default"))) void glIglooInterfaceSGIX (GLenum, const GLvoid *);

typedef void ( * PFNGLIGLOOINTERFACESGIXPROC) (GLenum pname, const GLvoid *params);
# 5923 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glDeleteFencesNV (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenFencesNV (GLsizei, GLuint *);
__attribute__((visibility("default"))) GLboolean glIsFenceNV (GLuint);
__attribute__((visibility("default"))) GLboolean glTestFenceNV (GLuint);
__attribute__((visibility("default"))) void glGetFenceivNV (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glFinishFenceNV (GLuint);
__attribute__((visibility("default"))) void glSetFenceNV (GLuint, GLenum);

typedef void ( * PFNGLDELETEFENCESNVPROC) (GLsizei n, const GLuint *fences);
typedef void ( * PFNGLGENFENCESNVPROC) (GLsizei n, GLuint *fences);
typedef GLboolean ( * PFNGLISFENCENVPROC) (GLuint fence);
typedef GLboolean ( * PFNGLTESTFENCENVPROC) (GLuint fence);
typedef void ( * PFNGLGETFENCEIVNVPROC) (GLuint fence, GLenum pname, GLint *params);
typedef void ( * PFNGLFINISHFENCENVPROC) (GLuint fence);
typedef void ( * PFNGLSETFENCENVPROC) (GLuint fence, GLenum condition);





__attribute__((visibility("default"))) void glMapControlPointsNV (GLenum, GLuint, GLenum, GLsizei, GLsizei, GLint, GLint, GLboolean, const GLvoid *);
__attribute__((visibility("default"))) void glMapParameterivNV (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glMapParameterfvNV (GLenum, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glGetMapControlPointsNV (GLenum, GLuint, GLenum, GLsizei, GLsizei, GLboolean, GLvoid *);
__attribute__((visibility("default"))) void glGetMapParameterivNV (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetMapParameterfvNV (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetMapAttribParameterivNV (GLenum, GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetMapAttribParameterfvNV (GLenum, GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glEvalMapsNV (GLenum, GLenum);

typedef void ( * PFNGLMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const GLvoid *points);
typedef void ( * PFNGLMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid *points);
typedef void ( * PFNGLGETMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETMAPATTRIBPARAMETERIVNVPROC) (GLenum target, GLuint index, GLenum pname, GLint *params);
typedef void ( * PFNGLGETMAPATTRIBPARAMETERFVNVPROC) (GLenum target, GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLEVALMAPSNVPROC) (GLenum target, GLenum mode);
# 5971 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glCombinerStageParameterfvNV (GLenum, GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glGetCombinerStageParameterfvNV (GLenum, GLenum, GLfloat *);

typedef void ( * PFNGLCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, GLfloat *params);
# 6001 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) GLboolean glAreProgramsResidentNV (GLsizei, const GLuint *, GLboolean *);
__attribute__((visibility("default"))) void glBindProgramNV (GLenum, GLuint);
__attribute__((visibility("default"))) void glDeleteProgramsNV (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glExecuteProgramNV (GLenum, GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glGenProgramsNV (GLsizei, GLuint *);
__attribute__((visibility("default"))) void glGetProgramParameterdvNV (GLenum, GLuint, GLenum, GLdouble *);
__attribute__((visibility("default"))) void glGetProgramParameterfvNV (GLenum, GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetProgramivNV (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetProgramStringNV (GLuint, GLenum, GLubyte *);
__attribute__((visibility("default"))) void glGetTrackMatrixivNV (GLenum, GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetVertexAttribdvNV (GLuint, GLenum, GLdouble *);
__attribute__((visibility("default"))) void glGetVertexAttribfvNV (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetVertexAttribivNV (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetVertexAttribPointervNV (GLuint, GLenum, GLvoid* *);
__attribute__((visibility("default"))) GLboolean glIsProgramNV (GLuint);
__attribute__((visibility("default"))) void glLoadProgramNV (GLenum, GLuint, GLsizei, const GLubyte *);
__attribute__((visibility("default"))) void glProgramParameter4dNV (GLenum, GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glProgramParameter4dvNV (GLenum, GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glProgramParameter4fNV (GLenum, GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glProgramParameter4fvNV (GLenum, GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glProgramParameters4dvNV (GLenum, GLuint, GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glProgramParameters4fvNV (GLenum, GLuint, GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glRequestResidentProgramsNV (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glTrackMatrixNV (GLenum, GLuint, GLenum, GLenum);
__attribute__((visibility("default"))) void glVertexAttribPointerNV (GLuint, GLint, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glVertexAttrib1dNV (GLuint, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib1dvNV (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib1fNV (GLuint, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib1fvNV (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib1sNV (GLuint, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib1svNV (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib2dNV (GLuint, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib2dvNV (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib2fNV (GLuint, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib2fvNV (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib2sNV (GLuint, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib2svNV (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib3dNV (GLuint, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib3dvNV (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib3fNV (GLuint, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib3fvNV (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib3sNV (GLuint, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib3svNV (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4dNV (GLuint, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexAttrib4dvNV (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttrib4fNV (GLuint, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexAttrib4fvNV (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttrib4sNV (GLuint, GLshort, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexAttrib4svNV (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttrib4ubNV (GLuint, GLubyte, GLubyte, GLubyte, GLubyte);
__attribute__((visibility("default"))) void glVertexAttrib4ubvNV (GLuint, const GLubyte *);
__attribute__((visibility("default"))) void glVertexAttribs1dvNV (GLuint, GLsizei, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttribs1fvNV (GLuint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttribs1svNV (GLuint, GLsizei, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttribs2dvNV (GLuint, GLsizei, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttribs2fvNV (GLuint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttribs2svNV (GLuint, GLsizei, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttribs3dvNV (GLuint, GLsizei, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttribs3fvNV (GLuint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttribs3svNV (GLuint, GLsizei, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttribs4dvNV (GLuint, GLsizei, const GLdouble *);
__attribute__((visibility("default"))) void glVertexAttribs4fvNV (GLuint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glVertexAttribs4svNV (GLuint, GLsizei, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttribs4ubvNV (GLuint, GLsizei, const GLubyte *);

typedef GLboolean ( * PFNGLAREPROGRAMSRESIDENTNVPROC) (GLsizei n, const GLuint *programs, GLboolean *residences);
typedef void ( * PFNGLBINDPROGRAMNVPROC) (GLenum target, GLuint id);
typedef void ( * PFNGLDELETEPROGRAMSNVPROC) (GLsizei n, const GLuint *programs);
typedef void ( * PFNGLEXECUTEPROGRAMNVPROC) (GLenum target, GLuint id, const GLfloat *params);
typedef void ( * PFNGLGENPROGRAMSNVPROC) (GLsizei n, GLuint *programs);
typedef void ( * PFNGLGETPROGRAMPARAMETERDVNVPROC) (GLenum target, GLuint index, GLenum pname, GLdouble *params);
typedef void ( * PFNGLGETPROGRAMPARAMETERFVNVPROC) (GLenum target, GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETPROGRAMIVNVPROC) (GLuint id, GLenum pname, GLint *params);
typedef void ( * PFNGLGETPROGRAMSTRINGNVPROC) (GLuint id, GLenum pname, GLubyte *program);
typedef void ( * PFNGLGETTRACKMATRIXIVNVPROC) (GLenum target, GLuint address, GLenum pname, GLint *params);
typedef void ( * PFNGLGETVERTEXATTRIBDVNVPROC) (GLuint index, GLenum pname, GLdouble *params);
typedef void ( * PFNGLGETVERTEXATTRIBFVNVPROC) (GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETVERTEXATTRIBIVNVPROC) (GLuint index, GLenum pname, GLint *params);
typedef void ( * PFNGLGETVERTEXATTRIBPOINTERVNVPROC) (GLuint index, GLenum pname, GLvoid* *pointer);
typedef GLboolean ( * PFNGLISPROGRAMNVPROC) (GLuint id);
typedef void ( * PFNGLLOADPROGRAMNVPROC) (GLenum target, GLuint id, GLsizei len, const GLubyte *program);
typedef void ( * PFNGLPROGRAMPARAMETER4DNVPROC) (GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLPROGRAMPARAMETER4DVNVPROC) (GLenum target, GLuint index, const GLdouble *v);
typedef void ( * PFNGLPROGRAMPARAMETER4FNVPROC) (GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLPROGRAMPARAMETER4FVNVPROC) (GLenum target, GLuint index, const GLfloat *v);
typedef void ( * PFNGLPROGRAMPARAMETERS4DVNVPROC) (GLenum target, GLuint index, GLuint count, const GLdouble *v);
typedef void ( * PFNGLPROGRAMPARAMETERS4FVNVPROC) (GLenum target, GLuint index, GLuint count, const GLfloat *v);
typedef void ( * PFNGLREQUESTRESIDENTPROGRAMSNVPROC) (GLsizei n, const GLuint *programs);
typedef void ( * PFNGLTRACKMATRIXNVPROC) (GLenum target, GLuint address, GLenum matrix, GLenum transform);
typedef void ( * PFNGLVERTEXATTRIBPOINTERNVPROC) (GLuint index, GLint fsize, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void ( * PFNGLVERTEXATTRIB1DNVPROC) (GLuint index, GLdouble x);
typedef void ( * PFNGLVERTEXATTRIB1DVNVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB1FNVPROC) (GLuint index, GLfloat x);
typedef void ( * PFNGLVERTEXATTRIB1FVNVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB1SNVPROC) (GLuint index, GLshort x);
typedef void ( * PFNGLVERTEXATTRIB1SVNVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB2DNVPROC) (GLuint index, GLdouble x, GLdouble y);
typedef void ( * PFNGLVERTEXATTRIB2DVNVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB2FNVPROC) (GLuint index, GLfloat x, GLfloat y);
typedef void ( * PFNGLVERTEXATTRIB2FVNVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB2SNVPROC) (GLuint index, GLshort x, GLshort y);
typedef void ( * PFNGLVERTEXATTRIB2SVNVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB3DNVPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z);
typedef void ( * PFNGLVERTEXATTRIB3DVNVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB3FNVPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLVERTEXATTRIB3FVNVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB3SNVPROC) (GLuint index, GLshort x, GLshort y, GLshort z);
typedef void ( * PFNGLVERTEXATTRIB3SVNVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4DNVPROC) (GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLVERTEXATTRIB4DVNVPROC) (GLuint index, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIB4FNVPROC) (GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLVERTEXATTRIB4FVNVPROC) (GLuint index, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIB4SNVPROC) (GLuint index, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void ( * PFNGLVERTEXATTRIB4SVNVPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIB4UBNVPROC) (GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w);
typedef void ( * PFNGLVERTEXATTRIB4UBVNVPROC) (GLuint index, const GLubyte *v);
typedef void ( * PFNGLVERTEXATTRIBS1DVNVPROC) (GLuint index, GLsizei count, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIBS1FVNVPROC) (GLuint index, GLsizei count, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIBS1SVNVPROC) (GLuint index, GLsizei count, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIBS2DVNVPROC) (GLuint index, GLsizei count, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIBS2FVNVPROC) (GLuint index, GLsizei count, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIBS2SVNVPROC) (GLuint index, GLsizei count, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIBS3DVNVPROC) (GLuint index, GLsizei count, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIBS3FVNVPROC) (GLuint index, GLsizei count, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIBS3SVNVPROC) (GLuint index, GLsizei count, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIBS4DVNVPROC) (GLuint index, GLsizei count, const GLdouble *v);
typedef void ( * PFNGLVERTEXATTRIBS4FVNVPROC) (GLuint index, GLsizei count, const GLfloat *v);
typedef void ( * PFNGLVERTEXATTRIBS4SVNVPROC) (GLuint index, GLsizei count, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIBS4UBVNVPROC) (GLuint index, GLsizei count, const GLubyte *v);
# 6159 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glTexBumpParameterivATI (GLenum, const GLint *);
__attribute__((visibility("default"))) void glTexBumpParameterfvATI (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glGetTexBumpParameterivATI (GLenum, GLint *);
__attribute__((visibility("default"))) void glGetTexBumpParameterfvATI (GLenum, GLfloat *);

typedef void ( * PFNGLTEXBUMPPARAMETERIVATIPROC) (GLenum pname, const GLint *param);
typedef void ( * PFNGLTEXBUMPPARAMETERFVATIPROC) (GLenum pname, const GLfloat *param);
typedef void ( * PFNGLGETTEXBUMPPARAMETERIVATIPROC) (GLenum pname, GLint *param);
typedef void ( * PFNGLGETTEXBUMPPARAMETERFVATIPROC) (GLenum pname, GLfloat *param);





__attribute__((visibility("default"))) GLuint glGenFragmentShadersATI (GLuint);
__attribute__((visibility("default"))) void glBindFragmentShaderATI (GLuint);
__attribute__((visibility("default"))) void glDeleteFragmentShaderATI (GLuint);
__attribute__((visibility("default"))) void glBeginFragmentShaderATI (void);
__attribute__((visibility("default"))) void glEndFragmentShaderATI (void);
__attribute__((visibility("default"))) void glPassTexCoordATI (GLuint, GLuint, GLenum);
__attribute__((visibility("default"))) void glSampleMapATI (GLuint, GLuint, GLenum);
__attribute__((visibility("default"))) void glColorFragmentOp1ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glColorFragmentOp2ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glColorFragmentOp3ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glAlphaFragmentOp1ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glAlphaFragmentOp2ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glAlphaFragmentOp3ATI (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glSetFragmentShaderConstantATI (GLuint, const GLfloat *);

typedef GLuint ( * PFNGLGENFRAGMENTSHADERSATIPROC) (GLuint range);
typedef void ( * PFNGLBINDFRAGMENTSHADERATIPROC) (GLuint id);
typedef void ( * PFNGLDELETEFRAGMENTSHADERATIPROC) (GLuint id);
typedef void ( * PFNGLBEGINFRAGMENTSHADERATIPROC) (void);
typedef void ( * PFNGLENDFRAGMENTSHADERATIPROC) (void);
typedef void ( * PFNGLPASSTEXCOORDATIPROC) (GLuint dst, GLuint coord, GLenum swizzle);
typedef void ( * PFNGLSAMPLEMAPATIPROC) (GLuint dst, GLuint interp, GLenum swizzle);
typedef void ( * PFNGLCOLORFRAGMENTOP1ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
typedef void ( * PFNGLCOLORFRAGMENTOP2ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
typedef void ( * PFNGLCOLORFRAGMENTOP3ATIPROC) (GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
typedef void ( * PFNGLALPHAFRAGMENTOP1ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod);
typedef void ( * PFNGLALPHAFRAGMENTOP2ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod);
typedef void ( * PFNGLALPHAFRAGMENTOP3ATIPROC) (GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod);
typedef void ( * PFNGLSETFRAGMENTSHADERCONSTANTATIPROC) (GLuint dst, const GLfloat *value);





__attribute__((visibility("default"))) void glPNTrianglesiATI (GLenum, GLint);
__attribute__((visibility("default"))) void glPNTrianglesfATI (GLenum, GLfloat);

typedef void ( * PFNGLPNTRIANGLESIATIPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLPNTRIANGLESFATIPROC) (GLenum pname, GLfloat param);





__attribute__((visibility("default"))) GLuint glNewObjectBufferATI (GLsizei, const GLvoid *, GLenum);
__attribute__((visibility("default"))) GLboolean glIsObjectBufferATI (GLuint);
__attribute__((visibility("default"))) void glUpdateObjectBufferATI (GLuint, GLuint, GLsizei, const GLvoid *, GLenum);
__attribute__((visibility("default"))) void glGetObjectBufferfvATI (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetObjectBufferivATI (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glFreeObjectBufferATI (GLuint);
__attribute__((visibility("default"))) void glArrayObjectATI (GLenum, GLint, GLenum, GLsizei, GLuint, GLuint);
__attribute__((visibility("default"))) void glGetArrayObjectfvATI (GLenum, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetArrayObjectivATI (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glVariantArrayObjectATI (GLuint, GLenum, GLsizei, GLuint, GLuint);
__attribute__((visibility("default"))) void glGetVariantArrayObjectfvATI (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetVariantArrayObjectivATI (GLuint, GLenum, GLint *);

typedef GLuint ( * PFNGLNEWOBJECTBUFFERATIPROC) (GLsizei size, const GLvoid *pointer, GLenum usage);
typedef GLboolean ( * PFNGLISOBJECTBUFFERATIPROC) (GLuint buffer);
typedef void ( * PFNGLUPDATEOBJECTBUFFERATIPROC) (GLuint buffer, GLuint offset, GLsizei size, const GLvoid *pointer, GLenum preserve);
typedef void ( * PFNGLGETOBJECTBUFFERFVATIPROC) (GLuint buffer, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETOBJECTBUFFERIVATIPROC) (GLuint buffer, GLenum pname, GLint *params);
typedef void ( * PFNGLFREEOBJECTBUFFERATIPROC) (GLuint buffer);
typedef void ( * PFNGLARRAYOBJECTATIPROC) (GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
typedef void ( * PFNGLGETARRAYOBJECTFVATIPROC) (GLenum array, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETARRAYOBJECTIVATIPROC) (GLenum array, GLenum pname, GLint *params);
typedef void ( * PFNGLVARIANTARRAYOBJECTATIPROC) (GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset);
typedef void ( * PFNGLGETVARIANTARRAYOBJECTFVATIPROC) (GLuint id, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETVARIANTARRAYOBJECTIVATIPROC) (GLuint id, GLenum pname, GLint *params);





__attribute__((visibility("default"))) void glBeginVertexShaderEXT (void);
__attribute__((visibility("default"))) void glEndVertexShaderEXT (void);
__attribute__((visibility("default"))) void glBindVertexShaderEXT (GLuint);
__attribute__((visibility("default"))) GLuint glGenVertexShadersEXT (GLuint);
__attribute__((visibility("default"))) void glDeleteVertexShaderEXT (GLuint);
__attribute__((visibility("default"))) void glShaderOp1EXT (GLenum, GLuint, GLuint);
__attribute__((visibility("default"))) void glShaderOp2EXT (GLenum, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glShaderOp3EXT (GLenum, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glSwizzleEXT (GLuint, GLuint, GLenum, GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) void glWriteMaskEXT (GLuint, GLuint, GLenum, GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) void glInsertComponentEXT (GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glExtractComponentEXT (GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) GLuint glGenSymbolsEXT (GLenum, GLenum, GLenum, GLuint);
__attribute__((visibility("default"))) void glSetInvariantEXT (GLuint, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glSetLocalConstantEXT (GLuint, GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glVariantbvEXT (GLuint, const GLbyte *);
__attribute__((visibility("default"))) void glVariantsvEXT (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVariantivEXT (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVariantfvEXT (GLuint, const GLfloat *);
__attribute__((visibility("default"))) void glVariantdvEXT (GLuint, const GLdouble *);
__attribute__((visibility("default"))) void glVariantubvEXT (GLuint, const GLubyte *);
__attribute__((visibility("default"))) void glVariantusvEXT (GLuint, const GLushort *);
__attribute__((visibility("default"))) void glVariantuivEXT (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVariantPointerEXT (GLuint, GLenum, GLuint, const GLvoid *);
__attribute__((visibility("default"))) void glEnableVariantClientStateEXT (GLuint);
__attribute__((visibility("default"))) void glDisableVariantClientStateEXT (GLuint);
__attribute__((visibility("default"))) GLuint glBindLightParameterEXT (GLenum, GLenum);
__attribute__((visibility("default"))) GLuint glBindMaterialParameterEXT (GLenum, GLenum);
__attribute__((visibility("default"))) GLuint glBindTexGenParameterEXT (GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) GLuint glBindTextureUnitParameterEXT (GLenum, GLenum);
__attribute__((visibility("default"))) GLuint glBindParameterEXT (GLenum);
__attribute__((visibility("default"))) GLboolean glIsVariantEnabledEXT (GLuint, GLenum);
__attribute__((visibility("default"))) void glGetVariantBooleanvEXT (GLuint, GLenum, GLboolean *);
__attribute__((visibility("default"))) void glGetVariantIntegervEXT (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetVariantFloatvEXT (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetVariantPointervEXT (GLuint, GLenum, GLvoid* *);
__attribute__((visibility("default"))) void glGetInvariantBooleanvEXT (GLuint, GLenum, GLboolean *);
__attribute__((visibility("default"))) void glGetInvariantIntegervEXT (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetInvariantFloatvEXT (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetLocalConstantBooleanvEXT (GLuint, GLenum, GLboolean *);
__attribute__((visibility("default"))) void glGetLocalConstantIntegervEXT (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetLocalConstantFloatvEXT (GLuint, GLenum, GLfloat *);

typedef void ( * PFNGLBEGINVERTEXSHADEREXTPROC) (void);
typedef void ( * PFNGLENDVERTEXSHADEREXTPROC) (void);
typedef void ( * PFNGLBINDVERTEXSHADEREXTPROC) (GLuint id);
typedef GLuint ( * PFNGLGENVERTEXSHADERSEXTPROC) (GLuint range);
typedef void ( * PFNGLDELETEVERTEXSHADEREXTPROC) (GLuint id);
typedef void ( * PFNGLSHADEROP1EXTPROC) (GLenum op, GLuint res, GLuint arg1);
typedef void ( * PFNGLSHADEROP2EXTPROC) (GLenum op, GLuint res, GLuint arg1, GLuint arg2);
typedef void ( * PFNGLSHADEROP3EXTPROC) (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
typedef void ( * PFNGLSWIZZLEEXTPROC) (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
typedef void ( * PFNGLWRITEMASKEXTPROC) (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
typedef void ( * PFNGLINSERTCOMPONENTEXTPROC) (GLuint res, GLuint src, GLuint num);
typedef void ( * PFNGLEXTRACTCOMPONENTEXTPROC) (GLuint res, GLuint src, GLuint num);
typedef GLuint ( * PFNGLGENSYMBOLSEXTPROC) (GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
typedef void ( * PFNGLSETINVARIANTEXTPROC) (GLuint id, GLenum type, const GLvoid *addr);
typedef void ( * PFNGLSETLOCALCONSTANTEXTPROC) (GLuint id, GLenum type, const GLvoid *addr);
typedef void ( * PFNGLVARIANTBVEXTPROC) (GLuint id, const GLbyte *addr);
typedef void ( * PFNGLVARIANTSVEXTPROC) (GLuint id, const GLshort *addr);
typedef void ( * PFNGLVARIANTIVEXTPROC) (GLuint id, const GLint *addr);
typedef void ( * PFNGLVARIANTFVEXTPROC) (GLuint id, const GLfloat *addr);
typedef void ( * PFNGLVARIANTDVEXTPROC) (GLuint id, const GLdouble *addr);
typedef void ( * PFNGLVARIANTUBVEXTPROC) (GLuint id, const GLubyte *addr);
typedef void ( * PFNGLVARIANTUSVEXTPROC) (GLuint id, const GLushort *addr);
typedef void ( * PFNGLVARIANTUIVEXTPROC) (GLuint id, const GLuint *addr);
typedef void ( * PFNGLVARIANTPOINTEREXTPROC) (GLuint id, GLenum type, GLuint stride, const GLvoid *addr);
typedef void ( * PFNGLENABLEVARIANTCLIENTSTATEEXTPROC) (GLuint id);
typedef void ( * PFNGLDISABLEVARIANTCLIENTSTATEEXTPROC) (GLuint id);
typedef GLuint ( * PFNGLBINDLIGHTPARAMETEREXTPROC) (GLenum light, GLenum value);
typedef GLuint ( * PFNGLBINDMATERIALPARAMETEREXTPROC) (GLenum face, GLenum value);
typedef GLuint ( * PFNGLBINDTEXGENPARAMETEREXTPROC) (GLenum unit, GLenum coord, GLenum value);
typedef GLuint ( * PFNGLBINDTEXTUREUNITPARAMETEREXTPROC) (GLenum unit, GLenum value);
typedef GLuint ( * PFNGLBINDPARAMETEREXTPROC) (GLenum value);
typedef GLboolean ( * PFNGLISVARIANTENABLEDEXTPROC) (GLuint id, GLenum cap);
typedef void ( * PFNGLGETVARIANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
typedef void ( * PFNGLGETVARIANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
typedef void ( * PFNGLGETVARIANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
typedef void ( * PFNGLGETVARIANTPOINTERVEXTPROC) (GLuint id, GLenum value, GLvoid* *data);
typedef void ( * PFNGLGETINVARIANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
typedef void ( * PFNGLGETINVARIANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
typedef void ( * PFNGLGETINVARIANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);
typedef void ( * PFNGLGETLOCALCONSTANTBOOLEANVEXTPROC) (GLuint id, GLenum value, GLboolean *data);
typedef void ( * PFNGLGETLOCALCONSTANTINTEGERVEXTPROC) (GLuint id, GLenum value, GLint *data);
typedef void ( * PFNGLGETLOCALCONSTANTFLOATVEXTPROC) (GLuint id, GLenum value, GLfloat *data);





__attribute__((visibility("default"))) void glVertexStream1sATI (GLenum, GLshort);
__attribute__((visibility("default"))) void glVertexStream1svATI (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glVertexStream1iATI (GLenum, GLint);
__attribute__((visibility("default"))) void glVertexStream1ivATI (GLenum, const GLint *);
__attribute__((visibility("default"))) void glVertexStream1fATI (GLenum, GLfloat);
__attribute__((visibility("default"))) void glVertexStream1fvATI (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glVertexStream1dATI (GLenum, GLdouble);
__attribute__((visibility("default"))) void glVertexStream1dvATI (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glVertexStream2sATI (GLenum, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexStream2svATI (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glVertexStream2iATI (GLenum, GLint, GLint);
__attribute__((visibility("default"))) void glVertexStream2ivATI (GLenum, const GLint *);
__attribute__((visibility("default"))) void glVertexStream2fATI (GLenum, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexStream2fvATI (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glVertexStream2dATI (GLenum, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexStream2dvATI (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glVertexStream3sATI (GLenum, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexStream3svATI (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glVertexStream3iATI (GLenum, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glVertexStream3ivATI (GLenum, const GLint *);
__attribute__((visibility("default"))) void glVertexStream3fATI (GLenum, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexStream3fvATI (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glVertexStream3dATI (GLenum, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexStream3dvATI (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glVertexStream4sATI (GLenum, GLshort, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glVertexStream4svATI (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glVertexStream4iATI (GLenum, GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glVertexStream4ivATI (GLenum, const GLint *);
__attribute__((visibility("default"))) void glVertexStream4fATI (GLenum, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glVertexStream4fvATI (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glVertexStream4dATI (GLenum, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glVertexStream4dvATI (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glNormalStream3bATI (GLenum, GLbyte, GLbyte, GLbyte);
__attribute__((visibility("default"))) void glNormalStream3bvATI (GLenum, const GLbyte *);
__attribute__((visibility("default"))) void glNormalStream3sATI (GLenum, GLshort, GLshort, GLshort);
__attribute__((visibility("default"))) void glNormalStream3svATI (GLenum, const GLshort *);
__attribute__((visibility("default"))) void glNormalStream3iATI (GLenum, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glNormalStream3ivATI (GLenum, const GLint *);
__attribute__((visibility("default"))) void glNormalStream3fATI (GLenum, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glNormalStream3fvATI (GLenum, const GLfloat *);
__attribute__((visibility("default"))) void glNormalStream3dATI (GLenum, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glNormalStream3dvATI (GLenum, const GLdouble *);
__attribute__((visibility("default"))) void glClientActiveVertexStreamATI (GLenum);
__attribute__((visibility("default"))) void glVertexBlendEnviATI (GLenum, GLint);
__attribute__((visibility("default"))) void glVertexBlendEnvfATI (GLenum, GLfloat);

typedef void ( * PFNGLVERTEXSTREAM1SATIPROC) (GLenum stream, GLshort x);
typedef void ( * PFNGLVERTEXSTREAM1SVATIPROC) (GLenum stream, const GLshort *coords);
typedef void ( * PFNGLVERTEXSTREAM1IATIPROC) (GLenum stream, GLint x);
typedef void ( * PFNGLVERTEXSTREAM1IVATIPROC) (GLenum stream, const GLint *coords);
typedef void ( * PFNGLVERTEXSTREAM1FATIPROC) (GLenum stream, GLfloat x);
typedef void ( * PFNGLVERTEXSTREAM1FVATIPROC) (GLenum stream, const GLfloat *coords);
typedef void ( * PFNGLVERTEXSTREAM1DATIPROC) (GLenum stream, GLdouble x);
typedef void ( * PFNGLVERTEXSTREAM1DVATIPROC) (GLenum stream, const GLdouble *coords);
typedef void ( * PFNGLVERTEXSTREAM2SATIPROC) (GLenum stream, GLshort x, GLshort y);
typedef void ( * PFNGLVERTEXSTREAM2SVATIPROC) (GLenum stream, const GLshort *coords);
typedef void ( * PFNGLVERTEXSTREAM2IATIPROC) (GLenum stream, GLint x, GLint y);
typedef void ( * PFNGLVERTEXSTREAM2IVATIPROC) (GLenum stream, const GLint *coords);
typedef void ( * PFNGLVERTEXSTREAM2FATIPROC) (GLenum stream, GLfloat x, GLfloat y);
typedef void ( * PFNGLVERTEXSTREAM2FVATIPROC) (GLenum stream, const GLfloat *coords);
typedef void ( * PFNGLVERTEXSTREAM2DATIPROC) (GLenum stream, GLdouble x, GLdouble y);
typedef void ( * PFNGLVERTEXSTREAM2DVATIPROC) (GLenum stream, const GLdouble *coords);
typedef void ( * PFNGLVERTEXSTREAM3SATIPROC) (GLenum stream, GLshort x, GLshort y, GLshort z);
typedef void ( * PFNGLVERTEXSTREAM3SVATIPROC) (GLenum stream, const GLshort *coords);
typedef void ( * PFNGLVERTEXSTREAM3IATIPROC) (GLenum stream, GLint x, GLint y, GLint z);
typedef void ( * PFNGLVERTEXSTREAM3IVATIPROC) (GLenum stream, const GLint *coords);
typedef void ( * PFNGLVERTEXSTREAM3FATIPROC) (GLenum stream, GLfloat x, GLfloat y, GLfloat z);
typedef void ( * PFNGLVERTEXSTREAM3FVATIPROC) (GLenum stream, const GLfloat *coords);
typedef void ( * PFNGLVERTEXSTREAM3DATIPROC) (GLenum stream, GLdouble x, GLdouble y, GLdouble z);
typedef void ( * PFNGLVERTEXSTREAM3DVATIPROC) (GLenum stream, const GLdouble *coords);
typedef void ( * PFNGLVERTEXSTREAM4SATIPROC) (GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w);
typedef void ( * PFNGLVERTEXSTREAM4SVATIPROC) (GLenum stream, const GLshort *coords);
typedef void ( * PFNGLVERTEXSTREAM4IATIPROC) (GLenum stream, GLint x, GLint y, GLint z, GLint w);
typedef void ( * PFNGLVERTEXSTREAM4IVATIPROC) (GLenum stream, const GLint *coords);
typedef void ( * PFNGLVERTEXSTREAM4FATIPROC) (GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLVERTEXSTREAM4FVATIPROC) (GLenum stream, const GLfloat *coords);
typedef void ( * PFNGLVERTEXSTREAM4DATIPROC) (GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLVERTEXSTREAM4DVATIPROC) (GLenum stream, const GLdouble *coords);
typedef void ( * PFNGLNORMALSTREAM3BATIPROC) (GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz);
typedef void ( * PFNGLNORMALSTREAM3BVATIPROC) (GLenum stream, const GLbyte *coords);
typedef void ( * PFNGLNORMALSTREAM3SATIPROC) (GLenum stream, GLshort nx, GLshort ny, GLshort nz);
typedef void ( * PFNGLNORMALSTREAM3SVATIPROC) (GLenum stream, const GLshort *coords);
typedef void ( * PFNGLNORMALSTREAM3IATIPROC) (GLenum stream, GLint nx, GLint ny, GLint nz);
typedef void ( * PFNGLNORMALSTREAM3IVATIPROC) (GLenum stream, const GLint *coords);
typedef void ( * PFNGLNORMALSTREAM3FATIPROC) (GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz);
typedef void ( * PFNGLNORMALSTREAM3FVATIPROC) (GLenum stream, const GLfloat *coords);
typedef void ( * PFNGLNORMALSTREAM3DATIPROC) (GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz);
typedef void ( * PFNGLNORMALSTREAM3DVATIPROC) (GLenum stream, const GLdouble *coords);
typedef void ( * PFNGLCLIENTACTIVEVERTEXSTREAMATIPROC) (GLenum stream);
typedef void ( * PFNGLVERTEXBLENDENVIATIPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLVERTEXBLENDENVFATIPROC) (GLenum pname, GLfloat param);





__attribute__((visibility("default"))) void glElementPointerATI (GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glDrawElementArrayATI (GLenum, GLsizei);
__attribute__((visibility("default"))) void glDrawRangeElementArrayATI (GLenum, GLuint, GLuint, GLsizei);

typedef void ( * PFNGLELEMENTPOINTERATIPROC) (GLenum type, const GLvoid *pointer);
typedef void ( * PFNGLDRAWELEMENTARRAYATIPROC) (GLenum mode, GLsizei count);
typedef void ( * PFNGLDRAWRANGEELEMENTARRAYATIPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count);





__attribute__((visibility("default"))) void glDrawMeshArraysSUN (GLenum, GLint, GLsizei, GLsizei);

typedef void ( * PFNGLDRAWMESHARRAYSSUNPROC) (GLenum mode, GLint first, GLsizei count, GLsizei width);
# 6465 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glGenOcclusionQueriesNV (GLsizei, GLuint *);
__attribute__((visibility("default"))) void glDeleteOcclusionQueriesNV (GLsizei, const GLuint *);
__attribute__((visibility("default"))) GLboolean glIsOcclusionQueryNV (GLuint);
__attribute__((visibility("default"))) void glBeginOcclusionQueryNV (GLuint);
__attribute__((visibility("default"))) void glEndOcclusionQueryNV (void);
__attribute__((visibility("default"))) void glGetOcclusionQueryivNV (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetOcclusionQueryuivNV (GLuint, GLenum, GLuint *);

typedef void ( * PFNGLGENOCCLUSIONQUERIESNVPROC) (GLsizei n, GLuint *ids);
typedef void ( * PFNGLDELETEOCCLUSIONQUERIESNVPROC) (GLsizei n, const GLuint *ids);
typedef GLboolean ( * PFNGLISOCCLUSIONQUERYNVPROC) (GLuint id);
typedef void ( * PFNGLBEGINOCCLUSIONQUERYNVPROC) (GLuint id);
typedef void ( * PFNGLENDOCCLUSIONQUERYNVPROC) (void);
typedef void ( * PFNGLGETOCCLUSIONQUERYIVNVPROC) (GLuint id, GLenum pname, GLint *params);
typedef void ( * PFNGLGETOCCLUSIONQUERYUIVNVPROC) (GLuint id, GLenum pname, GLuint *params);





__attribute__((visibility("default"))) void glPointParameteriNV (GLenum, GLint);
__attribute__((visibility("default"))) void glPointParameterivNV (GLenum, const GLint *);

typedef void ( * PFNGLPOINTPARAMETERINVPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLPOINTPARAMETERIVNVPROC) (GLenum pname, const GLint *params);
# 6507 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glActiveStencilFaceEXT (GLenum);

typedef void ( * PFNGLACTIVESTENCILFACEEXTPROC) (GLenum face);
# 6523 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glElementPointerAPPLE (GLenum, const GLvoid *);
__attribute__((visibility("default"))) void glDrawElementArrayAPPLE (GLenum, GLint, GLsizei);
__attribute__((visibility("default"))) void glDrawRangeElementArrayAPPLE (GLenum, GLuint, GLuint, GLint, GLsizei);
__attribute__((visibility("default"))) void glMultiDrawElementArrayAPPLE (GLenum, const GLint *, const GLsizei *, GLsizei);
__attribute__((visibility("default"))) void glMultiDrawRangeElementArrayAPPLE (GLenum, GLuint, GLuint, const GLint *, const GLsizei *, GLsizei);

typedef void ( * PFNGLELEMENTPOINTERAPPLEPROC) (GLenum type, const GLvoid *pointer);
typedef void ( * PFNGLDRAWELEMENTARRAYAPPLEPROC) (GLenum mode, GLint first, GLsizei count);
typedef void ( * PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC) (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
typedef void ( * PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC) (GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount);
typedef void ( * PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC) (GLenum mode, GLuint start, GLuint end, const GLint *first, const GLsizei *count, GLsizei primcount);





__attribute__((visibility("default"))) void glGenFencesAPPLE (GLsizei, GLuint *);
__attribute__((visibility("default"))) void glDeleteFencesAPPLE (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glSetFenceAPPLE (GLuint);
__attribute__((visibility("default"))) GLboolean glIsFenceAPPLE (GLuint);
__attribute__((visibility("default"))) GLboolean glTestFenceAPPLE (GLuint);
__attribute__((visibility("default"))) void glFinishFenceAPPLE (GLuint);
__attribute__((visibility("default"))) GLboolean glTestObjectAPPLE (GLenum, GLuint);
__attribute__((visibility("default"))) void glFinishObjectAPPLE (GLenum, GLint);

typedef void ( * PFNGLGENFENCESAPPLEPROC) (GLsizei n, GLuint *fences);
typedef void ( * PFNGLDELETEFENCESAPPLEPROC) (GLsizei n, const GLuint *fences);
typedef void ( * PFNGLSETFENCEAPPLEPROC) (GLuint fence);
typedef GLboolean ( * PFNGLISFENCEAPPLEPROC) (GLuint fence);
typedef GLboolean ( * PFNGLTESTFENCEAPPLEPROC) (GLuint fence);
typedef void ( * PFNGLFINISHFENCEAPPLEPROC) (GLuint fence);
typedef GLboolean ( * PFNGLTESTOBJECTAPPLEPROC) (GLenum object, GLuint name);
typedef void ( * PFNGLFINISHOBJECTAPPLEPROC) (GLenum object, GLint name);





__attribute__((visibility("default"))) void glBindVertexArrayAPPLE (GLuint);
__attribute__((visibility("default"))) void glDeleteVertexArraysAPPLE (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenVertexArraysAPPLE (GLsizei, GLuint *);
__attribute__((visibility("default"))) GLboolean glIsVertexArrayAPPLE (GLuint);

typedef void ( * PFNGLBINDVERTEXARRAYAPPLEPROC) (GLuint array);
typedef void ( * PFNGLDELETEVERTEXARRAYSAPPLEPROC) (GLsizei n, const GLuint *arrays);
typedef void ( * PFNGLGENVERTEXARRAYSAPPLEPROC) (GLsizei n, GLuint *arrays);
typedef GLboolean ( * PFNGLISVERTEXARRAYAPPLEPROC) (GLuint array);





__attribute__((visibility("default"))) void glVertexArrayRangeAPPLE (GLsizei, GLvoid *);
__attribute__((visibility("default"))) void glFlushVertexArrayRangeAPPLE (GLsizei, GLvoid *);
__attribute__((visibility("default"))) void glVertexArrayParameteriAPPLE (GLenum, GLint);

typedef void ( * PFNGLVERTEXARRAYRANGEAPPLEPROC) (GLsizei length, GLvoid *pointer);
typedef void ( * PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC) (GLsizei length, GLvoid *pointer);
typedef void ( * PFNGLVERTEXARRAYPARAMETERIAPPLEPROC) (GLenum pname, GLint param);
# 6595 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glDrawBuffersATI (GLsizei, const GLenum *);

typedef void ( * PFNGLDRAWBUFFERSATIPROC) (GLsizei n, const GLenum *bufs);
# 6623 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glProgramNamedParameter4fNV (GLuint, GLsizei, const GLubyte *, GLfloat, GLfloat, GLfloat, GLfloat);
__attribute__((visibility("default"))) void glProgramNamedParameter4dNV (GLuint, GLsizei, const GLubyte *, GLdouble, GLdouble, GLdouble, GLdouble);
__attribute__((visibility("default"))) void glProgramNamedParameter4fvNV (GLuint, GLsizei, const GLubyte *, const GLfloat *);
__attribute__((visibility("default"))) void glProgramNamedParameter4dvNV (GLuint, GLsizei, const GLubyte *, const GLdouble *);
__attribute__((visibility("default"))) void glGetProgramNamedParameterfvNV (GLuint, GLsizei, const GLubyte *, GLfloat *);
__attribute__((visibility("default"))) void glGetProgramNamedParameterdvNV (GLuint, GLsizei, const GLubyte *, GLdouble *);

typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4FNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4DNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, const GLfloat *v);
typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, const GLdouble *v);
typedef void ( * PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLfloat *params);
typedef void ( * PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLdouble *params);





__attribute__((visibility("default"))) void glVertex2hNV (GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glVertex2hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glVertex3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glVertex3hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glVertex4hNV (GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glVertex4hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glNormal3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glNormal3hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glColor3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glColor3hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glColor4hNV (GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glColor4hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glTexCoord1hNV (GLhalfNV);
__attribute__((visibility("default"))) void glTexCoord1hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glTexCoord2hNV (GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glTexCoord2hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glTexCoord3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glTexCoord3hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glTexCoord4hNV (GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glTexCoord4hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glMultiTexCoord1hNV (GLenum, GLhalfNV);
__attribute__((visibility("default"))) void glMultiTexCoord1hvNV (GLenum, const GLhalfNV *);
__attribute__((visibility("default"))) void glMultiTexCoord2hNV (GLenum, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glMultiTexCoord2hvNV (GLenum, const GLhalfNV *);
__attribute__((visibility("default"))) void glMultiTexCoord3hNV (GLenum, GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glMultiTexCoord3hvNV (GLenum, const GLhalfNV *);
__attribute__((visibility("default"))) void glMultiTexCoord4hNV (GLenum, GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glMultiTexCoord4hvNV (GLenum, const GLhalfNV *);
__attribute__((visibility("default"))) void glFogCoordhNV (GLhalfNV);
__attribute__((visibility("default"))) void glFogCoordhvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glSecondaryColor3hNV (GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glSecondaryColor3hvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexWeighthNV (GLhalfNV);
__attribute__((visibility("default"))) void glVertexWeighthvNV (const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttrib1hNV (GLuint, GLhalfNV);
__attribute__((visibility("default"))) void glVertexAttrib1hvNV (GLuint, const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttrib2hNV (GLuint, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glVertexAttrib2hvNV (GLuint, const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttrib3hNV (GLuint, GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glVertexAttrib3hvNV (GLuint, const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttrib4hNV (GLuint, GLhalfNV, GLhalfNV, GLhalfNV, GLhalfNV);
__attribute__((visibility("default"))) void glVertexAttrib4hvNV (GLuint, const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttribs1hvNV (GLuint, GLsizei, const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttribs2hvNV (GLuint, GLsizei, const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttribs3hvNV (GLuint, GLsizei, const GLhalfNV *);
__attribute__((visibility("default"))) void glVertexAttribs4hvNV (GLuint, GLsizei, const GLhalfNV *);

typedef void ( * PFNGLVERTEX2HNVPROC) (GLhalfNV x, GLhalfNV y);
typedef void ( * PFNGLVERTEX2HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLVERTEX3HNVPROC) (GLhalfNV x, GLhalfNV y, GLhalfNV z);
typedef void ( * PFNGLVERTEX3HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLVERTEX4HNVPROC) (GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
typedef void ( * PFNGLVERTEX4HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLNORMAL3HNVPROC) (GLhalfNV nx, GLhalfNV ny, GLhalfNV nz);
typedef void ( * PFNGLNORMAL3HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLCOLOR3HNVPROC) (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
typedef void ( * PFNGLCOLOR3HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLCOLOR4HNVPROC) (GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha);
typedef void ( * PFNGLCOLOR4HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLTEXCOORD1HNVPROC) (GLhalfNV s);
typedef void ( * PFNGLTEXCOORD1HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLTEXCOORD2HNVPROC) (GLhalfNV s, GLhalfNV t);
typedef void ( * PFNGLTEXCOORD2HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLTEXCOORD3HNVPROC) (GLhalfNV s, GLhalfNV t, GLhalfNV r);
typedef void ( * PFNGLTEXCOORD3HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLTEXCOORD4HNVPROC) (GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
typedef void ( * PFNGLTEXCOORD4HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLMULTITEXCOORD1HNVPROC) (GLenum target, GLhalfNV s);
typedef void ( * PFNGLMULTITEXCOORD1HVNVPROC) (GLenum target, const GLhalfNV *v);
typedef void ( * PFNGLMULTITEXCOORD2HNVPROC) (GLenum target, GLhalfNV s, GLhalfNV t);
typedef void ( * PFNGLMULTITEXCOORD2HVNVPROC) (GLenum target, const GLhalfNV *v);
typedef void ( * PFNGLMULTITEXCOORD3HNVPROC) (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r);
typedef void ( * PFNGLMULTITEXCOORD3HVNVPROC) (GLenum target, const GLhalfNV *v);
typedef void ( * PFNGLMULTITEXCOORD4HNVPROC) (GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q);
typedef void ( * PFNGLMULTITEXCOORD4HVNVPROC) (GLenum target, const GLhalfNV *v);
typedef void ( * PFNGLFOGCOORDHNVPROC) (GLhalfNV fog);
typedef void ( * PFNGLFOGCOORDHVNVPROC) (const GLhalfNV *fog);
typedef void ( * PFNGLSECONDARYCOLOR3HNVPROC) (GLhalfNV red, GLhalfNV green, GLhalfNV blue);
typedef void ( * PFNGLSECONDARYCOLOR3HVNVPROC) (const GLhalfNV *v);
typedef void ( * PFNGLVERTEXWEIGHTHNVPROC) (GLhalfNV weight);
typedef void ( * PFNGLVERTEXWEIGHTHVNVPROC) (const GLhalfNV *weight);
typedef void ( * PFNGLVERTEXATTRIB1HNVPROC) (GLuint index, GLhalfNV x);
typedef void ( * PFNGLVERTEXATTRIB1HVNVPROC) (GLuint index, const GLhalfNV *v);
typedef void ( * PFNGLVERTEXATTRIB2HNVPROC) (GLuint index, GLhalfNV x, GLhalfNV y);
typedef void ( * PFNGLVERTEXATTRIB2HVNVPROC) (GLuint index, const GLhalfNV *v);
typedef void ( * PFNGLVERTEXATTRIB3HNVPROC) (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z);
typedef void ( * PFNGLVERTEXATTRIB3HVNVPROC) (GLuint index, const GLhalfNV *v);
typedef void ( * PFNGLVERTEXATTRIB4HNVPROC) (GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w);
typedef void ( * PFNGLVERTEXATTRIB4HVNVPROC) (GLuint index, const GLhalfNV *v);
typedef void ( * PFNGLVERTEXATTRIBS1HVNVPROC) (GLuint index, GLsizei n, const GLhalfNV *v);
typedef void ( * PFNGLVERTEXATTRIBS2HVNVPROC) (GLuint index, GLsizei n, const GLhalfNV *v);
typedef void ( * PFNGLVERTEXATTRIBS3HVNVPROC) (GLuint index, GLsizei n, const GLhalfNV *v);
typedef void ( * PFNGLVERTEXATTRIBS4HVNVPROC) (GLuint index, GLsizei n, const GLhalfNV *v);





__attribute__((visibility("default"))) void glPixelDataRangeNV (GLenum, GLsizei, GLvoid *);
__attribute__((visibility("default"))) void glFlushPixelDataRangeNV (GLenum);

typedef void ( * PFNGLPIXELDATARANGENVPROC) (GLenum target, GLsizei length, GLvoid *pointer);
typedef void ( * PFNGLFLUSHPIXELDATARANGENVPROC) (GLenum target);





__attribute__((visibility("default"))) void glPrimitiveRestartNV (void);
__attribute__((visibility("default"))) void glPrimitiveRestartIndexNV (GLuint);

typedef void ( * PFNGLPRIMITIVERESTARTNVPROC) (void);
typedef void ( * PFNGLPRIMITIVERESTARTINDEXNVPROC) (GLuint index);
# 6767 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) GLvoid* glMapObjectBufferATI (GLuint);
__attribute__((visibility("default"))) void glUnmapObjectBufferATI (GLuint);

typedef GLvoid* ( * PFNGLMAPOBJECTBUFFERATIPROC) (GLuint buffer);
typedef void ( * PFNGLUNMAPOBJECTBUFFERATIPROC) (GLuint buffer);





__attribute__((visibility("default"))) void glStencilOpSeparateATI (GLenum, GLenum, GLenum, GLenum);
__attribute__((visibility("default"))) void glStencilFuncSeparateATI (GLenum, GLenum, GLint, GLuint);

typedef void ( * PFNGLSTENCILOPSEPARATEATIPROC) (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
typedef void ( * PFNGLSTENCILFUNCSEPARATEATIPROC) (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);





__attribute__((visibility("default"))) void glVertexAttribArrayObjectATI (GLuint, GLint, GLenum, GLboolean, GLsizei, GLuint, GLuint);
__attribute__((visibility("default"))) void glGetVertexAttribArrayObjectfvATI (GLuint, GLenum, GLfloat *);
__attribute__((visibility("default"))) void glGetVertexAttribArrayObjectivATI (GLuint, GLenum, GLint *);

typedef void ( * PFNGLVERTEXATTRIBARRAYOBJECTATIPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
typedef void ( * PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC) (GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC) (GLuint index, GLenum pname, GLint *params);
# 6803 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glDepthBoundsEXT (GLclampd, GLclampd);

typedef void ( * PFNGLDEPTHBOUNDSEXTPROC) (GLclampd zmin, GLclampd zmax);
# 6815 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glBlendEquationSeparateEXT (GLenum, GLenum);

typedef void ( * PFNGLBLENDEQUATIONSEPARATEEXTPROC) (GLenum modeRGB, GLenum modeAlpha);
# 6851 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) GLboolean glIsRenderbufferEXT (GLuint);
__attribute__((visibility("default"))) void glBindRenderbufferEXT (GLenum, GLuint);
__attribute__((visibility("default"))) void glDeleteRenderbuffersEXT (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenRenderbuffersEXT (GLsizei, GLuint *);
__attribute__((visibility("default"))) void glRenderbufferStorageEXT (GLenum, GLenum, GLsizei, GLsizei);
__attribute__((visibility("default"))) void glGetRenderbufferParameterivEXT (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) GLboolean glIsFramebufferEXT (GLuint);
__attribute__((visibility("default"))) void glBindFramebufferEXT (GLenum, GLuint);
__attribute__((visibility("default"))) void glDeleteFramebuffersEXT (GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGenFramebuffersEXT (GLsizei, GLuint *);
__attribute__((visibility("default"))) GLenum glCheckFramebufferStatusEXT (GLenum);
__attribute__((visibility("default"))) void glFramebufferTexture1DEXT (GLenum, GLenum, GLenum, GLuint, GLint);
__attribute__((visibility("default"))) void glFramebufferTexture2DEXT (GLenum, GLenum, GLenum, GLuint, GLint);
__attribute__((visibility("default"))) void glFramebufferTexture3DEXT (GLenum, GLenum, GLenum, GLuint, GLint, GLint);
__attribute__((visibility("default"))) void glFramebufferRenderbufferEXT (GLenum, GLenum, GLenum, GLuint);
__attribute__((visibility("default"))) void glGetFramebufferAttachmentParameterivEXT (GLenum, GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGenerateMipmapEXT (GLenum);

typedef GLboolean ( * PFNGLISRENDERBUFFEREXTPROC) (GLuint renderbuffer);
typedef void ( * PFNGLBINDRENDERBUFFEREXTPROC) (GLenum target, GLuint renderbuffer);
typedef void ( * PFNGLDELETERENDERBUFFERSEXTPROC) (GLsizei n, const GLuint *renderbuffers);
typedef void ( * PFNGLGENRENDERBUFFERSEXTPROC) (GLsizei n, GLuint *renderbuffers);
typedef void ( * PFNGLRENDERBUFFERSTORAGEEXTPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height);
typedef void ( * PFNGLGETRENDERBUFFERPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef GLboolean ( * PFNGLISFRAMEBUFFEREXTPROC) (GLuint framebuffer);
typedef void ( * PFNGLBINDFRAMEBUFFEREXTPROC) (GLenum target, GLuint framebuffer);
typedef void ( * PFNGLDELETEFRAMEBUFFERSEXTPROC) (GLsizei n, const GLuint *framebuffers);
typedef void ( * PFNGLGENFRAMEBUFFERSEXTPROC) (GLsizei n, GLuint *framebuffers);
typedef GLenum ( * PFNGLCHECKFRAMEBUFFERSTATUSEXTPROC) (GLenum target);
typedef void ( * PFNGLFRAMEBUFFERTEXTURE1DEXTPROC) (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void ( * PFNGLFRAMEBUFFERTEXTURE2DEXTPROC) (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level);
typedef void ( * PFNGLFRAMEBUFFERTEXTURE3DEXTPROC) (GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset);
typedef void ( * PFNGLFRAMEBUFFERRENDERBUFFEREXTPROC) (GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer);
typedef void ( * PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVEXTPROC) (GLenum target, GLenum attachment, GLenum pname, GLint *params);
typedef void ( * PFNGLGENERATEMIPMAPEXTPROC) (GLenum target);





__attribute__((visibility("default"))) void glStringMarkerGREMEDY (GLsizei, const GLvoid *);

typedef void ( * PFNGLSTRINGMARKERGREMEDYPROC) (GLsizei len, const GLvoid *string);
# 6903 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glStencilClearTagEXT (GLsizei, GLuint);

typedef void ( * PFNGLSTENCILCLEARTAGEXTPROC) (GLsizei stencilTagBits, GLuint stencilClearTag);
# 6915 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glBlitFramebufferEXT (GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLint, GLbitfield, GLenum);

typedef void ( * PFNGLBLITFRAMEBUFFEREXTPROC) (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);





__attribute__((visibility("default"))) void glRenderbufferStorageMultisampleEXT (GLenum, GLsizei, GLenum, GLsizei, GLsizei);

typedef void ( * PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC) (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
# 6935 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glGetQueryObjecti64vEXT (GLuint, GLenum, GLint64EXT *);
__attribute__((visibility("default"))) void glGetQueryObjectui64vEXT (GLuint, GLenum, GLuint64EXT *);

typedef void ( * PFNGLGETQUERYOBJECTI64VEXTPROC) (GLuint id, GLenum pname, GLint64EXT *params);
typedef void ( * PFNGLGETQUERYOBJECTUI64VEXTPROC) (GLuint id, GLenum pname, GLuint64EXT *params);





__attribute__((visibility("default"))) void glProgramEnvParameters4fvEXT (GLenum, GLuint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glProgramLocalParameters4fvEXT (GLenum, GLuint, GLsizei, const GLfloat *);

typedef void ( * PFNGLPROGRAMENVPARAMETERS4FVEXTPROC) (GLenum target, GLuint index, GLsizei count, const GLfloat *params);
typedef void ( * PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC) (GLenum target, GLuint index, GLsizei count, const GLfloat *params);





__attribute__((visibility("default"))) void glBufferParameteriAPPLE (GLenum, GLenum, GLint);
__attribute__((visibility("default"))) void glFlushMappedBufferRangeAPPLE (GLenum, GLintptr, GLsizeiptr);

typedef void ( * PFNGLBUFFERPARAMETERIAPPLEPROC) (GLenum target, GLenum pname, GLint param);
typedef void ( * PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC) (GLenum target, GLintptr offset, GLsizeiptr size);





__attribute__((visibility("default"))) void glProgramLocalParameterI4iNV (GLenum, GLuint, GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glProgramLocalParameterI4ivNV (GLenum, GLuint, const GLint *);
__attribute__((visibility("default"))) void glProgramLocalParametersI4ivNV (GLenum, GLuint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glProgramLocalParameterI4uiNV (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glProgramLocalParameterI4uivNV (GLenum, GLuint, const GLuint *);
__attribute__((visibility("default"))) void glProgramLocalParametersI4uivNV (GLenum, GLuint, GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glProgramEnvParameterI4iNV (GLenum, GLuint, GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glProgramEnvParameterI4ivNV (GLenum, GLuint, const GLint *);
__attribute__((visibility("default"))) void glProgramEnvParametersI4ivNV (GLenum, GLuint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glProgramEnvParameterI4uiNV (GLenum, GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glProgramEnvParameterI4uivNV (GLenum, GLuint, const GLuint *);
__attribute__((visibility("default"))) void glProgramEnvParametersI4uivNV (GLenum, GLuint, GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glGetProgramLocalParameterIivNV (GLenum, GLuint, GLint *);
__attribute__((visibility("default"))) void glGetProgramLocalParameterIuivNV (GLenum, GLuint, GLuint *);
__attribute__((visibility("default"))) void glGetProgramEnvParameterIivNV (GLenum, GLuint, GLint *);
__attribute__((visibility("default"))) void glGetProgramEnvParameterIuivNV (GLenum, GLuint, GLuint *);

typedef void ( * PFNGLPROGRAMLOCALPARAMETERI4INVPROC) (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void ( * PFNGLPROGRAMLOCALPARAMETERI4IVNVPROC) (GLenum target, GLuint index, const GLint *params);
typedef void ( * PFNGLPROGRAMLOCALPARAMETERSI4IVNVPROC) (GLenum target, GLuint index, GLsizei count, const GLint *params);
typedef void ( * PFNGLPROGRAMLOCALPARAMETERI4UINVPROC) (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void ( * PFNGLPROGRAMLOCALPARAMETERI4UIVNVPROC) (GLenum target, GLuint index, const GLuint *params);
typedef void ( * PFNGLPROGRAMLOCALPARAMETERSI4UIVNVPROC) (GLenum target, GLuint index, GLsizei count, const GLuint *params);
typedef void ( * PFNGLPROGRAMENVPARAMETERI4INVPROC) (GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void ( * PFNGLPROGRAMENVPARAMETERI4IVNVPROC) (GLenum target, GLuint index, const GLint *params);
typedef void ( * PFNGLPROGRAMENVPARAMETERSI4IVNVPROC) (GLenum target, GLuint index, GLsizei count, const GLint *params);
typedef void ( * PFNGLPROGRAMENVPARAMETERI4UINVPROC) (GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void ( * PFNGLPROGRAMENVPARAMETERI4UIVNVPROC) (GLenum target, GLuint index, const GLuint *params);
typedef void ( * PFNGLPROGRAMENVPARAMETERSI4UIVNVPROC) (GLenum target, GLuint index, GLsizei count, const GLuint *params);
typedef void ( * PFNGLGETPROGRAMLOCALPARAMETERIIVNVPROC) (GLenum target, GLuint index, GLint *params);
typedef void ( * PFNGLGETPROGRAMLOCALPARAMETERIUIVNVPROC) (GLenum target, GLuint index, GLuint *params);
typedef void ( * PFNGLGETPROGRAMENVPARAMETERIIVNVPROC) (GLenum target, GLuint index, GLint *params);
typedef void ( * PFNGLGETPROGRAMENVPARAMETERIUIVNVPROC) (GLenum target, GLuint index, GLuint *params);





__attribute__((visibility("default"))) void glProgramVertexLimitNV (GLenum, GLint);
__attribute__((visibility("default"))) void glFramebufferTextureEXT (GLenum, GLenum, GLuint, GLint);
__attribute__((visibility("default"))) void glFramebufferTextureLayerEXT (GLenum, GLenum, GLuint, GLint, GLint);
__attribute__((visibility("default"))) void glFramebufferTextureFaceEXT (GLenum, GLenum, GLuint, GLint, GLenum);

typedef void ( * PFNGLPROGRAMVERTEXLIMITNVPROC) (GLenum target, GLint limit);
typedef void ( * PFNGLFRAMEBUFFERTEXTUREEXTPROC) (GLenum target, GLenum attachment, GLuint texture, GLint level);
typedef void ( * PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC) (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
typedef void ( * PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC) (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);





__attribute__((visibility("default"))) void glProgramParameteriEXT (GLuint, GLenum, GLint);

typedef void ( * PFNGLPROGRAMPARAMETERIEXTPROC) (GLuint program, GLenum pname, GLint value);





__attribute__((visibility("default"))) void glVertexAttribI1iEXT (GLuint, GLint);
__attribute__((visibility("default"))) void glVertexAttribI2iEXT (GLuint, GLint, GLint);
__attribute__((visibility("default"))) void glVertexAttribI3iEXT (GLuint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glVertexAttribI4iEXT (GLuint, GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glVertexAttribI1uiEXT (GLuint, GLuint);
__attribute__((visibility("default"))) void glVertexAttribI2uiEXT (GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glVertexAttribI3uiEXT (GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glVertexAttribI4uiEXT (GLuint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glVertexAttribI1ivEXT (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttribI2ivEXT (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttribI3ivEXT (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttribI4ivEXT (GLuint, const GLint *);
__attribute__((visibility("default"))) void glVertexAttribI1uivEXT (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttribI2uivEXT (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttribI3uivEXT (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttribI4uivEXT (GLuint, const GLuint *);
__attribute__((visibility("default"))) void glVertexAttribI4bvEXT (GLuint, const GLbyte *);
__attribute__((visibility("default"))) void glVertexAttribI4svEXT (GLuint, const GLshort *);
__attribute__((visibility("default"))) void glVertexAttribI4ubvEXT (GLuint, const GLubyte *);
__attribute__((visibility("default"))) void glVertexAttribI4usvEXT (GLuint, const GLushort *);
__attribute__((visibility("default"))) void glVertexAttribIPointerEXT (GLuint, GLint, GLenum, GLsizei, const GLvoid *);
__attribute__((visibility("default"))) void glGetVertexAttribIivEXT (GLuint, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetVertexAttribIuivEXT (GLuint, GLenum, GLuint *);

typedef void ( * PFNGLVERTEXATTRIBI1IEXTPROC) (GLuint index, GLint x);
typedef void ( * PFNGLVERTEXATTRIBI2IEXTPROC) (GLuint index, GLint x, GLint y);
typedef void ( * PFNGLVERTEXATTRIBI3IEXTPROC) (GLuint index, GLint x, GLint y, GLint z);
typedef void ( * PFNGLVERTEXATTRIBI4IEXTPROC) (GLuint index, GLint x, GLint y, GLint z, GLint w);
typedef void ( * PFNGLVERTEXATTRIBI1UIEXTPROC) (GLuint index, GLuint x);
typedef void ( * PFNGLVERTEXATTRIBI2UIEXTPROC) (GLuint index, GLuint x, GLuint y);
typedef void ( * PFNGLVERTEXATTRIBI3UIEXTPROC) (GLuint index, GLuint x, GLuint y, GLuint z);
typedef void ( * PFNGLVERTEXATTRIBI4UIEXTPROC) (GLuint index, GLuint x, GLuint y, GLuint z, GLuint w);
typedef void ( * PFNGLVERTEXATTRIBI1IVEXTPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIBI2IVEXTPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIBI3IVEXTPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIBI4IVEXTPROC) (GLuint index, const GLint *v);
typedef void ( * PFNGLVERTEXATTRIBI1UIVEXTPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIBI2UIVEXTPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIBI3UIVEXTPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIBI4UIVEXTPROC) (GLuint index, const GLuint *v);
typedef void ( * PFNGLVERTEXATTRIBI4BVEXTPROC) (GLuint index, const GLbyte *v);
typedef void ( * PFNGLVERTEXATTRIBI4SVEXTPROC) (GLuint index, const GLshort *v);
typedef void ( * PFNGLVERTEXATTRIBI4UBVEXTPROC) (GLuint index, const GLubyte *v);
typedef void ( * PFNGLVERTEXATTRIBI4USVEXTPROC) (GLuint index, const GLushort *v);
typedef void ( * PFNGLVERTEXATTRIBIPOINTEREXTPROC) (GLuint index, GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void ( * PFNGLGETVERTEXATTRIBIIVEXTPROC) (GLuint index, GLenum pname, GLint *params);
typedef void ( * PFNGLGETVERTEXATTRIBIUIVEXTPROC) (GLuint index, GLenum pname, GLuint *params);





__attribute__((visibility("default"))) void glGetUniformuivEXT (GLuint, GLint, GLuint *);
__attribute__((visibility("default"))) void glBindFragDataLocationEXT (GLuint, GLuint, const GLchar *);
__attribute__((visibility("default"))) GLint glGetFragDataLocationEXT (GLuint, const GLchar *);
__attribute__((visibility("default"))) void glUniform1uiEXT (GLint, GLuint);
__attribute__((visibility("default"))) void glUniform2uiEXT (GLint, GLuint, GLuint);
__attribute__((visibility("default"))) void glUniform3uiEXT (GLint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glUniform4uiEXT (GLint, GLuint, GLuint, GLuint, GLuint);
__attribute__((visibility("default"))) void glUniform1uivEXT (GLint, GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glUniform2uivEXT (GLint, GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glUniform3uivEXT (GLint, GLsizei, const GLuint *);
__attribute__((visibility("default"))) void glUniform4uivEXT (GLint, GLsizei, const GLuint *);

typedef void ( * PFNGLGETUNIFORMUIVEXTPROC) (GLuint program, GLint location, GLuint *params);
typedef void ( * PFNGLBINDFRAGDATALOCATIONEXTPROC) (GLuint program, GLuint color, const GLchar *name);
typedef GLint ( * PFNGLGETFRAGDATALOCATIONEXTPROC) (GLuint program, const GLchar *name);
typedef void ( * PFNGLUNIFORM1UIEXTPROC) (GLint location, GLuint v0);
typedef void ( * PFNGLUNIFORM2UIEXTPROC) (GLint location, GLuint v0, GLuint v1);
typedef void ( * PFNGLUNIFORM3UIEXTPROC) (GLint location, GLuint v0, GLuint v1, GLuint v2);
typedef void ( * PFNGLUNIFORM4UIEXTPROC) (GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3);
typedef void ( * PFNGLUNIFORM1UIVEXTPROC) (GLint location, GLsizei count, const GLuint *value);
typedef void ( * PFNGLUNIFORM2UIVEXTPROC) (GLint location, GLsizei count, const GLuint *value);
typedef void ( * PFNGLUNIFORM3UIVEXTPROC) (GLint location, GLsizei count, const GLuint *value);
typedef void ( * PFNGLUNIFORM4UIVEXTPROC) (GLint location, GLsizei count, const GLuint *value);





__attribute__((visibility("default"))) void glDrawArraysInstancedEXT (GLenum, GLint, GLsizei, GLsizei);
__attribute__((visibility("default"))) void glDrawElementsInstancedEXT (GLenum, GLsizei, GLenum, const GLvoid *, GLsizei);

typedef void ( * PFNGLDRAWARRAYSINSTANCEDEXTPROC) (GLenum mode, GLint start, GLsizei count, GLsizei primcount);
typedef void ( * PFNGLDRAWELEMENTSINSTANCEDEXTPROC) (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount);
# 7123 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glTexBufferEXT (GLenum, GLenum, GLuint);

typedef void ( * PFNGLTEXBUFFEREXTPROC) (GLenum target, GLenum internalformat, GLuint buffer);
# 7143 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glDepthRangedNV (GLdouble, GLdouble);
__attribute__((visibility("default"))) void glClearDepthdNV (GLdouble);
__attribute__((visibility("default"))) void glDepthBoundsdNV (GLdouble, GLdouble);

typedef void ( * PFNGLDEPTHRANGEDNVPROC) (GLdouble zNear, GLdouble zFar);
typedef void ( * PFNGLCLEARDEPTHDNVPROC) (GLdouble depth);
typedef void ( * PFNGLDEPTHBOUNDSDNVPROC) (GLdouble zmin, GLdouble zmax);
# 7159 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glRenderbufferStorageMultisampleCoverageNV (GLenum, GLsizei, GLsizei, GLenum, GLsizei, GLsizei);

typedef void ( * PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC) (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
# 7175 "c:/projects/wii/gl2gx/libogc/include/GL/glext.h"
__attribute__((visibility("default"))) void glProgramBufferParametersfvNV (GLenum, GLuint, GLuint, GLsizei, const GLfloat *);
__attribute__((visibility("default"))) void glProgramBufferParametersIivNV (GLenum, GLuint, GLuint, GLsizei, const GLint *);
__attribute__((visibility("default"))) void glProgramBufferParametersIuivNV (GLenum, GLuint, GLuint, GLsizei, const GLuint *);

typedef void ( * PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC) (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat *params);
typedef void ( * PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC) (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint *params);
typedef void ( * PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC) (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint *params);





__attribute__((visibility("default"))) void glColorMaskIndexedEXT (GLuint, GLboolean, GLboolean, GLboolean, GLboolean);
__attribute__((visibility("default"))) void glGetBooleanIndexedvEXT (GLenum, GLuint, GLboolean *);
__attribute__((visibility("default"))) void glGetIntegerIndexedvEXT (GLenum, GLuint, GLint *);
__attribute__((visibility("default"))) void glEnableIndexedEXT (GLenum, GLuint);
__attribute__((visibility("default"))) void glDisableIndexedEXT (GLenum, GLuint);
__attribute__((visibility("default"))) GLboolean glIsEnabledIndexedEXT (GLenum, GLuint);

typedef void ( * PFNGLCOLORMASKINDEXEDEXTPROC) (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
typedef void ( * PFNGLGETBOOLEANINDEXEDVEXTPROC) (GLenum target, GLuint index, GLboolean *data);
typedef void ( * PFNGLGETINTEGERINDEXEDVEXTPROC) (GLenum target, GLuint index, GLint *data);
typedef void ( * PFNGLENABLEINDEXEDEXTPROC) (GLenum target, GLuint index);
typedef void ( * PFNGLDISABLEINDEXEDEXTPROC) (GLenum target, GLuint index);
typedef GLboolean ( * PFNGLISENABLEDINDEXEDEXTPROC) (GLenum target, GLuint index);





__attribute__((visibility("default"))) void glBeginTransformFeedbackNV (GLenum);
__attribute__((visibility("default"))) void glEndTransformFeedbackNV (void);
__attribute__((visibility("default"))) void glTransformFeedbackAttribsNV (GLuint, const GLint *, GLenum);
__attribute__((visibility("default"))) void glBindBufferRangeNV (GLenum, GLuint, GLuint, GLintptr, GLsizeiptr);
__attribute__((visibility("default"))) void glBindBufferOffsetNV (GLenum, GLuint, GLuint, GLintptr);
__attribute__((visibility("default"))) void glBindBufferBaseNV (GLenum, GLuint, GLuint);
__attribute__((visibility("default"))) void glTransformFeedbackVaryingsNV (GLuint, GLsizei, const GLint *, GLenum);
__attribute__((visibility("default"))) void glActiveVaryingNV (GLuint, const GLchar *);
__attribute__((visibility("default"))) GLint glGetVaryingLocationNV (GLuint, const GLchar *);
__attribute__((visibility("default"))) void glGetActiveVaryingNV (GLuint, GLuint, GLsizei, GLsizei *, GLsizei *, GLenum *, GLchar *);
__attribute__((visibility("default"))) void glGetTransformFeedbackVaryingNV (GLuint, GLuint, GLint *);

typedef void ( * PFNGLBEGINTRANSFORMFEEDBACKNVPROC) (GLenum primitiveMode);
typedef void ( * PFNGLENDTRANSFORMFEEDBACKNVPROC) (void);
typedef void ( * PFNGLTRANSFORMFEEDBACKATTRIBSNVPROC) (GLuint count, const GLint *attribs, GLenum bufferMode);
typedef void ( * PFNGLBINDBUFFERRANGENVPROC) (GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size);
typedef void ( * PFNGLBINDBUFFEROFFSETNVPROC) (GLenum target, GLuint index, GLuint buffer, GLintptr offset);
typedef void ( * PFNGLBINDBUFFERBASENVPROC) (GLenum target, GLuint index, GLuint buffer);
typedef void ( * PFNGLTRANSFORMFEEDBACKVARYINGSNVPROC) (GLuint program, GLsizei count, const GLint *locations, GLenum bufferMode);
typedef void ( * PFNGLACTIVEVARYINGNVPROC) (GLuint program, const GLchar *name);
typedef GLint ( * PFNGLGETVARYINGLOCATIONNVPROC) (GLuint program, const GLchar *name);
typedef void ( * PFNGLGETACTIVEVARYINGNVPROC) (GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name);
typedef void ( * PFNGLGETTRANSFORMFEEDBACKVARYINGNVPROC) (GLuint program, GLuint index, GLint *location);





__attribute__((visibility("default"))) void glUniformBufferEXT (GLuint, GLint, GLuint);
__attribute__((visibility("default"))) GLint glGetUniformBufferSizeEXT (GLuint, GLint);
__attribute__((visibility("default"))) GLintptr glGetUniformOffsetEXT (GLuint, GLint);

typedef void ( * PFNGLUNIFORMBUFFEREXTPROC) (GLuint program, GLint location, GLuint buffer);
typedef GLint ( * PFNGLGETUNIFORMBUFFERSIZEEXTPROC) (GLuint program, GLint location);
typedef GLintptr ( * PFNGLGETUNIFORMOFFSETEXTPROC) (GLuint program, GLint location);





__attribute__((visibility("default"))) void glTexParameterIivEXT (GLenum, GLenum, const GLint *);
__attribute__((visibility("default"))) void glTexParameterIuivEXT (GLenum, GLenum, const GLuint *);
__attribute__((visibility("default"))) void glGetTexParameterIivEXT (GLenum, GLenum, GLint *);
__attribute__((visibility("default"))) void glGetTexParameterIuivEXT (GLenum, GLenum, GLuint *);
__attribute__((visibility("default"))) void glClearColorIiEXT (GLint, GLint, GLint, GLint);
__attribute__((visibility("default"))) void glClearColorIuiEXT (GLuint, GLuint, GLuint, GLuint);

typedef void ( * PFNGLTEXPARAMETERIIVEXTPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLTEXPARAMETERIUIVEXTPROC) (GLenum target, GLenum pname, const GLuint *params);
typedef void ( * PFNGLGETTEXPARAMETERIIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETTEXPARAMETERIUIVEXTPROC) (GLenum target, GLenum pname, GLuint *params);
typedef void ( * PFNGLCLEARCOLORIIEXTPROC) (GLint red, GLint green, GLint blue, GLint alpha);
typedef void ( * PFNGLCLEARCOLORIUIEXTPROC) (GLuint red, GLuint green, GLuint blue, GLuint alpha);





__attribute__((visibility("default"))) void glFrameTerminatorGREMEDY (void);

typedef void ( * PFNGLFRAMETERMINATORGREMEDYPROC) (void);
# 1673 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h" 2
# 1687 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
__attribute__((visibility("default"))) GLhandleARB glCreateDebugObjectMESA (void);
__attribute__((visibility("default"))) void glClearDebugLogMESA (GLhandleARB obj, GLenum logType, GLenum shaderType);
__attribute__((visibility("default"))) void glGetDebugLogMESA (GLhandleARB obj, GLenum logType, GLenum shaderType, GLsizei maxLength,
                                         GLsizei *length, GLcharARB *debugLog);
__attribute__((visibility("default"))) GLsizei glGetDebugLogLengthMESA (GLhandleARB obj, GLenum logType, GLenum shaderType);
# 1726 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
typedef void (*GLprogramcallbackMESA)(GLenum target, GLvoid *data);

__attribute__((visibility("default"))) void glProgramCallbackMESA(GLenum target, GLprogramcallbackMESA callback, GLvoid *data);

__attribute__((visibility("default"))) void glGetProgramRegisterfvMESA(GLenum target, GLsizei len, const GLubyte *name, GLfloat *v);
# 1740 "c:/projects/wii/gl2gx/libogc/include/GL/gl.h"
__attribute__((visibility("default"))) void glBlendEquationSeparateATI( GLenum modeRGB, GLenum modeA );
typedef void ( * PFNGLBLENDEQUATIONSEPARATEATIPROC) (GLenum modeRGB, GLenum modeA);
# 7 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h" 2


# 1 "c:/devkitPRO/libogc/include/ogcsys.h" 1



# 1 "c:/devkitPRO/libogc/include/gccore.h" 1
# 39 "c:/devkitPRO/libogc/include/gccore.h"
# 1 "c:/devkitPRO/libogc/include/ogc/dsp.h" 1
# 39 "c:/devkitPRO/libogc/include/ogc/dsp.h"
# 1 "c:/devkitPRO/libogc/include/gctypes.h" 1
# 15 "c:/devkitPRO/libogc/include/gctypes.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

typedef signed char s8;
typedef signed short s16;
typedef signed int s32;
typedef signed long long s64;

typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned int vu32;
typedef volatile unsigned long long vu64;

typedef volatile signed char vs8;
typedef volatile signed short vs16;
typedef volatile signed int vs32;
typedef volatile signed long long vs64;


typedef s16 sfp16;
typedef s32 sfp32;
typedef u16 ufp16;
typedef u32 ufp32;

typedef float f32;
typedef double f64;

typedef volatile float vf32;
typedef volatile double vf64;







typedef u8 bool;
enum { false, true };


typedef unsigned int BOOL;
# 99 "c:/devkitPRO/libogc/include/gctypes.h"
struct __argv {
 int argvMagic;
 char *commandLine;
 int length;
 int argc;
 char **argv;
 char **endARGV;
};


extern struct __argv *__system_argv;
# 40 "c:/devkitPRO/libogc/include/ogc/dsp.h" 2
# 80 "c:/devkitPRO/libogc/include/ogc/dsp.h"
typedef struct _dsp_task dsptask_t;






typedef void (*DSPTaskCallback)(dsptask_t *task);





typedef void (*DSPCallback)(void);
# 115 "c:/devkitPRO/libogc/include/ogc/dsp.h"
struct _dsp_task {
 vu32 state;
 vu32 prio;
 vu32 flags;

 u16 init_vec;
 u16 resume_vec;

 u16 *iram_maddr;
 u32 iram_len;
 u16 iram_addr;

 u16 *dram_maddr;
 u32 dram_len;
 u16 dram_addr;

 DSPTaskCallback init_cb;
 DSPTaskCallback res_cb;
 DSPTaskCallback done_cb;
 DSPTaskCallback req_cb;

 struct _dsp_task *next;
 struct _dsp_task *prev;
};







void DSP_Init();







u32 DSP_CheckMailTo();







u32 DSP_CheckMailFrom();







u32 DSP_ReadMailFrom();







void DSP_AssertInt();
# 187 "c:/devkitPRO/libogc/include/ogc/dsp.h"
void DSP_SendMailTo(u32 mail);







u32 DSP_ReadCPUtoDSP();
# 204 "c:/devkitPRO/libogc/include/ogc/dsp.h"
dsptask_t* DSP_AddTask(dsptask_t *task);

dsptask_t* DSP_AssertTask(dsptask_t *task);

void DSP_CancelTask(dsptask_t *task);

void DSP_Reset();

void DSP_Halt();

void DSP_Unhalt();







DSPCallback DSP_RegisterCallback(DSPCallback usr_cb);
# 40 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/aram.h" 1
# 81 "c:/devkitPRO/libogc/include/ogc/aram.h"
typedef void (*ARCallback)(void);
# 94 "c:/devkitPRO/libogc/include/ogc/aram.h"
ARCallback AR_RegisterCallback(ARCallback callback);
# 103 "c:/devkitPRO/libogc/include/ogc/aram.h"
u32 AR_GetDMAStatus();
# 147 "c:/devkitPRO/libogc/include/ogc/aram.h"
u32 AR_Init(u32 *stack_idx_array,u32 num_entries);
# 167 "c:/devkitPRO/libogc/include/ogc/aram.h"
void AR_StartDMA(u32 dir,u32 memaddr,u32 aramaddr,u32 len);
# 180 "c:/devkitPRO/libogc/include/ogc/aram.h"
u32 AR_Alloc(u32 len);
# 191 "c:/devkitPRO/libogc/include/ogc/aram.h"
u32 AR_Free(u32 *len);
# 202 "c:/devkitPRO/libogc/include/ogc/aram.h"
void AR_Clear(u32 flag);
# 212 "c:/devkitPRO/libogc/include/ogc/aram.h"
BOOL AR_CheckInit();
# 223 "c:/devkitPRO/libogc/include/ogc/aram.h"
void AR_Reset();
# 232 "c:/devkitPRO/libogc/include/ogc/aram.h"
u32 AR_GetSize();
# 241 "c:/devkitPRO/libogc/include/ogc/aram.h"
u32 AR_GetBaseAddress();
# 250 "c:/devkitPRO/libogc/include/ogc/aram.h"
u32 AR_GetInternalSize();
# 41 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/arqueue.h" 1
# 36 "c:/devkitPRO/libogc/include/ogc/arqueue.h"
# 1 "c:/devkitPRO/libogc/include/ogc/lwp_queue.h" 1
# 16 "c:/devkitPRO/libogc/include/ogc/lwp_queue.h"
typedef struct _lwpnode {
 struct _lwpnode *next;
 struct _lwpnode *prev;
} lwp_node;

typedef struct _lwpqueue {
 lwp_node *first;
 lwp_node *perm_null;
 lwp_node *last;
} lwp_queue;

void __lwp_queue_initialize(lwp_queue *,void *,u32,u32);
lwp_node* __lwp_queue_get(lwp_queue *);
void __lwp_queue_append(lwp_queue *,lwp_node *);
void __lwp_queue_extract(lwp_node *);
void __lwp_queue_insert(lwp_node *,lwp_node *);
# 37 "c:/devkitPRO/libogc/include/ogc/arqueue.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/aram.h" 1
# 38 "c:/devkitPRO/libogc/include/ogc/arqueue.h" 2
# 51 "c:/devkitPRO/libogc/include/ogc/arqueue.h"
enum {
 ARQ_TASK_READY = 0,
 ARQ_TASK_RUNNING,
 ARQ_TASK_FINISHED
};

typedef struct _arq_request ARQRequest;
typedef void (*ARQCallback)(ARQRequest *);

struct _arq_request {
 lwp_node node;
 u32 owner,dir,prio,state;
 u32 aram_addr,mram_addr,len;
 ARQCallback callback;
};

void ARQ_Init();
void ARQ_Reset();
# 86 "c:/devkitPRO/libogc/include/ogc/arqueue.h"
void ARQ_PostRequest(ARQRequest *req,u32 owner,u32 dir,u32 prio,u32 aram_addr,u32 mram_addr,u32 len);
# 104 "c:/devkitPRO/libogc/include/ogc/arqueue.h"
void ARQ_PostRequestAsync(ARQRequest *req,u32 owner,u32 dir,u32 prio,u32 aram_addr,u32 mram_addr,u32 len,ARQCallback cb);
void ARQ_RemoveRequest(ARQRequest *req);
void ARQ_SetChunkSize(u32 size);
u32 ARQ_GetChunkSize();
void ARQ_FlushQueue();
u32 ARQ_RemoveOwnerRequest(u32 owner);
# 42 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/arqmgr.h" 1
# 56 "c:/devkitPRO/libogc/include/ogc/arqmgr.h"
typedef void (*ARQMCallback)(s32 result);
# 68 "c:/devkitPRO/libogc/include/ogc/arqmgr.h"
void ARQM_Init(u32 arambase,s32 len);
# 80 "c:/devkitPRO/libogc/include/ogc/arqmgr.h"
u32 ARQM_PushData(void *buffer,s32 len);
# 89 "c:/devkitPRO/libogc/include/ogc/arqmgr.h"
u32 ARQM_GetZeroBuffer();
# 98 "c:/devkitPRO/libogc/include/ogc/arqmgr.h"
u32 ARQM_GetStackPointer();
# 107 "c:/devkitPRO/libogc/include/ogc/arqmgr.h"
u32 ARQM_GetFreeSize();
# 43 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/audio.h" 1
# 79 "c:/devkitPRO/libogc/include/ogc/audio.h"
typedef void (*AIDCallback)(void);
# 88 "c:/devkitPRO/libogc/include/ogc/audio.h"
typedef void (*AISCallback)(u32 smp_cnt);
# 99 "c:/devkitPRO/libogc/include/ogc/audio.h"
AISCallback AUDIO_RegisterStreamCallback(AISCallback callback);
# 110 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_Init(u8 *stack);
# 121 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_SetStreamVolLeft(u8 vol);
# 130 "c:/devkitPRO/libogc/include/ogc/audio.h"
u8 AUDIO_GetStreamVolLeft();
# 141 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_SetStreamVolRight(u8 vol);
# 150 "c:/devkitPRO/libogc/include/ogc/audio.h"
u8 AUDIO_GetStreamVolRight();
# 161 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_SetStreamSampleRate(u32 rate);
# 170 "c:/devkitPRO/libogc/include/ogc/audio.h"
u32 AUDIO_GetStreamSampleRate();
# 184 "c:/devkitPRO/libogc/include/ogc/audio.h"
AIDCallback AUDIO_RegisterDMACallback(AIDCallback callback);
# 196 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_InitDMA(u32 startaddr,u32 len);
# 205 "c:/devkitPRO/libogc/include/ogc/audio.h"
u16 AUDIO_GetDMAEnableFlag();
# 217 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_StartDMA();
# 226 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_StopDMA();
# 235 "c:/devkitPRO/libogc/include/ogc/audio.h"
u32 AUDIO_GetDMABytesLeft();
# 244 "c:/devkitPRO/libogc/include/ogc/audio.h"
u32 AUDIO_GetDMALength();
# 253 "c:/devkitPRO/libogc/include/ogc/audio.h"
u32 AUDIO_GetDMAStartAddr();
# 264 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_SetStreamTrigger(u32 cnt);
# 273 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_ResetStreamSampleCnt();
# 284 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_SetDSPSampleRate(u8 rate);
# 293 "c:/devkitPRO/libogc/include/ogc/audio.h"
u32 AUDIO_GetDSPSampleRate();
# 304 "c:/devkitPRO/libogc/include/ogc/audio.h"
void AUDIO_SetStreamPlayState(u32 state);
# 313 "c:/devkitPRO/libogc/include/ogc/audio.h"
u32 AUDIO_GetStreamPlayState();
# 44 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/cache.h" 1
# 57 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCEnable();
# 66 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCDisable();
# 78 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCFreeze();
# 90 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCUnfreeze();
# 102 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCFlashInvalidate();
# 116 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCInvalidateRange(void *startaddress,u32 len);
# 131 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCFlushRange(void *startaddress,u32 len);
# 144 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCStoreRange(void *startaddress,u32 len);
# 159 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCFlushRangeNoSync(void *startaddress,u32 len);
# 173 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCStoreRangeNoSync(void *startaddress,u32 len);
# 185 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCZeroRange(void *startaddress,u32 len);
# 197 "c:/devkitPRO/libogc/include/ogc/cache.h"
void DCTouchRange(void *startaddress,u32 len);
# 208 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICSync();
# 220 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICFlashInvalidate();
# 229 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICEnable();
# 238 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICDisable();
# 250 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICFreeze();
# 262 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICUnfreeze();
# 275 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICBlockInvalidate(void *startaddress);
# 289 "c:/devkitPRO/libogc/include/ogc/cache.h"
void ICInvalidateRange(void *startaddress,u32 len);

void LCEnable();
void LCDisable();
void LCLoadBlocks(void *,void *,u32);
void LCStoreBlocks(void *,void *,u32);
u32 LCLoadData(void *,void *,u32);
u32 LCStoreData(void *,void *,u32);
u32 LCQueueLength();
u32 LCQueueWait(u32);
void LCFlushQueue();
void LCAlloc(void *,u32);
void LCAllocNoInvalidate(void *,u32);
void LCAllocOneTag(BOOL,void *);
void LCAllocTags(BOOL,void *,u32);
# 45 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/card.h" 1
# 129 "c:/devkitPRO/libogc/include/ogc/card.h"
typedef struct _card_file {
 s32 chn;
 s32 filenum;
 s32 offset;
 s32 len;
 u16 iblock;
} card_file;
# 148 "c:/devkitPRO/libogc/include/ogc/card.h"
typedef struct _card_dir {
      s32 chn;
      u32 fileno;
   u32 filelen;
   u8 permissions;
      u8 filename[32];
      u8 gamecode[4];
      u8 company[2];
      bool showall;
} card_dir;
# 176 "c:/devkitPRO/libogc/include/ogc/card.h"
typedef struct _card_stat {
 u8 filename[32];
 u32 len;
 u32 time;
 u8 gamecode[4];
 u8 company[2];
 u8 banner_fmt;
 u32 icon_addr;
 u16 icon_fmt;
 u16 iconfmt[8];
 u16 icon_speed;
 u16 iconspeed[8];
 u32 comment_addr;
 u32 offset_banner;
 u32 offset_banner_tlut;
 u32 offset_icon[8];
 u32 offset_icon_tlut[8];
 u32 offset_data;
} card_stat;
# 210 "c:/devkitPRO/libogc/include/ogc/card.h"
typedef void (*cardcallback)(s32 chan,s32 result);
# 220 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Init(const char *gamecode,const char *company);
# 229 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Probe(s32 chn);
# 240 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_ProbeEx(s32 chn,s32 *mem_size,s32 *sect_size);
# 251 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Mount(s32 chn,void *workarea,cardcallback detach_cb);
# 263 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_MountAsync(s32 chn,void *workarea,cardcallback detach_cb,cardcallback attach_cb);
# 272 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Unmount(s32 chn);
# 284 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Read(card_file *file,void *buffer,u32 len,u32 offset);
# 297 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_ReadAsync(card_file *file,void *buffer,u32 len,u32 offset,cardcallback callback);
# 308 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Open(s32 chn,const char *filename,card_file *file);
# 319 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_OpenEntry(s32 chn,card_dir *entry,card_file *file);
# 328 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Close(card_file *file);
# 340 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Create(s32 chn,const char *filename,u32 size,card_file *file);
# 353 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_CreateAsync(s32 chn,const char *filename,u32 size,card_file *file,cardcallback callback);
# 364 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_CreateEntry(s32 chn,card_dir *direntry,card_file *file);
# 376 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_CreateEntryAsync(s32 chn,card_dir *direntry,card_file *file,cardcallback callback);
# 386 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Delete(s32 chn,const char *filename);
# 397 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_DeleteAsync(s32 chn,const char *filename,cardcallback callback);
# 407 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_DeleteEntry(s32 chn,card_dir *dir_entry);
# 418 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_DeleteEntryAsync(s32 chn,card_dir *dir_entry,cardcallback callback);
# 430 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_Write(card_file *file,void *buffer,u32 len,u32 offset);
# 443 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_WriteAsync(card_file *file,void *buffer,u32 len,u32 offset,cardcallback callback);
# 452 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_GetErrorCode(s32 chn);
# 463 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_FindFirst(s32 chn, card_dir *dir, bool showall);
# 472 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_FindNext(card_dir *dir);
# 484 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_GetDirectory(s32 chn, card_dir *dir_entries, s32 *count, bool showall);
# 494 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_GetSectorSize(s32 chn,u32 *sector_size);
# 504 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_GetBlockCount(s32 chn,u32 *block_count);
# 515 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_GetStatus(s32 chn,s32 fileno,card_stat *stats);
# 526 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_SetStatus(s32 chn,s32 fileno,card_stat *stats);
# 538 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_SetStatusAsync(s32 chn,s32 fileno,card_stat *stats,cardcallback callback);
# 549 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_GetAttributes(s32 chn,s32 fileno,u8 *attr);
# 560 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_SetAttributes(s32 chn,s32 fileno,u8 attr);
# 572 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_SetAttributesAsync(s32 chn,s32 fileno,u8 attr,cardcallback callback);




s32 CARD_Format(s32 chn);



s32 CARD_FormatAsync(s32 chn,cardcallback callback);
# 590 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_SetCompany(const char *company);
# 599 "c:/devkitPRO/libogc/include/ogc/card.h"
s32 CARD_SetGamecode(const char *gamecode);
# 46 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/cast.h" 1
# 33 "c:/devkitPRO/libogc/include/ogc/cast.h"
static inline void CAST_Init()
{
 __asm__ __volatile__ (
  "li		3,0x0004\n		 oris	3,3,0x0004\n		 mtspr	914,3\n		 li		3,0x0005\n		 oris	3,3,0x0005\n		 mtspr	915,3\n		 li		3,0x0006\n		 oris	3,3,0x0006\n		 mtspr	916,3\n		 li		3,0x0007\n		 oris	3,3,0x0007\n		 mtspr	917,3\n"
# 48 "c:/devkitPRO/libogc/include/ogc/cast.h"
   : : : "r3"
 );
}

static inline void CAST_SetGQR2(u32 type,u32 scale)
{
 register u32 val = (((((scale)<<8)|(type))<<16)|(((scale)<<8)|(type)));
 asm volatile("mtspr %0,%1" : : "i"(914), "b"(val));
}

static inline void CAST_SetGQR3(u32 type,u32 scale)
{
 register u32 val = (((((scale)<<8)|(type))<<16)|(((scale)<<8)|(type)));
 asm volatile("mtspr %0,%1" : : "i"(915), "b"(val));
}

static inline void CAST_SetGQR4(u32 type,u32 scale)
{
 register u32 val = (((((scale)<<8)|(type))<<16)|(((scale)<<8)|(type)));
 asm volatile("mtspr %0,%1" : : "i"(916), "b"(val));
}

static inline void CAST_SetGQR5(u32 type,u32 scale)
{
 register u32 val = (((((scale)<<8)|(type))<<16)|(((scale)<<8)|(type)));
 asm volatile("mtspr %0,%1" : : "i"(917), "b"(val));
}

static inline void CAST_SetGQR6(u32 type,u32 scale)
{
 register u32 val = (((((scale)<<8)|(type))<<16)|(((scale)<<8)|(type)));
 asm volatile("mtspr %0,%1" : : "i"(918), "b"(val));
}

static inline void CAST_SetGQR7(u32 type,u32 scale)
{
 register u32 val = (((((scale)<<8)|(type))<<16)|(((scale)<<8)|(type)));
 asm volatile("mtspr %0,%1" : : "i"(919), "b"(val));
}
# 95 "c:/devkitPRO/libogc/include/ogc/cast.h"
static inline f32 __castu8f32(register u8 *in)
{
 register f32 rval;
 __asm__ __volatile__ (
  "psq_l	%[rval],0(%[in]),1,2" : [rval]"=f"(rval) : [in]"r"(in)
 );
 return rval;
}

static inline f32 __castu16f32(register u16 *in)
{
 register f32 rval;
 __asm__ __volatile__ (
  "psq_l	%[rval],0(%[in]),1,3" : [rval]"=f"(rval) : [in]"r"(in)
 );
 return rval;
}

static inline f32 __casts8f32(register s8 *in)
{
 register f32 rval;
 __asm__ __volatile__ (
  "psq_l	%[rval],0(%[in]),1,4" : [rval]"=f"(rval) : [in]"r"(in)
 );
 return rval;
}

static inline f32 __casts16f32(register s16 *in)
{
 register f32 rval;
 __asm__ __volatile__ (
  "psq_l	%[rval],0(%[in]),1,5" : [rval]"=f"(rval) : [in]"r"(in)
 );
 return rval;
}

static inline void castu8f32(register u8 *in,volatile register f32 *out)
{
 *out = __castu8f32(in);
}

static inline void castu16f32(register u16 *in,volatile register f32 *out)
{
 *out = __castu16f32(in);
}

static inline void casts8f32(register s8 *in,volatile register f32 *out)
{
 *out = __casts8f32(in);
}

static inline void casts16f32(register s16 *in,volatile register f32 *out)
{
 *out = __casts16f32(in);
}







static inline u8 __castf32u8(register f32 in)
{
 f32 a;
 register u8 rval;
 register f32 *ptr = &a;

 __asm__ __volatile__ (
  "psq_st	%[in],0(%[ptr]),1,2\n"
  "lbz	%[out],0(%[ptr])\n"
  : [out]"=r"(rval), [ptr]"+r"(ptr) : [in]"f"(in)
 );
 return rval;
}

static inline u16 __castf32u16(register f32 in)
{
 f32 a;
 register u16 rval;
 register f32 *ptr = &a;

 __asm__ __volatile__ (
  "psq_st	%[in],0(%[ptr]),1,3\n"
  "lhz	%[out],0(%[ptr])\n"
  : [out]"=r"(rval), [ptr]"+r"(ptr) : [in]"f"(in)
 );
 return rval;
}

static inline s8 __castf32s8(register f32 in)
{
 f32 a;
 register s8 rval;
 register f32 *ptr = &a;

 __asm__ __volatile__ (
  "psq_st	%[in],0(%[ptr]),1,4\n"
  "lbz	%[out],0(%[ptr])\n"
  : [out]"=r"(rval), [ptr]"+r"(ptr) : [in]"f"(in)
 );
 return rval;
}

static inline s16 __castf32s16(register f32 in)
{
 f32 a;
 register s16 rval;
 register f32 *ptr = &a;

 __asm__ __volatile__ (
  "psq_st	%[in],0(%[ptr]),1,5\n"
  "lha	%[out],0(%[ptr])\n"
  : [out]"=r"(rval), [ptr]"+r"(ptr) : [in]"f"(in)
 );
 return rval;
}

static inline void castf32u8(register f32 *in,volatile register u8 *out)
{
 *out = __castf32u8(*in);
}

static inline void castf32u16(register f32 *in,volatile register u16 *out)
{
 *out = __castf32u16(*in);
}

static inline void castf32s8(register f32 *in,volatile register s8 *out)
{
 *out = __castf32s8(*in);
}

static inline void castf32s16(register f32 *in,volatile register s16 *out)
{
 *out = __castf32s16(*in);
}
# 47 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/color.h" 1
# 48 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/consol.h" 1
# 10 "c:/devkitPRO/libogc/include/ogc/consol.h"
# 1 "c:/devkitPRO/libogc/include/ogc/gx_struct.h" 1
# 58 "c:/devkitPRO/libogc/include/ogc/gx_struct.h"
typedef struct _gx_rmodeobj {
 u32 viTVMode;
 u16 fbWidth;
 u16 efbHeight;
 u16 xfbHeight;
 u16 viXOrigin;
 u16 viYOrigin;
 u16 viWidth;
 u16 viHeight;
 u32 xfbMode;
 u8 field_rendering;
 u8 aa;
 u8 sample_pattern[12][2];
 u8 vfilter[7];
} GXRModeObj;
# 11 "c:/devkitPRO/libogc/include/ogc/consol.h" 2
# 31 "c:/devkitPRO/libogc/include/ogc/consol.h"
void CON_Init(void *framebuffer,int xstart,int ystart,int xres,int yres,int stride);
# 44 "c:/devkitPRO/libogc/include/ogc/consol.h"
s32 CON_InitEx(GXRModeObj *rmode, s32 conXOrigin,s32 conYOrigin,s32 conWidth,s32 conHeight);
# 54 "c:/devkitPRO/libogc/include/ogc/consol.h"
void CON_GetMetrics(int *cols, int *rows);
# 64 "c:/devkitPRO/libogc/include/ogc/consol.h"
void CON_GetPosition(int *cols, int *rows);
# 75 "c:/devkitPRO/libogc/include/ogc/consol.h"
void CON_EnableGecko(int channel,int safe);
# 49 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/dvd.h" 1
# 110 "c:/devkitPRO/libogc/include/ogc/dvd.h"
typedef struct _dvddiskid dvddiskid;
# 127 "c:/devkitPRO/libogc/include/ogc/dvd.h"
struct _dvddiskid {
 s8 gamename[4];
 s8 company[2];
 u8 disknum;
 u8 gamever;
 u8 streaming;
 u8 streambufsize;
 u8 pad[22];
};





typedef struct _dvdcmdblk dvdcmdblk;






typedef void (*dvdcbcallback)(s32 result,dvdcmdblk *block);







struct _dvdcmdblk {
 lwp_node node;
 u32 cmd;
 s32 state;
 s64 offset;
 u32 len;
 void *buf;
 u32 currtxsize;
 u32 txdsize;
 dvddiskid *id;
 dvdcbcallback cb;
 void *usrdata;
};






typedef struct _dvddrvinfo dvddrvinfo;
# 189 "c:/devkitPRO/libogc/include/ogc/dvd.h"
struct _dvddrvinfo {
 u16 rev_level;
 u16 dev_code;
 u32 rel_date;
 u8 pad[24];
};






typedef struct _dvdfileinfo dvdfileinfo;
# 211 "c:/devkitPRO/libogc/include/ogc/dvd.h"
typedef void (*dvdcallback)(s32 result,dvdfileinfo *info);







struct _dvdfileinfo {
 dvdcmdblk block;
 u32 addr;
 u32 len;
 dvdcallback cb;
};
# 235 "c:/devkitPRO/libogc/include/ogc/dvd.h"
void DVD_Init();
void DVD_Pause();
# 247 "c:/devkitPRO/libogc/include/ogc/dvd.h"
void DVD_Reset(u32 reset_mode);
# 258 "c:/devkitPRO/libogc/include/ogc/dvd.h"
s32 DVD_Mount();
s32 DVD_GetDriveStatus();
# 282 "c:/devkitPRO/libogc/include/ogc/dvd.h"
s32 DVD_MountAsync(dvdcmdblk *block,dvdcbcallback cb);
# 296 "c:/devkitPRO/libogc/include/ogc/dvd.h"
s32 DVD_ControlDrive(dvdcmdblk *block,u32 cmd);
# 309 "c:/devkitPRO/libogc/include/ogc/dvd.h"
s32 DVD_ControlDriveAsync(dvdcmdblk *block,u32 cmd,dvdcbcallback cb);
# 323 "c:/devkitPRO/libogc/include/ogc/dvd.h"
s32 DVD_SetGCMOffset(dvdcmdblk *block,s64 offset);
# 338 "c:/devkitPRO/libogc/include/ogc/dvd.h"
s32 DVD_SetGCMOffsetAsync(dvdcmdblk *block,s64 offset,dvdcbcallback cb);

s32 DVD_GetCmdBlockStatus(dvdcmdblk *block);
s32 DVD_SpinUpDrive(dvdcmdblk *block);
s32 DVD_SpinUpDriveAsync(dvdcmdblk *block,dvdcbcallback cb);
s32 DVD_Inquiry(dvdcmdblk *block,dvddrvinfo *info);
s32 DVD_InquiryAsync(dvdcmdblk *block,dvddrvinfo *info,dvdcbcallback cb);
s32 DVD_ReadPrio(dvdcmdblk *block,void *buf,u32 len,s64 offset,s32 prio);
s32 DVD_ReadAbsAsyncPrio(dvdcmdblk *block,void *buf,u32 len,s64 offset,dvdcbcallback cb,s32 prio);
s32 DVD_ReadAbsAsyncForBS(dvdcmdblk *block,void *buf,u32 len,s64 offset,dvdcbcallback cb);
s32 DVD_SeekPrio(dvdcmdblk *block,s64 offset,s32 prio);
s32 DVD_SeekAbsAsyncPrio(dvdcmdblk *block,s64 offset,dvdcbcallback cb,s32 prio);
s32 DVD_CancelAllAsync(dvdcbcallback cb);
s32 DVD_StopStreamAtEndAsync(dvdcmdblk *block,dvdcbcallback cb);
s32 DVD_StopStreamAtEnd(dvdcmdblk *block);
s32 DVD_ReadDiskID(dvdcmdblk *block,dvddiskid *id,dvdcbcallback cb);
u32 DVD_SetAutoInvalidation(u32 auto_inv);
dvddiskid* DVD_GetCurrentDiskID();
dvddrvinfo* DVD_GetDriveInfo();
# 50 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/exi.h" 1
# 146 "c:/devkitPRO/libogc/include/ogc/exi.h"
typedef s32 (*EXICallback)(s32 chn,s32 dev);
# 155 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_ProbeEx(s32 nChn);
# 164 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Probe(s32 nChn);
# 175 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Lock(s32 nChn,s32 nDev,EXICallback unlockCB);
# 184 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Unlock(s32 nChn);
# 195 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Select(s32 nChn,s32 nDev,s32 nFrq);
# 206 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_SelectSD(s32 nChn,s32 nDev,s32 nFrq);
# 215 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Deselect(s32 nChn);
# 224 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Sync(s32 nChn);
# 237 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Imm(s32 nChn,void *pData,u32 nLen,u32 nMode,EXICallback tc_cb);
# 249 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_ImmEx(s32 nChn,void *pData,u32 nLen,u32 nMode);
# 262 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Dma(s32 nChn,void *pData,u32 nLen,u32 nMode,EXICallback tc_cb);
# 271 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_GetState(s32 nChn);
# 282 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_GetID(s32 nChn,s32 nDev,u32 *nId);
# 292 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Attach(s32 nChn,EXICallback ext_cb);
# 301 "c:/devkitPRO/libogc/include/ogc/exi.h"
s32 EXI_Detach(s32 nChn);







void EXI_ProbeReset();
# 319 "c:/devkitPRO/libogc/include/ogc/exi.h"
EXICallback EXI_RegisterEXICallback(s32 nChn,EXICallback exi_cb);
# 51 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/gu.h" 1
# 39 "c:/devkitPRO/libogc/include/ogc/gu.h"
typedef struct _vecf {
 f32 x,y,z;
} Vector;

typedef struct _qrtn {
 f32 x,y,z,w;
} Quaternion;

typedef f32 Mtx[3][4];
typedef f32 (*MtxP)[4];
typedef f32 ROMtx[4][3];
typedef f32 (*ROMtxP)[3];
typedef f32 Mtx33[3][3];
typedef f32 (*Mtx33P)[3];
typedef f32 Mtx44[4][4];
typedef f32 (*Mtx44P)[4];

void guFrustum(Mtx44 mt,f32 t,f32 b,f32 l,f32 r,f32 n,f32 f);
void guPerspective(Mtx44 mt,f32 fovy,f32 aspect,f32 n,f32 f);
void guOrtho(Mtx44 mt,f32 t,f32 b,f32 l,f32 r,f32 n,f32 f);

void guLightPerspective(Mtx mt,f32 fovY,f32 aspect,f32 scaleS,f32 scaleT,f32 transS,f32 transT);
void guLightOrtho(Mtx mt,f32 t,f32 b,f32 l,f32 r,f32 scaleS,f32 scaleT,f32 transS,f32 transT);
void guLightFrustum(Mtx mt,f32 t,f32 b,f32 l,f32 r,f32 n,f32 scaleS,f32 scaleT,f32 transS,f32 transT);

void guLookAt(Mtx mt,Vector *camPos,Vector *camUp,Vector *target);

void guVecHalfAngle(Vector *a,Vector *b,Vector *half);

void c_guVecAdd(Vector *a,Vector *b,Vector *ab);
void c_guVecSub(Vector *a,Vector *b,Vector *ab);
void c_guVecScale(Vector *src,Vector *dst,f32 scale);
void c_guVecNormalize(Vector *v);
void c_guVecMultiply(Mtx mt,Vector *src,Vector *dst);
void c_guVecCross(Vector *a,Vector *b,Vector *axb);
void c_guVecMultiplySR(Mtx mt,Vector *src,Vector *dst);
f32 c_guVecDotProduct(Vector *a,Vector *b);


void ps_guVecAdd(register Vector *a,register Vector *b,register Vector *ab);
void ps_guVecSub(register Vector *a,register Vector *b,register Vector *ab);
void ps_guVecScale(register Vector *src,register Vector *dst,f32 scale);
void ps_guVecNormalize(register Vector *v);
void ps_guVecCross(register Vector *a,register Vector *b,register Vector *axb);
void ps_guVecMultiply(register Mtx mt,register Vector *src,register Vector *dst);
void ps_guVecMultiplySR(register Mtx mt,register Vector *src,register Vector *dst);
f32 ps_guVecDotProduct(register Vector *a,register Vector *b);


void c_guQuatAdd(Quaternion *a,Quaternion *b,Quaternion *ab);
void c_guQuatSub(Quaternion *a,Quaternion *b,Quaternion *ab);
void c_guQuatMultiply(Quaternion *a,Quaternion *b,Quaternion *ab);


void ps_guQuatAdd(register Quaternion *a,register Quaternion *b,register Quaternion *ab);
void ps_guQuatSub(register Quaternion *a,register Quaternion *b,register Quaternion *ab);
void ps_guQuatMultiply(Quaternion *a,Quaternion *b,Quaternion *ab);
void ps_guQuatScale(Quaternion *q,Quaternion *r,register f32 scale);
void ps_guQuatNormalize(Quaternion *src,Quaternion *r,register Quaternion *unit);
f32 ps_guQuatDotProduct(Quaternion *p,Quaternion *q);


void c_guMtxIdentity(Mtx mt);
void c_guMtxCopy(Mtx src,Mtx dst);
void c_guMtxConcat(Mtx a,Mtx b,Mtx ab);
void c_guMtxScale(Mtx mt,f32 xS,f32 yS,f32 zS);
void c_guMtxScaleApply(Mtx src,Mtx dst,f32 xS,f32 yS,f32 zS);
void c_guMtxApplyScale(Mtx src,Mtx dst,f32 xS,f32 yS,f32 zS);
void c_guMtxTrans(Mtx mt,f32 xT,f32 yT,f32 zT);
void c_guMtxTransApply(Mtx src,Mtx dst,f32 xT,f32 yT,f32 zT);
void c_guMtxApplyTrans(Mtx src,Mtx dst,f32 xT,f32 yT,f32 zT);
u32 c_guMtxInverse(Mtx src,Mtx inv);
void c_guMtxTranspose(Mtx src,Mtx xPose);
void c_guMtxRotRad(Mtx mt,const char axis,f32 rad);
void c_guMtxRotTrig(Mtx mt,const char axis,f32 sinA,f32 cosA);
void c_guMtxRotAxisRad(Mtx mt,Vector *axis,f32 rad);
void c_guMtxReflect(Mtx m,Vector *p,Vector *n);


void ps_guMtxIdentity(register Mtx mt);
void ps_guMtxCopy(register Mtx src,register Mtx dst);
void ps_guMtxConcat(register Mtx a,register Mtx b,register Mtx ab);
void ps_guMtxTranspose(register Mtx src,register Mtx xPose);
u32 ps_guMtxInverse(register Mtx src,register Mtx inv);
u32 ps_guMtxInvXpos(register Mtx src,register Mtx invx);
void ps_guMtxScale(register Mtx mt,register f32 xS,register f32 yS,register f32 zS);
void ps_guMtxScaleApply(register Mtx src,register Mtx dst,register f32 xS,register f32 yS,register f32 zS);
void ps_guMtxApplyScale(register Mtx src,register Mtx dst,register f32 xS,register f32 yS,register f32 zS);
void ps_guMtxTrans(register Mtx mt,register f32 xT,register f32 yT,register f32 zT);
void ps_guMtxTransApply(register Mtx src,register Mtx dst,register f32 xT,register f32 yT,register f32 zT);
void ps_guMtxApplyTrans(register Mtx src,register Mtx dst,register f32 xT,register f32 yT,register f32 zT);
void ps_guMtxRotRad(register Mtx mt,const register char axis,register f32 rad);
void ps_guMtxRotTrig(register Mtx mt,const register char axis,register f32 sinA,register f32 cosA);
void ps_guMtxRotAxisRad(register Mtx mt,register Vector *axis,register f32 tmp0);
void ps_guMtxReflect(register Mtx m,register Vector *p,register Vector *n);
# 52 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/gx.h" 1
# 11 "c:/devkitPRO/libogc/include/ogc/gx.h"
# 1 "c:/devkitPRO/libogc/include/ogc/lwp.h" 1
# 62 "c:/devkitPRO/libogc/include/ogc/lwp.h"
typedef u32 lwp_t;





typedef u32 lwpq_t;
# 81 "c:/devkitPRO/libogc/include/ogc/lwp.h"
s32 LWP_CreateThread(lwp_t *thethread,void* (*entry)(void *),void *arg,void *stackbase,u32 stack_size,u8 prio);
# 90 "c:/devkitPRO/libogc/include/ogc/lwp.h"
s32 LWP_SuspendThread(lwp_t thethread);
# 99 "c:/devkitPRO/libogc/include/ogc/lwp.h"
s32 LWP_ResumeThread(lwp_t thethread);
# 108 "c:/devkitPRO/libogc/include/ogc/lwp.h"
BOOL LWP_ThreadIsSuspended(lwp_t thethread);







lwp_t LWP_GetSelf();
# 126 "c:/devkitPRO/libogc/include/ogc/lwp.h"
void LWP_SetThreadPriority(lwp_t thethread,u32 prio);







void LWP_YieldThread();
# 143 "c:/devkitPRO/libogc/include/ogc/lwp.h"
void LWP_Reschedule(u32 prio);
# 153 "c:/devkitPRO/libogc/include/ogc/lwp.h"
s32 LWP_JoinThread(lwp_t thethread,void **value_ptr);
# 162 "c:/devkitPRO/libogc/include/ogc/lwp.h"
s32 LWP_InitQueue(lwpq_t *thequeue);
# 171 "c:/devkitPRO/libogc/include/ogc/lwp.h"
void LWP_CloseQueue(lwpq_t thequeue);
# 180 "c:/devkitPRO/libogc/include/ogc/lwp.h"
s32 LWP_ThreadSleep(lwpq_t thequeue);
# 189 "c:/devkitPRO/libogc/include/ogc/lwp.h"
void LWP_ThreadSignal(lwpq_t thequeue);
# 198 "c:/devkitPRO/libogc/include/ogc/lwp.h"
void LWP_ThreadBroadcast(lwpq_t thequeue);
# 12 "c:/devkitPRO/libogc/include/ogc/gx.h" 2

# 1 "c:/devkitPRO/libogc/include/ogc/gu.h" 1
# 14 "c:/devkitPRO/libogc/include/ogc/gx.h" 2
# 952 "c:/devkitPRO/libogc/include/ogc/gx.h"
typedef struct _gx_color {
  u8 r;
  u8 g;
  u8 b;
 u8 a;
} GXColor;

typedef struct _gx_colors10 {
  s16 r;
  s16 g;
  s16 b;
 s16 a;
} GXColorS10;

typedef struct _gx_texobj {
 u32 val[8];
} GXTexObj;

typedef struct _gx_tlutobj {
 u32 val[3];
} GXTlutObj;

typedef struct _gx_texreg {
 u32 val[4];
} GXTexRegion;

typedef struct _gx_tlutreg {
 u32 val[4];
} GXTlutRegion;

typedef struct _gx_litobj {
 u32 val[16];
} GXLightObj;

typedef struct _vtx {
 f32 x,y,z;
 u16 s,t;
 u32 rgba;
} Vtx;

typedef struct {
 u8 attr;
 u8 type;
} GXVtxDesc;

typedef struct {
 u32 vtxattr;
 u32 comptype;
 u32 compsize;
 u32 frac;
} GXVtxAttrFmt;

typedef struct {
 u8 pad[128];
} GXFifoObj;

typedef struct {
 u8 dummy[4];
} GXTexReg;

typedef struct {
 u16 r[10];
} GXFogAdjTbl;

typedef void (*GXBreakPtCallback)(void);
typedef void (*GXDrawDoneCallback)(void);





typedef void (*GXDrawSyncCallback)(u16 token);





typedef GXTexRegion* (*GXTexRegionCallback)(GXTexObj *obj,u8 mapid);





typedef GXTlutRegion* (*GXTlutRegionCallback)(u32 tlut_name);
# 1046 "c:/devkitPRO/libogc/include/ogc/gx.h"
GXFifoObj* GX_Init(void *base,u32 size);

void GX_InitFifoBase(GXFifoObj *fifo,void *base,u32 size);
void GX_InitFifoLimits(GXFifoObj *fifo,u32 hiwatermark,u32 lowatermark);
void GX_InitFifoPtrs(GXFifoObj *fifo,void *rd_ptr,void *wt_ptr);
void GX_SetCPUFifo(GXFifoObj *fifo);
void GX_SetGPFifo(GXFifoObj *fifo);
void GX_GetCPUFifo(GXFifoObj *fifo);
void GX_GetGPFifo(GXFifoObj *fifo);
GXDrawDoneCallback GX_SetDrawDoneCallback(GXDrawDoneCallback cb);
GXBreakPtCallback GX_SetBreakPtCallback(GXBreakPtCallback cb);

void GX_AbortFrame();
void GX_Flush();
void GX_SetMisc(u32 token,u32 value);
void GX_SetDrawDone();
void GX_WaitDrawDone();







u16 GX_GetDrawSync();
# 1083 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetDrawSync(u16 token);
# 1095 "c:/devkitPRO/libogc/include/ogc/gx.h"
GXDrawSyncCallback GX_SetDrawSyncCallback(GXDrawSyncCallback cb);

void GX_DisableBreakPt();
void GX_EnableBreakPt(void *break_pt);
void GX_DrawDone();
void GX_TexModeSync();
void GX_InvVtxCache();
void GX_ClearVtxDesc();
void GX_LoadProjectionMtx(Mtx44 mt,u8 type);
void GX_SetViewport(f32 xOrig,f32 yOrig,f32 wd,f32 ht,f32 nearZ,f32 farZ);
void GX_SetViewportJitter(f32 xOrig,f32 yOrig,f32 wd,f32 ht,f32 nearZ,f32 farZ,u32 field);
void GX_SetChanCtrl(s32 channel,u8 enable,u8 ambsrc,u8 matsrc,u8 litmask,u8 diff_fn,u8 attn_fn);
void GX_SetChanAmbColor(s32 channel,GXColor color);
void GX_SetChanMatColor(s32 channel,GXColor color);
void GX_SetArray(u32 attr,void *ptr,u8 stride);
# 1125 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetVtxAttrFmt(u8 vtxfmt,u32 vtxattr,u32 comptype,u32 compsize,u32 frac);
void GX_SetVtxAttrFmtv(u8 vtxfmt,GXVtxAttrFmt *attr_list);
void GX_SetVtxDesc(u8 attr,u8 type);
void GX_SetVtxDescv(GXVtxDesc *attr_list);

u32 GX_EndDispList();
void GX_Begin(u8 primitve,u8 vtxfmt,u16 vtxcnt);
void GX_BeginDispList(void *list,u32 size);
void GX_CallDispList(void *list,u32 nbytes);

static inline void GX_End()
{
}

static inline void GX_Position3f32(f32 x,f32 y,f32 z)
{
 *(vf32*)(0xCC008000) = (f32)(x);
 *(vf32*)(0xCC008000) = (f32)(y);
 *(vf32*)(0xCC008000) = (f32)(z);
}

static inline void GX_Position3u16(u16 x,u16 y,u16 z)
{
 *(vu16*)(0xCC008000) = (u16)(x);
 *(vu16*)(0xCC008000) = (u16)(y);
 *(vu16*)(0xCC008000) = (u16)(z);
}

static inline void GX_Position3s16(s16 x,s16 y,s16 z)
{
 *(vs16*)(0xCC008000) = (s16)(x);
 *(vs16*)(0xCC008000) = (s16)(y);
 *(vs16*)(0xCC008000) = (s16)(z);
}

static inline void GX_Position3u8(u8 x,u8 y,u8 z)
{
 *(vu8*)(0xCC008000) = (u8)(x);
 *(vu8*)(0xCC008000) = (u8)(y);
 *(vu8*)(0xCC008000) = (u8)(z);
}

static inline void GX_Position3s8(s8 x,s8 y,s8 z)
{
 *(vs8*)(0xCC008000) = (s8)(x);
 *(vs8*)(0xCC008000) = (s8)(y);
 *(vs8*)(0xCC008000) = (s8)(z);
}

static inline void GX_Position2f32(f32 x,f32 y)
{
 *(vf32*)(0xCC008000) = (f32)(x);
 *(vf32*)(0xCC008000) = (f32)(y);
}

static inline void GX_Position2u16(u16 x,u16 y)
{
 *(vu16*)(0xCC008000) = (u16)(x);
 *(vu16*)(0xCC008000) = (u16)(y);
}

static inline void GX_Position2s16(s16 x,s16 y)
{
 *(vs16*)(0xCC008000) = (s16)(x);
 *(vs16*)(0xCC008000) = (s16)(y);
}

static inline void GX_Position2u8(u8 x,u8 y)
{
 *(vu8*)(0xCC008000) = (u8)(x);
 *(vu8*)(0xCC008000) = (u8)(y);
}

static inline void GX_Position2s8(s8 x,s8 y)
{
 *(vs8*)(0xCC008000) = (s8)(x);
 *(vs8*)(0xCC008000) = (s8)(y);
}

static inline void GX_Position1x8(u8 index)
{
 *(vu8*)(0xCC008000) = (u8)(index);
}

static inline void GX_Position1x16(u16 index)
{
 *(vu16*)(0xCC008000) = (u16)(index);
}

static inline void GX_Normal3f32(f32 nx,f32 ny,f32 nz)
{
 *(vf32*)(0xCC008000) = (f32)(nx);
 *(vf32*)(0xCC008000) = (f32)(ny);
 *(vf32*)(0xCC008000) = (f32)(nz);
}

static inline void GX_Normal3s16(s16 nx,s16 ny,s16 nz)
{
 *(vs16*)(0xCC008000) = (s16)(nx);
 *(vs16*)(0xCC008000) = (s16)(ny);
 *(vs16*)(0xCC008000) = (s16)(nz);
}

static inline void GX_Normal3s8(s8 nx,s8 ny,s8 nz)
{
 *(vs8*)(0xCC008000) = (s8)(nx);
 *(vs8*)(0xCC008000) = (s8)(ny);
 *(vs8*)(0xCC008000) = (s8)(nz);
}

static inline void GX_Normal1x8(u8 index)
{
 *(vu8*)(0xCC008000) = (u8)(index);
}

static inline void GX_Normal1x16(u16 index)
{
 *(vu16*)(0xCC008000) = (u16)(index);
}

static inline void GX_Color4u8(u8 r,u8 g,u8 b,u8 a)
{
 *(vu8*)(0xCC008000) = (u8)(r);
 *(vu8*)(0xCC008000) = (u8)(g);
 *(vu8*)(0xCC008000) = (u8)(b);
 *(vu8*)(0xCC008000) = (u8)(a);
}

static inline void GX_Color3u8(u8 r,u8 g,u8 b)
{
 *(vu8*)(0xCC008000) = (u8)(r);
 *(vu8*)(0xCC008000) = (u8)(g);
 *(vu8*)(0xCC008000) = (u8)(b);
}

static inline void GX_Color3f32(f32 r, f32 g, f32 b)
{

 *(vu8*)(0xCC008000) = (u8)((u8)(r * 255.0));
 *(vu8*)(0xCC008000) = (u8)((u8)(g * 255.0));
 *(vu8*)(0xCC008000) = (u8)((u8)(b * 255.0));

}


static inline void GX_Color1u32(u32 clr)
{
 *(vu32*)(0xCC008000) = (u32)(clr);
}

static inline void GX_Color1u16(u16 clr)
{
 *(vu16*)(0xCC008000) = (u16)(clr);
}

static inline void GX_Color1x8(u8 index)
{
 *(vu8*)(0xCC008000) = (u8)(index);
}

static inline void GX_Color1x16(u16 index)
{
 *(vu16*)(0xCC008000) = (u16)(index);
}

static inline void GX_TexCoord2f32(f32 s,f32 t)
{
 *(vf32*)(0xCC008000) = (f32)(s);
 *(vf32*)(0xCC008000) = (f32)(t);
}

static inline void GX_TexCoord2u16(u16 s,u16 t)
{
 *(vu16*)(0xCC008000) = (u16)(s);
 *(vu16*)(0xCC008000) = (u16)(t);
}

static inline void GX_TexCoord2s16(s16 s,s16 t)
{
 *(vs16*)(0xCC008000) = (s16)(s);
 *(vs16*)(0xCC008000) = (s16)(t);
}

static inline void GX_TexCoord2u8(u8 s,u8 t)
{
 *(vu8*)(0xCC008000) = (u8)(s);
 *(vu8*)(0xCC008000) = (u8)(t);
}

static inline void GX_TexCoord2s8(s8 s,s8 t)
{
 *(vs8*)(0xCC008000) = (s8)(s);
 *(vs8*)(0xCC008000) = (s8)(t);
}

static inline void GX_TexCoord1f32(f32 s)
{
 *(vf32*)(0xCC008000) = (f32)(s);
}

static inline void GX_TexCoord1u16(u16 s)
{
 *(vu16*)(0xCC008000) = (u16)(s);
}

static inline void GX_TexCoord1s16(s16 s)
{
 *(vs16*)(0xCC008000) = (s16)(s);
}

static inline void GX_TexCoord1u8(u8 s)
{
 *(vu8*)(0xCC008000) = (u8)(s);
}

static inline void GX_TexCoord1s8(s8 s)
{
 *(vs8*)(0xCC008000) = (s8)(s);
}

static inline void GX_TexCoord1x8(u8 index)
{
 *(vu8*)(0xCC008000) = (u8)(index);
}

static inline void GX_TexCoord1x16(u16 index)
{
 *(vu16*)(0xCC008000) = (u16)(index);
}

static inline void GX_MatrixIndex1x8(u8 index)
{
 *(vu8*)(0xCC008000) = (u8)(index);
}


void GX_AdjustForOverscan(GXRModeObj *rmin,GXRModeObj *rmout,u16 hor,u16 ver);
void GX_LoadPosMtxImm(Mtx mt,u32 pnidx);
void GX_LoadPosMtxIdx(u16 mtxidx,u32 pnidx);
void GX_LoadNrmMtxImm(Mtx mt,u32 pnidx);
void GX_LoadNrmMtxIdx3x3(u16 mtxidx,u32 pnidx);
void GX_LoadTexMtxImm(Mtx mt,u32 texidx,u8 type);
void GX_LoadTexMtxIdx(u16 mtxidx,u32 texidx,u8 type);
void GX_SetCurrentMtx(u32 mtx);
# 1380 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevOp(u8 tevstage,u8 mode);
# 1391 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevColor(u8 tev_regid,GXColor color);
# 1402 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevColorS10(u8 tev_regid,GXColorS10 color);
# 1419 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevColorIn(u8 tevstage,u8 a,u8 b,u8 c,u8 d);
# 1435 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevAlphaIn(u8 tevstage,u8 a,u8 b,u8 c,u8 d);
# 1454 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevColorOp(u8 tevstage,u8 tevop,u8 tevbias,u8 tevscale,u8 clamp,u8 tevregid);
# 1474 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevAlphaOp(u8 tevstage,u8 tevop,u8 tevbias,u8 tevscale,u8 clamp,u8 tevregid);
void GX_SetNumTexGens(u32 nr);
void GX_SetTexCoordGen(u16 texcoord,u32 tgen_typ,u32 tgen_src,u32 mtxsrc);
void GX_SetTexCoordGen2(u16 texcoord,u32 tgen_typ,u32 tgen_src,u32 mtxsrc,u32 normalize,u32 postmtx);
# 1489 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetZTexture(u8 op,u8 fmt,u32 bias);
void GX_SetZMode(u8 enable,u8 func,u8 update_enable);
void GX_SetZCompLoc(u8 before_tex);
void GX_SetLineWidth(u8 width,u8 fmt);
void GX_SetPointSize(u8 width,u8 fmt);

void GX_SetBlendMode(u8 type,u8 src_fact,u8 dst_fact,u8 op);
void GX_SetCullMode(u8 mode);
void GX_SetCoPlanar(u8 enable);
void GX_EnableTexOffsets(u8 coord,u8 line_enable,u8 point_enable);
void GX_SetClipMode(u8 mode);
void GX_SetScissor(u32 xOrigin,u32 yOrigin,u32 wd,u32 ht);
void GX_SetScissorBoxOffset(s32 xoffset,s32 yoffset);
void GX_SetNumChans(u8 num);

void GX_SetTevOrder(u8 tevstage,u8 texcoord,u32 texmap,u8 color);
void GX_SetNumTevStages(u8 num);

void GX_SetAlphaCompare(u8 comp0,u8 ref0,u8 aop,u8 comp1,u8 ref1);
void GX_SetTevKColor(u8 sel, GXColor col);
void GX_SetTevKColorSel(u8 tevstage,u8 sel);
void GX_SetTevKAlphaSel(u8 tevstage,u8 sel);
void GX_SetTevKColorS10(u8 sel, GXColorS10 col);
# 1526 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevSwapMode(u8 tevstage,u8 ras_sel,u8 tex_sel);
# 1541 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTevSwapModeTable(u8 swapid,u8 r,u8 g,u8 b,u8 a);
void GX_SetTevIndirect(u8 tevstage,u8 indtexid,u8 format,u8 bias,u8 mtxid,u8 wrap_s,u8 wrap_t,u8 addprev,u8 utclod,u8 a);
void GX_SetTevDirect(u8 tevstage);
void GX_SetNumIndStages(u8 nstages);
void GX_SetIndTexOrder(u8 indtexstage,u8 texcoord,u8 texmap);
void GX_SetIndTexCoordScale(u8 indtexid,u8 scale_s,u8 scale_t);
void GX_SetFog(u8 type,f32 startz,f32 endz,f32 nearz,f32 farz,GXColor col);
void GX_SetFogRangeAdj(u8 enable,u16 center,GXFogAdjTbl *table);
void GX_SetIndTexMatrix(u8 indtexmtx,f32 offset_mtx[2][3],s8 scale_exp);
void GX_SetTevIndBumpST(u8 tevstage,u8 indstage,u8 mtx_sel);
void GX_SetTevIndBumpXYZ(u8 tevstage,u8 indstage,u8 mtx_sel);
void GX_SetTevIndTile(u8 tevstage,u8 indtexid,u16 tilesize_x,u16 tilesize_y,u16 tilespacing_x,u16 tilespacing_y,u8 indtexfmt,u8 indtexmtx,u8 bias_sel,u8 alpha_sel);

void GX_SetColorUpdate(u8 enable);
void GX_SetAlphaUpdate(u8 enable);
void GX_SetPixelFmt(u8 pix_fmt,u8 z_fmt);
void GX_SetDither(u8 dither);
void GX_SetDstAlpha(u8 enable,u8 a);
void GX_SetFieldMask(u8 even_mask,u8 odd_mask);
void GX_SetFieldMode(u8 field_mode,u8 half_aspect_ratio);
# 1572 "c:/devkitPRO/libogc/include/ogc/gx.h"
f32 GX_GetYScaleFactor(u16 efbHeight,u16 xfbHeight);
# 1584 "c:/devkitPRO/libogc/include/ogc/gx.h"
u32 GX_SetDispCopyYScale(f32 yscale);
# 1597 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetDispCopySrc(u16 left,u16 top,u16 wd,u16 ht);
# 1610 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetDispCopyDst(u16 wd,u16 ht);
# 1620 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetCopyClamp(u8 clamp);
# 1630 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetDispCopyGamma(u8 gamma);

void GX_SetCopyFilter(u8 aa,u8 sample_pattern[12][2],u8 vf,u8 vfilter[7]);
void GX_SetDispCopyFrame2Field(u8 mode);
# 1644 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetCopyClear(GXColor color,u32 zvalue);
# 1661 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_CopyDisp(void *dest,u8 clear);

void GX_SetTexCopySrc(u16 left,u16 top,u16 wd,u16 ht);
# 1679 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_SetTexCopyDst(u16 wd,u16 ht,u32 fmt,u8 mipmap);
# 1693 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_CopyTex(void *dest,u8 clear);
# 1703 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_PixModeSync();
# 1712 "c:/devkitPRO/libogc/include/ogc/gx.h"
void GX_ClearBoundingBox();
void GX_PokeAlphaMode(u8 func,u8 threshold);
void GX_PokeAlphaUpdate(u8 update_enable);
void GX_PokeColorUpdate(u8 update_enable);
void GX_PokeDither(u8 dither);
void GX_PokeBlendMode(u8 type,u8 src_fact,u8 dst_fact,u8 op);
void GX_PokeAlphaRead(u8 mode);
void GX_PokeDstAlpha(u8 enable,u8 a);
void GX_PokeARGB(u16 x,u16 y,GXColor color);
void GX_PokeZ(u16 x,u16 y,u32 z);
void GX_PokeZMode(u8 comp_enable,u8 func,u8 update_enable);

u32 GX_GetTexObjFmt(GXTexObj *obj);
u32 GX_GetTexObjMipMap(GXTexObj *obj);

u8 GX_GetTexFmt(GXTexObj *obj);
u32 GX_GetTexBufferSize(u16 wd,u16 ht,u32 fmt,u8 mipmap,u8 maxlod);
void GX_InvalidateTexAll();
void GX_InvalidateTexRegion(GXTexRegion *region);
void GX_InitTexCacheRegion(GXTexRegion *region,u8 is32bmipmap,u32 tmem_even,u8 size_even,u32 tmem_odd,u8 size_odd);
void GX_InitTexPreloadRegion(GXTexRegion *region,u32 tmem_even,u32 size_even,u32 tmem_odd,u32 size_odd);
void GX_InitTexObj(GXTexObj *obj,void *img_ptr,u16 wd,u16 ht,u8 fmt,u8 wrap_s,u8 wrap_t,u8 mipmap);
void GX_InitTexObjCI(GXTexObj *obj,void *img_ptr,u16 wd,u16 ht,u8 fmt,u8 wrap_s,u8 wrap_t,u8 mipmap,u32 tlut_name);
void GX_InitTexObjTlut(GXTexObj *obj,u32 tlut_name);
void GX_LoadTexObj(GXTexObj *obj,u8 mapid);
void GX_LoadTlut(GXTlutObj *obj,u32 tlut_name);
void GX_LoadTexObjPreloaded(GXTexObj *obj,GXTexRegion *region,u8 mapid);
void GX_PreloadEntireTex(GXTexObj *obj,GXTexRegion *region);
void GX_InitTlutObj(GXTlutObj *obj,void *lut,u8 fmt,u16 entries);
void GX_InitTlutRegion(GXTlutRegion *region,u32 tmem_addr,u8 tlut_sz);
void GX_InitTexObjLOD(GXTexObj *obj,u8 minfilt,u8 magfilt,f32 minlod,f32 maxlod,f32 lodbias,u8 biasclamp,u8 edgelod,u8 maxaniso);
void GX_SetTexCoorScaleManually(u8 texcoord,u8 enable,u16 ss,u16 ts);
void GX_SetTexCoordBias(u8 texcoord,u8 s_enable,u8 t_enable);
GXTexRegionCallback GX_SetTexRegionCallback(GXTexRegionCallback cb);
GXTlutRegionCallback GX_SetTlutRegionCallback(GXTlutRegionCallback cb);

void GX_InitLightPos(GXLightObj *lit_obj,f32 x,f32 y,f32 z);
void GX_InitLightColor(GXLightObj *lit_obj,GXColor col);
void GX_InitLightDir(GXLightObj *lit_obj,f32 nx,f32 ny,f32 nz);
void GX_LoadLightObj(GXLightObj *lit_obj,u8 lit_id);
void GX_LoadLightObjIdx(u32 litobjidx,u8 litid);
void GX_InitLightDistAttn(GXLightObj *lit_obj,f32 ref_dist,f32 ref_brite,u8 dist_fn);
void GX_InitLightAttn(GXLightObj *lit_obj,f32 a0,f32 a1,f32 a2,f32 k0,f32 k1,f32 k2);
void GX_InitLightAttnA(GXLightObj *lit_obj,f32 a0,f32 a1,f32 a2);
void GX_InitLightAttnK(GXLightObj *lit_obj,f32 k0,f32 k1,f32 k2);
void GX_InitSpecularDirHA(GXLightObj *lit_obj,f32 nx,f32 ny,f32 nz,f32 hx,f32 hy,f32 hz);
void GX_InitSpecularDir(GXLightObj *lit_obj,f32 nx,f32 ny,f32 nz);
void GX_InitLightSpot(GXLightObj *lit_obj,f32 cut_off,u8 spotfn);

u32 GX_ReadClksPerVtx();
u32 GX_GetOverflowCount();
u32 GX_ResetOverflowCount();
lwp_t GX_GetCurrentGXThread();
lwp_t GX_SetCurrentGXThread();
void GX_RestoreWriteGatherPipe();
void GX_SetGPMetric(u32 perf0,u32 perf1);
void GX_ClearGPMetric();
void GX_InitXfRasMetric();
void GX_ReadXfRasMetric(u32 *xfwaitin,u32 *xfwaitout,u32 *rasbusy,u32 *clks);
void GX_ClearVCacheMetric();
void GX_ReadVCacheMetric(u32 *check,u32 *miss,u32 *stall);
void GX_SetVCacheMetric(u32 attr);
void GX_GetGPStatus(u8 *overhi,u8 *underlow,u8 *readIdle,u8 *cmdIdle,u8 *brkpt);
void GX_ReadGPMetric(u32 *cnt0,u32 *cnt1);
void GX_GetFifoPtrs(GXFifoObj *fifo,void **rd_ptr,void **wt_ptr);
volatile void* GX_RedirectWriteGatherPipe(void *ptr);
# 53 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/si.h" 1
# 69 "c:/devkitPRO/libogc/include/ogc/si.h"
typedef void (*SICallback)(s32,u32);
typedef void (*RDSTHandler)(u32,void*);

u32 SI_Sync();
u32 SI_Busy();
u32 SI_IsChanBusy(s32 chan);
void SI_EnablePolling(u32 poll);
void SI_DisablePolling(u32 poll);
void SI_SetCommand(s32 chan,u32 cmd);
u32 SI_GetStatus(s32 chan);
u32 SI_GetResponse(s32 chan,void *buf);
u32 SI_GetResponseRaw(s32 chan);
void SI_RefreshSamplingRate();
u32 SI_Transfer(s32 chan,void *out,u32 out_len,void *in,u32 in_len,SICallback cb,u32 us_delay);
u32 SI_GetTypeAsync(s32 chan,SICallback cb);
u32 SI_GetType(s32 chan);
u32 SI_GetCommand(s32 chan);
void SI_TransferCommands();
u32 SI_RegisterPollingHandler(RDSTHandler handler);
u32 SI_UnregisterPollingHandler(RDSTHandler handler);
u32 SI_EnablePollingInterrupt(s32 enable);
# 54 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/gx_struct.h" 1
# 55 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/irq.h" 1
# 41 "c:/devkitPRO/libogc/include/ogc/irq.h"
# 1 "c:/devkitPRO/libogc/include/ogc/context.h" 1
# 30 "c:/devkitPRO/libogc/include/ogc/context.h"
typedef struct _excption_frame {
 u32 EXCPT_Number;
 u32 SRR0,SRR1;
 u32 GPR[32];
 u32 GQR[8];
 u32 CR, LR, CTR, XER, MSR, DAR;

 u16 state;
 u16 mode;

 f64 FPR[32];
 u32 FPSCR_PAD;
 u32 FPSCR;
 f64 PSFPR[32];
} frame_context;
# 42 "c:/devkitPRO/libogc/include/ogc/irq.h" 2
# 134 "c:/devkitPRO/libogc/include/ogc/irq.h"
typedef void (*raw_irq_handler_t)(u32 irq,void *ctx);
# 145 "c:/devkitPRO/libogc/include/ogc/irq.h"
raw_irq_handler_t IRQ_Request(u32 nIrq,raw_irq_handler_t pHndl,void *pCtx);
# 154 "c:/devkitPRO/libogc/include/ogc/irq.h"
raw_irq_handler_t IRQ_Free(u32 nIrq);
# 163 "c:/devkitPRO/libogc/include/ogc/irq.h"
raw_irq_handler_t IRQ_GetHandler(u32 nIrq);







u32 IRQ_Disable();
# 180 "c:/devkitPRO/libogc/include/ogc/irq.h"
void IRQ_Restore(u32 level);
# 56 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/lwp.h" 1
# 57 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/mutex.h" 1
# 51 "c:/devkitPRO/libogc/include/ogc/mutex.h"
typedef u32 mutex_t;
# 61 "c:/devkitPRO/libogc/include/ogc/mutex.h"
s32 LWP_MutexInit(mutex_t *mutex,u8 use_recursive);
# 70 "c:/devkitPRO/libogc/include/ogc/mutex.h"
s32 LWP_MutexDestroy(mutex_t mutex);
# 79 "c:/devkitPRO/libogc/include/ogc/mutex.h"
s32 LWP_MutexLock(mutex_t mutex);
# 88 "c:/devkitPRO/libogc/include/ogc/mutex.h"
s32 LWP_MutexTryLock(mutex_t mutex);
# 97 "c:/devkitPRO/libogc/include/ogc/mutex.h"
s32 LWP_MutexUnlock(mutex_t mutex);
# 58 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/message.h" 1
# 58 "c:/devkitPRO/libogc/include/ogc/message.h"
typedef u32 mqbox_t;





typedef void* mqmsg_t;
# 75 "c:/devkitPRO/libogc/include/ogc/message.h"
s32 MQ_Init(mqbox_t *mqbox,u32 count);
# 84 "c:/devkitPRO/libogc/include/ogc/message.h"
void MQ_Close(mqbox_t mqbox);
# 95 "c:/devkitPRO/libogc/include/ogc/message.h"
BOOL MQ_Send(mqbox_t mqbox,mqmsg_t msg,u32 flags);
# 106 "c:/devkitPRO/libogc/include/ogc/message.h"
BOOL MQ_Jam(mqbox_t mqbox,mqmsg_t msg,u32 flags);
# 117 "c:/devkitPRO/libogc/include/ogc/message.h"
BOOL MQ_Receive(mqbox_t mqbox,mqmsg_t *msg,u32 flags);
# 59 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/semaphore.h" 1
# 52 "c:/devkitPRO/libogc/include/ogc/semaphore.h"
typedef u32 sem_t;
# 63 "c:/devkitPRO/libogc/include/ogc/semaphore.h"
s32 LWP_SemInit(sem_t *sem,u32 start,u32 max);
# 72 "c:/devkitPRO/libogc/include/ogc/semaphore.h"
s32 LWP_SemDestroy(sem_t sem);
# 81 "c:/devkitPRO/libogc/include/ogc/semaphore.h"
s32 LWP_SemWait(sem_t sem);
# 90 "c:/devkitPRO/libogc/include/ogc/semaphore.h"
s32 LWP_SemPost(sem_t sem);
# 60 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/pad.h" 1
# 46 "c:/devkitPRO/libogc/include/ogc/pad.h"
typedef struct _padstatus {
 u16 button;
 s8 stickX;
 s8 stickY;
 s8 substickX;
 s8 substickY;
 u8 triggerL;
 u8 triggerR;
 u8 analogA;
 u8 analogB;
 s8 err;
} PADStatus;

typedef void (*sampling_callback)(void);




u32 PAD_Init();
u32 PAD_Sync();
u32 PAD_Read(PADStatus *status);
u32 PAD_Reset(u32 mask);
u32 PAD_Recalibrate(u32 mask);
void PAD_Clamp(PADStatus *status);
void PAD_ControlMotor(s32 chan,u32 cmd);
void PAD_SetSpec(u32 spec);

u32 PAD_ScanPads();

u16 PAD_ButtonsUp(int pad);
u16 PAD_ButtonsDown(int pad);
u16 PAD_ButtonsHeld(int pad);

s8 PAD_SubStickX(int pad);
s8 PAD_SubStickY(int pad);

s8 PAD_StickX(int pad);
s8 PAD_StickY(int pad);

u8 PAD_TriggerL(int pad);
u8 PAD_TriggerR(int pad);


sampling_callback PAD_SetSamplingCallback(sampling_callback cb);
# 61 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/tpl.h" 1



# 1 "c:/devkitPRO/libogc/include/ogc/gx.h" 1
# 5 "c:/devkitPRO/libogc/include/ogc/tpl.h" 2





typedef void* FHANDLE;


typedef struct _tplfile {
 int type;
 int ntextures;
 void *texdesc;
 FHANDLE tpl_file;
} TPLFile;

s32 TPL_OpenTPLFromFile(TPLFile* tdf, const char* file_name);
s32 TPL_OpenTPLFromMemory(TPLFile* tdf, const void *memory,u32 len);
s32 TPL_GetTexture(TPLFile *tdf,s32 id,GXTexObj *texObj);
s32 TPL_GetTextureCI(TPLFile *tdf,s32 id,GXTexObj *texObj,GXTlutObj *tlutObj,u8 tluts);
void TPL_CloseTPLFile(TPLFile *tdf);
# 62 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/system.h" 1
# 42 "c:/devkitPRO/libogc/include/ogc/system.h"
# 1 "c:/devkitPRO/libogc/include/gcutil.h" 1
# 43 "c:/devkitPRO/libogc/include/ogc/system.h" 2
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/time.h" 1 3
# 18 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/time.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/time.h" 1 3
# 19 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/time.h" 2 3
# 27 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/time.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 28 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/time.h" 2 3

# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 1 3
# 69 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 70 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 2 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/types.h" 1 3
# 19 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 2 3
# 92 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned int ino_t;
# 162 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;


typedef int pid_t;

typedef long key_t;

typedef _ssize_t ssize_t;
# 186 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 213 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 244 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

typedef __uint32_t fsblkcnt_t;
typedef __uint32_t fsfilcnt_t;

# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/features.h" 1 3
# 260 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h" 2 3
# 30 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/time.h" 2 3



struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *_s, size_t _maxsize, const char *_fmt, const struct tm *_t);

char *asctime_r (const struct tm *, char *);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *, struct tm *);
struct tm *localtime_r (const time_t *, struct tm *);








char *strptime (const char *, const char *, struct tm *);
void tzset (void);
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 118 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/time.h" 3
extern long _timezone;
extern int _daylight;
extern char *_tzname[2];
# 44 "c:/devkitPRO/libogc/include/ogc/system.h" 2
# 134 "c:/devkitPRO/libogc/include/ogc/system.h"
typedef u32 syswd_t;
# 150 "c:/devkitPRO/libogc/include/ogc/system.h"
typedef struct _syssram syssram;

struct _syssram {
 u16 checksum;
 u16 checksum_inv;
 u32 ead0;
 u32 ead1;
 u32 counter_bias;
 s8 display_offsetH;
 u8 ntd;
 u8 lang;
 u8 flags;
} __attribute__((packed));
# 176 "c:/devkitPRO/libogc/include/ogc/system.h"
typedef struct _syssramex syssramex;

struct _syssramex {
 u8 flash_id[2][12];
 u32 wirelessKbd_id;
 u16 wirelessPad_id[4];
 u8 dvderr_code;
 u8 __padding0;
 u16 flashID_chksum[2];
 u8 __padding1[4];
} __attribute__((packed));

typedef void (*alarmcallback)(syswd_t alarm);

typedef struct _sys_fontheader sys_fontheader;

struct _sys_fontheader {
 u16 font_type;
 u16 first_char;
 u16 last_char;
 u16 inval_char;
 u16 asc;
 u16 desc;
 u16 width;
 u16 leading;
    u16 cell_width;
    u16 cell_height;
    u32 sheet_size;
    u16 sheet_format;
    u16 sheet_column;
    u16 sheet_row;
    u16 sheet_width;
    u16 sheet_height;
    u16 width_table;
    u32 sheet_image;
    u32 sheet_fullsize;
    u8 c0;
    u8 c1;
    u8 c2;
    u8 c3;
} __attribute__((packed));

typedef void (*resetcallback)(void);
typedef void (*powercallback)(void);
typedef s32 (*resetfunction)(s32 final);
typedef struct _sys_resetinfo sys_resetinfo;

struct _sys_resetinfo {
 lwp_node node;
 resetfunction func;
 u32 prio;
};






void SYS_Init();
# 244 "c:/devkitPRO/libogc/include/ogc/system.h"
void* SYS_AllocateFramebuffer(GXRModeObj *rmode);


void SYS_ProtectRange(u32 chan,void *addr,u32 bytes,u32 cntrl);
void SYS_StartPMC(u32 mcr0val,u32 mcr1val);
void SYS_DumpPMC();
void SYS_StopPMC();
# 259 "c:/devkitPRO/libogc/include/ogc/system.h"
s32 SYS_CreateAlarm(syswd_t *thealarm);
# 270 "c:/devkitPRO/libogc/include/ogc/system.h"
s32 SYS_SetAlarm(syswd_t thealarm,const struct timespec *tp,alarmcallback cb);
# 282 "c:/devkitPRO/libogc/include/ogc/system.h"
s32 SYS_SetPeriodicAlarm(syswd_t thealarm,const struct timespec *tp_start,const struct timespec *tp_period,alarmcallback cb);
# 291 "c:/devkitPRO/libogc/include/ogc/system.h"
s32 SYS_RemoveAlarm(syswd_t thealarm);
# 300 "c:/devkitPRO/libogc/include/ogc/system.h"
s32 SYS_CancelAlarm(syswd_t thealarm);


void SYS_SetWirelessID(u32 chan,u32 id);
u32 SYS_GetWirelessID(u32 chan);
u32 SYS_GetFontEncoding();
u32 SYS_InitFont(sys_fontheader **font_header);
void SYS_GetFontTexture(s32 c,void **image,s32 *xpos,s32 *ypos,s32 *width);
void SYS_GetFontTexel(s32 c,void *image,s32 pos,s32 stride,s32 *width);
void SYS_ResetSystem(s32 reset,u32 reset_code,s32 force_menu);
void SYS_RegisterResetFunc(sys_resetinfo *info);
u32 SYS_GetArena1Size();
void SYS_SwitchFiber(u32 arg0,u32 arg1,u32 arg2,u32 arg3,u32 pc,u32 newsp);

void* SYS_GetArena1Lo();
void SYS_SetArena1Lo(void *newLo);
void* SYS_GetArena1Hi();
void SYS_SetArena1Hi(void *newHi);
u32 SYS_GetArena1Size();

resetcallback SYS_SetResetCallback(resetcallback cb);

u32 SYS_ResetButtonDown();


u32 SYS_GetHollywoodRevision();
void* SYS_GetArena2Lo();
void SYS_SetArena2Lo(void *newLo);
void* SYS_GetArena2Hi();
void SYS_SetArena2Hi(void *newHi);
u32 SYS_GetArena2Size();
powercallback SYS_SetPowerCallback(powercallback cb);


void kprintf(const char *str, ...);
# 63 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/video.h" 1
# 42 "c:/devkitPRO/libogc/include/ogc/video.h"
# 1 "c:/devkitPRO/libogc/include/ogc/video_types.h" 1
# 152 "c:/devkitPRO/libogc/include/ogc/video_types.h"
extern GXRModeObj TVNtsc240Ds;
extern GXRModeObj TVNtsc240DsAa;
extern GXRModeObj TVNtsc240Int;
extern GXRModeObj TVNtsc240IntAa;
extern GXRModeObj TVNtsc480IntDf;
extern GXRModeObj TVNtsc480IntAa;
extern GXRModeObj TVNtsc480Prog;
extern GXRModeObj TVMpal480IntDf;
extern GXRModeObj TVPal264Ds;
extern GXRModeObj TVPal264DsAa;
extern GXRModeObj TVPal264Int;
extern GXRModeObj TVPal264IntAa;
extern GXRModeObj TVPal524IntAa;
extern GXRModeObj TVPal528Int;
extern GXRModeObj TVPal528IntDf;
extern GXRModeObj TVPal574IntDfScale;
extern GXRModeObj TVEurgb60Hz240Ds;
extern GXRModeObj TVEurgb60Hz240DsAa;
extern GXRModeObj TVEurgb60Hz240Int;
extern GXRModeObj TVEurgb60Hz240IntAa;
extern GXRModeObj TVEurgb60Hz480Int;
extern GXRModeObj TVEurgb60Hz480IntDf;
extern GXRModeObj TVEurgb60Hz480IntAa;
extern GXRModeObj TVEurgb60Hz480Prog;
extern GXRModeObj TVEurgb60Hz480ProgSoft;
extern GXRModeObj TVEurgb60Hz480ProgAa;
# 43 "c:/devkitPRO/libogc/include/ogc/video.h" 2
# 54 "c:/devkitPRO/libogc/include/ogc/video.h"
typedef void (*VIRetraceCallback)(u32 retraceCnt);

typedef void (*VIPositionCallback)(u32 posX,u32 posY);

void* VIDEO_GetNextFramebuffer();
void* VIDEO_GetCurrentFramebuffer();
# 68 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_Init();
# 77 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_Flush();
# 88 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_SetBlack(u8 black);
# 97 "c:/devkitPRO/libogc/include/ogc/video.h"
u32 VIDEO_GetNextField();
# 106 "c:/devkitPRO/libogc/include/ogc/video.h"
u32 VIDEO_GetCurrentLine();
# 115 "c:/devkitPRO/libogc/include/ogc/video.h"
u32 VIDEO_GetCurrentTvMode();
# 126 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_Configure(GXRModeObj *rmode);
# 139 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_ClearFrameBuffer(GXRModeObj *rmode,void *fb,u32 color);
# 148 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_WaitVSync(void);
# 157 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_SetNextFramebuffer(void *fb);
# 166 "c:/devkitPRO/libogc/include/ogc/video.h"
void VIDEO_SetNextRightFramebuffer(void *fb);
# 177 "c:/devkitPRO/libogc/include/ogc/video.h"
VIRetraceCallback VIDEO_SetPreRetraceCallback(VIRetraceCallback callback);
# 188 "c:/devkitPRO/libogc/include/ogc/video.h"
VIRetraceCallback VIDEO_SetPostRetraceCallback(VIRetraceCallback callback);
# 197 "c:/devkitPRO/libogc/include/ogc/video.h"
u32 VIDEO_HaveComponentCable(void);

GXRModeObj * VIDEO_GetPreferredMode(GXRModeObj *mode);
# 64 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/usbgecko.h" 1
# 10 "c:/devkitPRO/libogc/include/ogc/usbgecko.h"
void usb_flush(s32 chn);
int usb_isgeckoalive(s32 chn);
int usb_recvbuffer(s32 chn,void *buffer,int size);
int usb_sendbuffer(s32 chn,const void *buffer,int size);
int usb_recvbuffer_safe(s32 chn,void *buffer,int size);
int usb_sendbuffer_safe(s32 chn,const void *buffer,int size);
# 65 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/video_types.h" 1
# 66 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/texconv.h" 1
# 45 "c:/devkitPRO/libogc/include/ogc/texconv.h"
void MakeTexture565(const void *src,void *dst,s32 width,s32 height);
# 67 "c:/devkitPRO/libogc/include/gccore.h" 2


# 1 "c:/devkitPRO/libogc/include/ogc/ipc.h" 1
# 56 "c:/devkitPRO/libogc/include/ogc/ipc.h"
typedef struct _ioctlv
{
 void *data;
 u32 len;
} ioctlv;


typedef s32 (*ipccallback)(s32 result,void *usrdata);

s32 iosCreateHeap(s32 size);
s32 iosDestroyHeap(s32 hid);
void* iosAlloc(s32 hid,s32 size);
void iosFree(s32 hid,void *ptr);

void* IPC_GetBufferLo();
void* IPC_GetBufferHi();
void IPC_SetBufferLo(void *bufferlo);
void IPC_SetBufferHi(void *bufferhi);

s32 IOS_Open(const char *filepath,u32 mode);
s32 IOS_OpenAsync(const char *filepath,u32 mode,ipccallback ipc_cb,void *usrdata);

s32 IOS_Close(s32 fd);
s32 IOS_CloseAsync(s32 fd,ipccallback ipc_cb,void *usrdata);

s32 IOS_Seek(s32 fd,s32 where,s32 whence);
s32 IOS_SeekAsync(s32 fd,s32 where,s32 whence,ipccallback ipc_cb,void *usrdata);
s32 IOS_Read(s32 fd,void *buf,s32 len);
s32 IOS_ReadAsync(s32 fd,void *buf,s32 len,ipccallback ipc_cb,void *usrdata);
s32 IOS_Write(s32 fd,const void *buf,s32 len);
s32 IOS_WriteAsync(s32 fd,const void *buf,s32 len,ipccallback ipc_cb,void *usrdata);

s32 IOS_Ioctl(s32 fd,s32 ioctl,void *buffer_in,s32 len_in,void *buffer_io,s32 len_io);
s32 IOS_IoctlAsync(s32 fd,s32 ioctl,void *buffer_in,s32 len_in,void *buffer_io,s32 len_io,ipccallback ipc_cb,void *usrdata);
s32 IOS_Ioctlv(s32 fd,s32 ioctl,s32 cnt_in,s32 cnt_io,ioctlv *argv);
s32 IOS_IoctlvAsync(s32 fd,s32 ioctl,s32 cnt_in,s32 cnt_io,ioctlv *argv,ipccallback ipc_cb,void *usrdata);

s32 IOS_IoctlvFormat(s32 hId,s32 fd,s32 ioctl,const char *format,...);
s32 IOS_IoctlvFormatAsync(s32 hId,s32 fd,s32 ioctl,ipccallback usr_cb,void *usr_data,const char *format,...);

s32 IOS_IoctlvReboot(s32 fd,s32 ioctl,s32 cnt_in,s32 cnt_io,ioctlv *argv);
s32 IOS_IoctlvRebootBackground(s32 fd,s32 ioctl,s32 cnt_in,s32 cnt_io,ioctlv *argv);
# 70 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/es.h" 1
# 59 "c:/devkitPRO/libogc/include/ogc/es.h"
typedef u32 sigtype;
typedef sigtype sig_header;
typedef sig_header signed_blob;

typedef u8 sha1[20];
typedef u8 aeskey[16];

typedef struct _sig_rsa2048 {
 sigtype type;
 u8 sig[256];
 u8 fill[60];
} __attribute__((packed)) sig_rsa2048;

typedef struct _sig_rsa4096 {
 sigtype type;
 u8 sig[512];
 u8 fill[60];
} __attribute__((packed)) sig_rsa4096;

typedef char sig_issuer[0x40];

typedef struct _tiklimit {
 u32 tag;
 u32 value;
} __attribute__((packed)) tiklimit;

typedef struct _tikview {
 u32 view;
 u64 ticketid;
 u32 devicetype;
 u64 titleid;
 u16 access_mask;
 u8 reserved[0x3c];
 u8 cidx_mask[0x40];
 u16 padding;
 tiklimit limits[8];
} __attribute__((packed)) tikview;

typedef struct _tik {
 sig_issuer issuer;
 u8 fill[63];
 aeskey cipher_title_key;
 u8 fill2;
 u64 ticketid;
 u32 devicetype;
 u64 titleid;
 u16 access_mask;
 u8 reserved[0x3c];
 u8 cidx_mask[0x40];
 u16 padding;
 tiklimit limits[8];
} __attribute__((packed)) tik;

typedef struct _tmd_content {
 u32 cid;
 u16 index;
 u16 type;
 u64 size;
 sha1 hash;
} __attribute__((packed)) tmd_content;

typedef struct _tmd {
 sig_issuer issuer;
 u8 version;
 u8 ca_crl_version;
 u8 signer_crl_version;
 u8 fill2;
 u64 sys_version;
 u64 title_id;
 u32 title_type;
 u16 group_id;
 u16 zero;
 u16 region;
 u8 ratings[16];
 u8 reserved[42];
 u32 access_rights;
 u16 title_version;
 u16 num_contents;
 u16 boot_index;
 u16 fill3;


 tmd_content contents[];
} __attribute__((packed)) tmd;

typedef struct _cert_header {
 sig_issuer issuer;
 u32 cert_type;
 char cert_name[64];
 u32 cert_id;
} __attribute__((packed)) cert_header;

typedef struct _cert_rsa2048 {
 sig_issuer issuer;
 u32 cert_type;
 char cert_name[64];
 u32 cert_id;
 u8 modulus[256];
 u32 exponent;
 u8 pad[0x34];
} __attribute__((packed)) cert_rsa2048;

typedef struct _cert_rsa4096 {
 sig_issuer issuer;
 u32 cert_type;
 char cert_name[64];
 u32 cert_id;
 u8 modulus[512];
 u32 exponent;
 u8 pad[0x34];
} __attribute__((packed)) cert_rsa4096;
# 204 "c:/devkitPRO/libogc/include/ogc/es.h"
s32 __ES_Init(void);
s32 __ES_Close(void);
s32 __ES_Reset(void);
s32 ES_GetTitleID(u64 *titleID);
s32 ES_SetUID(u64 uid);
s32 ES_GetDataDir(u64 titleID, char *filepath);
s32 ES_GetNumTicketViews(u64 titleID, u32 *cnt);
s32 ES_GetTicketViews(u64 titleID, tikview *views, u32 cnt);
s32 ES_GetNumOwnedTitles(u32 *cnt);
s32 ES_GetOwnedTitles(u64 *titles, u32 cnt);
s32 ES_GetNumTitles(u32 *cnt);
s32 ES_GetTitles(u64 *titles, u32 cnt);
s32 ES_GetNumStoredTMDContents(const signed_blob *stmd, u32 tmd_size, u32 *cnt);
s32 ES_GetStoredTMDContents(const signed_blob *stmd, u32 tmd_size, u32 *contents, u32 cnt);
s32 ES_GetStoredTMDSize(u64 titleID, u32 *size);
s32 ES_GetStoredTMD(u64 titleID, signed_blob *stmd, u32 size);
s32 ES_GetTitleContentsCount(u64 titleID, u32 *num);
s32 ES_GetTitleContents(u64 titleID, u8 *data, u32 size);
s32 ES_GetTMDViewSize(u64 titleID, u32 *size);
s32 ES_GetTMDView(u64 titleID, u8 *data, u32 size);
s32 ES_GetNumSharedContents(u32 *cnt);
s32 ES_GetSharedContents(sha1 *contents, u32 cnt);
s32 ES_LaunchTitle(u64 titleID, const tikview *view);
s32 ES_LaunchTitleBackground(u64 titleID, const tikview *view);
s32 ES_Identify(const signed_blob *certificates, u32 certificates_size, const signed_blob *tmd, u32 tmd_size, const signed_blob *ticket, u32 ticket_size, u32 *keyid);
s32 ES_AddTicket(const signed_blob *tik, u32 tik_size, const signed_blob *certificates, u32 certificates_size, const signed_blob *crl, u32 crl_size);
s32 ES_DeleteTicket(const tikview *view);
s32 ES_AddTitleTMD(const signed_blob *tmd, u32 tmd_size);
s32 ES_AddTitleStart(const signed_blob *tmd, u32 tmd_size, const signed_blob *certificatess, u32 certificatess_size, const signed_blob *crl, u32 crl_size);
s32 ES_AddContentStart(u64 titleID, u32 cid);
s32 ES_AddContentData(s32 cid, u8 *data, u32 data_size);
s32 ES_AddContentFinish(u32 cid);
s32 ES_AddTitleFinish(void);
s32 ES_AddTitleCancel(void);
s32 ES_ImportBoot(const signed_blob *tik, u32 tik_size,const signed_blob *tik_certs, u32 tik_certs_size,const signed_blob *tmd, u32 tmd_size,const signed_blob *tmd_certs, u32 tmd_certs_size,const u8 *content, u32 content_size);
s32 ES_OpenContent(u16 index);
s32 ES_OpenTitleContent(u64 titleID, u16 index);
s32 ES_ReadContent(s32 cfd, u8 *data, u32 data_size);
s32 ES_SeekContent(s32 cfd, s32 where, s32 whence);
s32 ES_CloseContent(s32 cfd);
s32 ES_DeleteTitle(u64 titleID);
s32 ES_DeleteTitleContent(u64 titleID);
s32 ES_Encrypt(u32 keynum, u8 *iv, u8 *source, u32 size, u8 *dest);
s32 ES_Decrypt(u32 keynum, u8 *iv, u8 *source, u32 size, u8 *dest);
s32 ES_Sign(u8 *source, u32 size, u8 *sig, u8 *certs);
s32 ES_GetDeviceCert(u8 *outbuf);
s32 ES_GetDeviceID(u32 *device_id);
s32 ES_GetBoot2Version(u32 *version);
signed_blob *ES_NextCert(const signed_blob *certs);
# 71 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/stm.h" 1
# 50 "c:/devkitPRO/libogc/include/ogc/stm.h"
typedef void (*stmcallback)(u32 event);

s32 __STM_Init();
s32 __STM_Close();
s32 STM_ShutdownToStandby();
s32 STM_ShutdownToIdle();
s32 STM_SetLedMode(u32 mode);
s32 STM_RebootSystem();
stmcallback STM_RegisterEventHandler(stmcallback newhandler);
# 72 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/ios.h" 1
# 48 "c:/devkitPRO/libogc/include/ogc/ios.h"
s32 __IOS_InitializeSubsystems(void);
s32 __IOS_ShutdownSubsystems(void);
s32 __IOS_LoadStartupIOS(void);
s32 __IOS_LaunchNewIOS(int version);
s32 IOS_GetPreferredVersion(void);
s32 IOS_ReloadIOS(int version);
s32 IOS_GetVersion();
s32 IOS_GetRevision();
s32 IOS_GetRevisionMajor();
s32 IOS_GetRevisionMinor();
# 73 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/usb.h" 1
# 64 "c:/devkitPRO/libogc/include/ogc/usb.h"
typedef struct _usbendpointdesc
{
 u8 bLength;
 u8 bDescriptorType;
 u8 bEndpointAddress;
 u8 bmAttributes;
 u16 wMaxPacketSize;
 u8 bInterval;
} __attribute__((packed)) usb_endpointdesc;

typedef struct _usbinterfacedesc
{
 u8 bLength;
 u8 bDescriptorType;
 u8 bInterfaceNumber;
 u8 bAlternateSetting;
 u8 bNumEndpoints;
 u8 bInterfaceClass;
 u8 bInterfaceSubClass;
 u8 bInterfaceProtocol;
 u8 iInterface;
 u8 *extra;
 u8 extra_size;
 struct _usbendpointdesc *endpoints;
} __attribute__((packed)) usb_interfacedesc;

typedef struct _usbconfdesc
{
 u8 bLength;
 u8 bDescriptorType;
 u16 wTotalLength;
 u8 bNumInterfaces;
 u8 bConfigurationValue;
 u8 iConfiguration;
 u8 bmAttributes;
 u8 bMaxPower;
 struct _usbinterfacedesc *interfaces;
} __attribute__((packed)) usb_configurationdesc;

typedef struct _usbdevdesc
{
 u8 bLength;
 u8 bDescriptorType;
 u16 bcdUSB;
 u8 bDeviceClass;
 u8 bDeviceSubClass;
 u8 bDeviceProtocol;
 u8 bMaxPacketSize0;
 u16 idVendor;
 u16 idProduct;
 u16 bcdDevice;
 u8 iManufacturer;
 u8 iProduct;
 u8 iSerialNumber;
 u8 bNumConfigurations;
 struct _usbconfdesc *configurations;
} __attribute__((packed)) usb_devdesc;

typedef s32 (*usbcallback)(s32 result,void *usrdata);

s32 USB_Initialize();
s32 USB_Deinitialize();

s32 USB_OpenDevice(const char *device,u16 vid,u16 pid,s32 *fd);
s32 USB_CloseDevice(s32 *fd);
s32 USB_CloseDeviceAsync(s32 *fd,usbcallback cb,void *usrdata);

s32 USB_GetDescriptors(s32 fd, usb_devdesc *udd);
void USB_FreeDescriptors(usb_devdesc *udd);

s32 USB_GetDeviceDescription(s32 fd,usb_devdesc *devdesc);
s32 USB_DeviceRemovalNotifyAsync(s32 fd,usbcallback cb,void *userdata);

void USB_SuspendDevice(s32 fd);
void USB_ResumeDevice(s32 fd);

s32 USB_ReadIntrMsg(s32 fd,u8 bEndpoint,u16 wLength,void *rpData);
s32 USB_ReadIntrMsgAsync(s32 fd,u8 bEndpoint,u16 wLength,void *rpData,usbcallback cb,void *usrdata);

s32 USB_ReadBlkMsg(s32 fd,u8 bEndpoint,u16 wLength,void *rpData);
s32 USB_ReadBlkMsgAsync(s32 fd,u8 bEndpoint,u16 wLength,void *rpData,usbcallback cb,void *usrdata);

s32 USB_ReadCtrlMsg(s32 fd,u8 bmRequestType,u8 bmRequest,u16 wValue,u16 wIndex,u16 wLength,void *rpData);
s32 USB_ReadCtrlMsgAsync(s32 fd,u8 bmRequestType,u8 bmRequest,u16 wValue,u16 wIndex,u16 wLength,void *rpData,usbcallback cb,void *usrdata);

s32 USB_WriteIntrMsg(s32 fd,u8 bEndpoint,u16 wLength,void *rpData);
s32 USB_WriteIntrMsgAsync(s32 fd,u8 bEndpoint,u16 wLength,void *rpData,usbcallback cb,void *usrdata);

s32 USB_WriteBlkMsg(s32 fd,u8 bEndpoint,u16 wLength,void *rpData);
s32 USB_WriteBlkMsgAsync(s32 fd,u8 bEndpoint,u16 wLength,void *rpData,usbcallback cb,void *usrdata);

s32 USB_WriteCtrlMsg(s32 fd,u8 bmRequestType,u8 bmRequest,u16 wValue,u16 wIndex,u16 wLength,void *rpData);
s32 USB_WriteCtrlMsgAsync(s32 fd,u8 bmRequestType,u8 bmRequest,u16 wValue,u16 wIndex,u16 wLength,void *rpData,usbcallback cb,void *usrdata);

s32 USB_GetConfiguration(s32 fd, u8 *configuration);
s32 USB_SetConfiguration(s32 fd, u8 configuration);
s32 USB_SetAlternativeInterface(s32 fd, u8 interface, u8 alternateSetting);
s32 USB_ClearHalt(s32 fd, u8 endpointAddress);
s32 USB_GetDeviceList(const char *devpath,void *descr_buffer,u8 num_descr,u8 b0,u8 *cnt_descr);
# 74 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/isfs.h" 1
# 22 "c:/devkitPRO/libogc/include/ogc/isfs.h"
typedef struct _fstats
{
 u32 file_length;
 u32 file_pos;
} fstats;

typedef s32 (*isfscallback)(s32 result,void *usrdata);

s32 ISFS_Initialize();
s32 ISFS_Deinitialize();

s32 ISFS_Open(const char *filepath,u8 mode);
s32 ISFS_OpenAsync(const char *filepath,u8 mode,isfscallback cb,void *usrdata);
s32 ISFS_Close(s32 fd);
s32 ISFS_CloseAsync(s32 fd,isfscallback cb,void *usrdata);
s32 ISFS_Delete(const char *filepath);
s32 ISFS_DeleteAsync(const char *filepath,isfscallback cb,void *usrdata);
s32 ISFS_ReadDir(const char *filepath,char *name_list,u32 *num);
s32 ISFS_ReadDirAsync(const char *filepath,char *name_list,u32 *num,isfscallback cb,void *usrdata);
s32 ISFS_CreateFile(const char *filepath,u8 attributes,u8 owner_perm,u8 group_perm,u8 other_perm);
s32 ISFS_CreateFileAsync(const char *filepath,u8 attributes,u8 owner_perm,u8 group_perm,u8 other_perm,isfscallback cb,void *usrdata);
s32 ISFS_Write(s32 fd,const void *buffer,u32 length);
s32 ISFS_WriteAsync(s32 fd,const void *buffer,u32 length,isfscallback cb,void *usrdata);
s32 ISFS_Read(s32 fd,void *buffer,u32 length);
s32 ISFS_ReadAsync(s32 fd,void *buffer,u32 length,isfscallback cb,void *usrdata);
s32 ISFS_Seek(s32 fd,s32 where,s32 whence);
s32 ISFS_SeekAsync(s32 fd,s32 where,s32 whence,isfscallback cb,void *usrdata);
s32 ISFS_CreateDir(const char *filepath,u8 attributes,u8 owner_perm,u8 group_perm,u8 other_perm);
s32 ISFS_CreateDirAsync(const char *filepath,u8 attributes,u8 owner_perm,u8 group_perm,u8 other_perm,isfscallback cb,void *usrdata);
s32 ISFS_GetStats(void *stats);
s32 ISFS_GetStatsAsync(void *stats,isfscallback cb,void *usrdata);
s32 ISFS_GetFileStats(s32 fd,fstats *status);
s32 ISFS_GetFileStatsAsync(s32 fd,fstats *status,isfscallback cb,void *usrdata);
s32 ISFS_GetAttr(const char *filepath,u32 *ownerID,u16 *groupID,u8 *attributes,u8 *ownerperm,u8 *groupperm,u8 *otherperm);
s32 ISFS_GetAttrAsync(const char *filepath,u32 *ownerID,u16 *groupID,u8 *attributes,u8 *ownerperm,u8 *groupperm,u8 *otherperm,isfscallback cb,void *usrdata);
s32 ISFS_Rename(const char *filepathOld,const char *filepathNew);
s32 ISFS_RenameAsync(const char *filepathOld,const char *filepathNew,isfscallback cb,void *usrdata);
s32 ISFS_SetAttr(const char *filepath,u32 ownerID,u16 groupID,u8 attributes,u8 ownerperm,u8 groupperm,u8 otherperm);
s32 ISFS_SetAttrAsync(const char *filepath,u32 ownerID,u16 groupID,u8 attributes,u8 ownerperm,u8 groupperm,u8 otherperm,isfscallback cb,void *usrdata);
s32 ISFS_GetUsage(const char* filepath, u32* usage1, u32* usage2);
s32 ISFS_GetUsageAsync(const char* filepath, u32* usage1, u32* usage2,isfscallback cb,void *usrdata);
# 75 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/conf.h" 1
# 50 "c:/devkitPRO/libogc/include/ogc/conf.h"
enum {
 CONF_BIGARRAY = 1,
 CONF_SMALLARRAY,
 CONF_BYTE,
 CONF_SHORT,
 CONF_LONG,
 CONF_BOOL = 7
};

enum {
 CONF_VIDEO_NTSC = 0,
 CONF_VIDEO_PAL,
 CONF_VIDEO_MPAL
};

enum {
 CONF_REGION_JP = 0,
 CONF_REGION_US = 1,
 CONF_REGION_EU = 2,
 CONF_REGION_KR = 4,
 CONF_REGION_CN = 5
};

enum {
 CONF_AREA_JPN = 0,
 CONF_AREA_USA,
 CONF_AREA_EUR,
 CONF_AREA_AUS,
 CONF_AREA_BRA,
 CONF_AREA_TWN,
 CONF_AREA_ROC,
 CONF_AREA_KOR,
 CONF_AREA_HKG,
 CONF_AREA_ASI,
 CONF_AREA_LTN,
 CONF_AREA_SAF,
 CONF_AREA_CHN
};

enum {
 CONF_SHUTDOWN_STANDBY = 0,
 CONF_SHUTDOWN_IDLE
};

enum {
 CONF_LED_OFF = 0,
 CONF_LED_DIM,
 CONF_LED_BRIGHT
};

enum {
 CONF_SOUND_MONO = 0,
 CONF_SOUND_STEREO,
 CONF_SOUND_SURROUND
};

enum {
 CONF_LANG_JAPANESE = 0,
 CONF_LANG_ENGLISH,
 CONF_LANG_GERMAN,
 CONF_LANG_FRENCH,
 CONF_LANG_SPANISH,
 CONF_LANG_ITALIAN,
 CONF_LANG_DUTCH,
 CONF_LANG_SIMP_CHINESE,
 CONF_LANG_TRAD_CHINESE,
 CONF_LANG_KOREAN
};

enum {
 CONF_ASPECT_4_3 = 0,
 CONF_ASPECT_16_9
};

enum {
 CONF_SENSORBAR_BOTTOM = 0,
 CONF_SENSORBAR_TOP
};




typedef struct _conf_pad_device conf_pad_device;

struct _conf_pad_device {
 u8 bdaddr[6];
 char name[0x40];
} __attribute__((packed));

typedef struct _conf_pads conf_pads;

struct _conf_pads {
 u8 num_registered;
 conf_pad_device registered[10];
 conf_pad_device active[4];
 conf_pad_device balance_board;
 conf_pad_device unknown;
} __attribute__((packed));

s32 CONF_Init(void);
s32 CONF_GetLength(const char *name);
s32 CONF_GetType(const char *name);
s32 CONF_Get(const char *name, void *buffer, u32 length);
s32 CONF_GetShutdownMode(void);
s32 CONF_GetIdleLedMode(void);
s32 CONF_GetProgressiveScan(void);
s32 CONF_GetEuRGB60(void);
s32 CONF_GetIRSensitivity(void);
s32 CONF_GetSensorBarPosition(void);
s32 CONF_GetPadSpeakerVolume(void);
s32 CONF_GetPadMotorMode(void);
s32 CONF_GetSoundMode(void);
s32 CONF_GetLanguage(void);
s32 CONF_GetCounterBias(u32 *bias);
s32 CONF_GetScreenSaverMode(void);
s32 CONF_GetDisplayOffsetH(s8 *offset);
s32 CONF_GetPadDevices(conf_pads *pads);
s32 CONF_GetNickName(u8 *nickname);
s32 CONF_GetAspectRatio(void);
s32 CONF_GetEULA(void);
s32 CONF_GetParentalPassword(s8 *password);
s32 CONF_GetParentalAnswer(s8 *answer);
s32 CONF_GetWiiConnect24(void);
s32 CONF_GetRegion(void);
s32 CONF_GetArea(void);
s32 CONF_GetVideo(void);
# 76 "c:/devkitPRO/libogc/include/gccore.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/usbstorage.h" 1
# 11 "c:/devkitPRO/libogc/include/ogc/usbstorage.h"
# 1 "c:/devkitPRO/libogc/include/ogc/cond.h" 1
# 52 "c:/devkitPRO/libogc/include/ogc/cond.h"
typedef u32 cond_t;
# 61 "c:/devkitPRO/libogc/include/ogc/cond.h"
s32 LWP_CondInit(cond_t *cond);
# 71 "c:/devkitPRO/libogc/include/ogc/cond.h"
s32 LWP_CondWait(cond_t cond,mutex_t mutex);
# 80 "c:/devkitPRO/libogc/include/ogc/cond.h"
s32 LWP_CondSignal(cond_t cond);
# 89 "c:/devkitPRO/libogc/include/ogc/cond.h"
s32 LWP_CondBroadcast(cond_t cond);
# 100 "c:/devkitPRO/libogc/include/ogc/cond.h"
s32 LWP_CondTimedWait(cond_t cond,mutex_t mutex,const struct timespec *abstime);
# 109 "c:/devkitPRO/libogc/include/ogc/cond.h"
s32 LWP_CondDestroy(cond_t cond);
# 12 "c:/devkitPRO/libogc/include/ogc/usbstorage.h" 2
# 1 "c:/devkitPRO/libogc/include/ogc/disc_io.h" 1
# 44 "c:/devkitPRO/libogc/include/ogc/disc_io.h"
typedef uint32_t sec_t;

typedef bool (* FN_MEDIUM_STARTUP)(void) ;
typedef bool (* FN_MEDIUM_ISINSERTED)(void) ;
typedef bool (* FN_MEDIUM_READSECTORS)(sec_t sector, sec_t numSectors, void* buffer) ;
typedef bool (* FN_MEDIUM_WRITESECTORS)(sec_t sector, sec_t numSectors, const void* buffer) ;
typedef bool (* FN_MEDIUM_CLEARSTATUS)(void) ;
typedef bool (* FN_MEDIUM_SHUTDOWN)(void) ;

struct DISC_INTERFACE_STRUCT {
 unsigned long ioType ;
 unsigned long features ;
 FN_MEDIUM_STARTUP startup ;
 FN_MEDIUM_ISINSERTED isInserted ;
 FN_MEDIUM_READSECTORS readSectors ;
 FN_MEDIUM_WRITESECTORS writeSectors ;
 FN_MEDIUM_CLEARSTATUS clearStatus ;
 FN_MEDIUM_SHUTDOWN shutdown ;
} ;

typedef struct DISC_INTERFACE_STRUCT DISC_INTERFACE ;
# 13 "c:/devkitPRO/libogc/include/ogc/usbstorage.h" 2
# 26 "c:/devkitPRO/libogc/include/ogc/usbstorage.h"
typedef struct
{
 u8 configuration;
 u32 interface;
 u32 altInterface;

 u8 ep_in;
 u8 ep_out;

 u8 max_lun;
 u32 *sector_size;

 s32 usb_fd;

 mutex_t lock;
 cond_t cond;
 s32 retval;

 u32 tag;
 u8 suspended;

 u8 *buffer;
} usbstorage_handle;

s32 USBStorage_Initialize();

s32 USBStorage_Open(usbstorage_handle *dev, const char *bus, u16 vid, u16 pid);
s32 USBStorage_Close(usbstorage_handle *dev);
s32 USBStorage_Reset(usbstorage_handle *dev);

s32 USBStorage_GetMaxLUN(usbstorage_handle *dev);
s32 USBStorage_MountLUN(usbstorage_handle *dev, u8 lun);
s32 USBStorage_Suspend(usbstorage_handle *dev);

s32 USBStorage_ReadCapacity(usbstorage_handle *dev, u8 lun, u32 *sector_size, u32 *n_sectors);
s32 USBStorage_Read(usbstorage_handle *dev, u8 lun, u32 sector, u16 n_sectors, u8 *buffer);
s32 USBStorage_Write(usbstorage_handle *dev, u8 lun, u32 sector, u16 n_sectors, const u8 *buffer);



extern const DISC_INTERFACE __io_usbstorage;
# 77 "c:/devkitPRO/libogc/include/gccore.h" 2

# 1 "c:/devkitPRO/libogc/include/ogc/wiilaunch.h" 1
# 65 "c:/devkitPRO/libogc/include/ogc/wiilaunch.h"
s32 WII_Initialize(void);
s32 WII_ReturnToMenu(void);
s32 WII_ReturnToSettings(void);
s32 WII_ReturnToSettingsPage(const char *page);
s32 WII_LaunchTitle(u64 titleID);
s32 WII_LaunchTitleWithArgs(u64 titleID, int launchcode, ...);
s32 WII_OpenURL(const char *url);
# 79 "c:/devkitPRO/libogc/include/gccore.h" 2
# 138 "c:/devkitPRO/libogc/include/gccore.h"
s32 depackrnc1_ulen(void *packed);
s32 depackrnc1(void *packed,void *unpacked);

void depackrnc2(void *packed,void *unpacked);
# 5 "c:/devkitPRO/libogc/include/ogcsys.h" 2
# 35 "c:/devkitPRO/libogc/include/ogcsys.h"
time_t time(time_t *timer);
int nanosleep(struct timespec *tb);
# 10 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h" 2
# 21 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h"
typedef struct
{
 Vector v;
 float w;
} VertexElement;

typedef struct
{
 float s;
 float t;
} TexCoordElement;

typedef struct
{
 float r;
 float g;
 float b;
 float a;
} GXColorf;

void CopyGLfloatToMtx(const GLfloat *, MtxP);
void CopyGLfloatToMtx44(const GLfloat *, Mtx44P);
void CopyMtxToMtx44(const MtxP src, Mtx44P dest);
void CopyMtx44ToMtx(const Mtx44P src, MtxP dest);


void _glGetMatrixf( GLenum pname, GLfloat *params);
# 60 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h"
GXColorf _tempcolorelement;
Vector _tempnormalelement;
TexCoordElement _temptexcoordelement[8];


typedef struct _array
{
 bool enable;
 const void *p;
 u8 stride;
 GLint size;
 GLenum type;
} VertexArray;

VertexArray norm;
VertexArray vert;
VertexArray tex[8];
VertexArray color;

Vector _normalelements[1000] __attribute__((aligned(32)));
Vector _vertexelements[1000] __attribute__((aligned(32)));
TexCoordElement _texcoordelements[8][1000] __attribute__((aligned(32)));
GXColorf _colorelements[1000] __attribute__((aligned(32)));

typedef struct _VertexData
{
 VertexElement vert;
 VertexElement norm;
 GXColorf color;
 TexCoordElement TexCoord;
} VertexData;

int vert_i;
int _type;
GLenum _GLtype;

int cur_tex;
int cur_tex_client;



u8 depthtestenabled;
u8 depthupdate;
GLenum depthfunction;
float _cleardepth;

typedef struct _prj_mat
{
 Mtx44 mat;
 u8 mode;
 f32 nearZclip;
 f32 farZclip;
} PrjMtx;

# 1 "c:/projects/wii/gl2gx/libogc/../source/include/mat_stack.h" 1
# 12 "c:/projects/wii/gl2gx/libogc/../source/include/mat_stack.h"
typedef struct _stack
{
 void * begin;
 size_t elem_size;
 size_t size;
 size_t cur;
} Stack;

extern void InitStackMtx(Stack *, size_t num);
extern void InitStackMtx44(Stack *, size_t num);
extern void InitStackPrjMtx(Stack *, size_t num);
extern void InitStack(Stack *, size_t num, size_t elem_size);
extern void GrowStack(Stack *, size_t);
extern void DestroyStack(Stack *);
extern void Pop(Stack *);
extern void Push(Stack *);
extern void * Top(Stack *);
extern Mtx * TopMtx(Stack *);
extern Mtx44 * TopMtx44(Stack *);
extern PrjMtx * TopPrjMtx(Stack *);
extern size_t StackSize(Stack *);
extern size_t MaxStackSize(Stack *);
# 115 "c:/projects/wii/gl2gx/libogc/../source/include/glint.h" 2

Stack model_stack;
Stack projection_stack;
Stack texture_stack[8];
Stack *curmtx;
GLenum cur_mode;

u8 incTexDesc(u8 i);


typedef struct _light
{
 bool enabled;

 GXLightObj obj;

 VertexElement pos;

 Vector spotDir;

 GXColorf ambient;
 GXColorf diffuse;
 GXColorf specular;

 float spotExponent;
 float spotCutoff;
 float constant;
 float linear;
 float quad_t;
} LightObj;


LightObj lights[8];


GXColorf globAmbient;



typedef struct _mat
{
 GXColorf emissive;
 GXColorf ambient;
 GXColorf diffuse;
 GXColorf specular;
 float shininess;
} Material;

Material curmat;


bool gxcullfaceanabled;
GLenum gxwinding;



bool lighting;

void initTextures();
void initCalllist();
void _glInitStacks();


u8 blend_type;
u8 blend_src;
u8 blend_dst;
u8 blend_op;

u8 cull_mode;

typedef enum _glState
{
 GL_STATE_NONE = 0,
 GL_STATE_BEGIN = 1 << 0,
 GL_STATE_NEWLIST = 1 << 1
} glState;

glState cur_state;






void _glSetErrorEx(GLenum, const char *, int line);


void _glSetEnableTex(bool val);
bool _glGetEnableTex(int tex);

void _glGetPixelTransferf(GLenum pname, GLfloat *param);

GLboolean _glIsArrayEnabled(GLenum cap);

u8 GX_SetTextures(u8 stage);

void *_glGetProcAddress(const char* proc);

void * getFrontFramebuffer();
void * getBackFramebuffer();

void getVImode(u32 *w, u32 *h);

void glDrawRangeElementsEXT(GLenum mode,
        GLuint start,
        GLuint end,
        GLsizei count,
        GLenum type,
        const GLvoid *indices);


typedef struct boxInfo
{
 GLint x;
 GLint y;
 GLsizei width;
 GLsizei height;
} boxInfo;

int fb_max_height;
int fb_max_width;
GLboolean scissor_test;
boxInfo scissorInfo;
boxInfo viewPort;
f32 normNear;
f32 normFar;

f32 line_width;
f32 point_size;

typedef struct _pixelStore
{
 bool swap;
 bool lsb_first;
 int row_length;
 int skip_rows;
 int skip_pixels;
 int alignment;
} pixelStore;

pixelStore pack;
pixelStore unpack;
bool color_write_mask[4];

void GX_SetModViewport(f32 xOrig,f32 yOrig,f32 wd,f32 ht,f32 nearZ,f32 farZ);
void GX_SetModScissor(u32 xOrigin,u32 yOrigin,u32 wd,u32 ht);
void GX_SetMaxScissor();

bool copy_mat_enabled;
GLenum copy_material;


GXColor _clearcolor;

void _glGetPixelStore(GLenum pname, GLint * params);
const GLvoid * pixel_offset(GLenum glFormat, const GLvoid * pixels, GLenum type, size_t width, size_t height, size_t col, size_t row, pixelStore *store);
__inline__ void TransformRGBA(GLfloat *r, GLfloat *g, GLfloat *b, GLfloat *a);

typedef struct _trans
{
 f32 scale;
 f32 bias;
} ColorTrans;

enum transfer_enum
{
 TRAN_R,
 TRAN_G,
 TRAN_B,
 TRAN_A
};

ColorTrans Trans[4];

typedef struct _tex_env
{
 bool enabled;

 u8 min_filter;
 u8 max_filter;
 u8 wrap_s;
 u8 wrap_t;
 f32 minlod;
 f32 maxlod;
 f32 lodbias;
 u8 biasclamp;
 u8 edgelod;
 u8 maxaniso;

 GLenum mode;

 GLenum comRGB;
 GLenum comAlpha;

 GLenum Carg[3];
 GLenum CargOp[3];
 GLenum Aarg[3];
 GLenum AargOp[3];

 GLint tex;

 GXColorf color;

 u8 rgb_scale;
 u8 alpha_scale;
} glTexEnvSet;

void updateFog();

bool fog_enable;
u8 fog_mode;
f32 fog_startz;
f32 fog_endz;
f32 fog_density;
GXColor fog_color;

glTexEnvSet glTexEnvs[8];




GLenum read_mode;


GLuint call_offset;

static __inline__ void OffsetN(void **dest, size_t n)
{
 u8 **p = (u8 **)dest;
 (*p) += n;

}

void TransferPixels(GLenum glFormat, void *dest, u32 format, const GLvoid *pixels, GLenum type, size_t width, size_t height, size_t xoffset, size_t yoffset, size_t transwidth, size_t transheight);

void initTextureSlots();
void * getTextureSlot(size_t size);
void releaseTextureSlot(void * slot, size_t size);


void ResetArrays();

static __inline__ void TransformC(GLfloat *c, ColorTrans *p)
{
 *c = *c*p->scale + p->bias;

 if(*c > 1)
  *c = 1;
 if(*c < 0)
  *c = 0;
}


static __inline__ void TransformRGBA(GLfloat *r, GLfloat *g, GLfloat *b, GLfloat *a)
{
 TransformC(r,Trans+0);
 TransformC(g,Trans+1);
 TransformC(b,Trans+2);
 TransformC(a,Trans+3);
}
# 3 "c:/projects/wii/gl2gx/libogc/../source/gl_extensions.c" 2
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/string.h" 1 3
# 14 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/string.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 15 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
char *rindex (const char *, int);
char *stpcpy (char *, const char *);
char *stpncpy (char *, const char *, size_t);
int strcasecmp (const char *, const char *);
char *strcasestr (const char *, const char *);
char *strdup (const char *);
char *_strdup_r (struct _reent *, const char *);
char *strndup (const char *, size_t);
char *_strndup_r (struct _reent *, const char *, size_t);
char *strerror_r (int, char *, size_t);
size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);
int strncasecmp (const char *, const char *, size_t);
size_t strnlen (const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 100 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/string.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/string.h" 1 3
# 101 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/string.h" 2 3


# 4 "c:/projects/wii/gl2gx/libogc/../source/gl_extensions.c" 2
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 1 3
# 34 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 35 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 2 3


# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stdarg.h" 1 3 4
# 43 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 2 3
# 48 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3


typedef __FILE FILE;
# 59 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/stdio.h" 1 3
# 9 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/stdio.h" 3
     extern void __flockfile(FILE *fp);
# 18 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/stdio.h" 3
     extern void __funlockfile(FILE *fp);
# 66 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 2 3
# 173 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));

int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)));

int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)));

int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)));

int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)));

int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)));

int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));

int remove (const char *);
int rename (const char *, const char *);






int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);


int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));

char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));


int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));


int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));

int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)));

int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)));

int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)));

int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));

int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)));

int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)));

int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)));

int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)));

int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)));

int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)));

int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)));

int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 313 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 341 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
FILE * fmemopen (void *, size_t, const char *);


FILE * open_memstream (char **, size_t *);




int vdprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));
# 358 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)));

char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)));

int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)));

FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)));

int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));

int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)));

int _mkstemp_r (struct _reent *, char *);
char * _mktemp_r (struct _reent *, char *);
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)));

int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new);

int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)));

int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)));

int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)));

int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)));

int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)));

int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)));

char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)));

char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)));

int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)));

int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)));

int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)));

int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)));

int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)));

int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)));

int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)));

int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)));

int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)));

int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)));


ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 514 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 534 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie));




FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie));
# 551 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3
typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions);

FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions);
# 701 "c:\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdio.h" 3

# 5 "c:/projects/wii/gl2gx/libogc/../source/gl_extensions.c" 2

static const GLubyte vender[] = "gl2gx";
static const GLubyte renderer[] = "gx";
static const GLubyte version[] = "1.2";
static const GLubyte extensions[] = "GL_EXT_texture_lod_bias\nGL_EXT_texture_filter_anisotropic\nGL_ARB_multitexture\nGL_EXT_texture_env_add\nGL_EXT_texture_env_combine\nGL_EXT_draw_range_elements\nGL_EXT_bgra";


const GLubyte * glGetString( GLenum name )
{
 if(cur_state & GL_STATE_BEGIN) { _glSetErrorEx(0x0502, "c:/projects/wii/gl2gx/libogc/../source/gl_extensions.c", 14); return ((void *)0); };

 switch(name)
 {
 case 0x1F00: return vender;
 case 0x1F01: return renderer;
 case 0x1F02: return version;
 case 0x1F03: return extensions;
 default: _glSetErrorEx(0x0500, "c:/projects/wii/gl2gx/libogc/../source/gl_extensions.c", 22); return ((void *)0); break;
 }
};



void *_glGetProcAddress(const char* proc)
{
if(strcmp("glMultiTexCoord2fARB", proc) == 0){ return &glMultiTexCoord2fARB; };
if(strcmp("glActiveTextureARB", proc) == 0){ return &glActiveTextureARB; };
if(strcmp("glClientActiveTextureARB", proc) == 0){ return &glClientActiveTextureARB; };

if(strcmp("glDrawRangeElementsEXT", proc) == 0){ return &glDrawRangeElementsEXT; };
if(strcmp("glDrawRangeElements", proc) == 0){ return &glDrawRangeElements; };
 return ((void *)0);
}

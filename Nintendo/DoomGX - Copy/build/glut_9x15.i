# 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_9x15.c"
# 1 "d:\\Data\\Nintendo\\DoomGX\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_9x15.c"



# 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glutbitmap.h" 1
# 10 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glutbitmap.h"
# 1 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h" 1
# 147 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
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
# 774 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
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
# 1519 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
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
# 1629 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
__attribute__((visibility("default"))) void glColorTable( GLenum target, GLenum internalformat,
                                    GLsizei width, GLenum format,
                                    GLenum type, const GLvoid *table );

__attribute__((visibility("default"))) void glColorSubTable( GLenum target,
                                       GLsizei start, GLsizei count,
                                       GLenum format, GLenum type,
                                       const GLvoid *data );

__attribute__((visibility("default"))) void glColorTableParameteriv(GLenum target, GLenum pname,
                                              const GLint *params);

__attribute__((visibility("default"))) void glColorTableParameterfv(GLenum target, GLenum pname,
                                              const GLfloat *params);

__attribute__((visibility("default"))) void glCopyColorSubTable( GLenum target, GLsizei start,
                                           GLint x, GLint y, GLsizei width );

__attribute__((visibility("default"))) void glCopyColorTable( GLenum target, GLenum internalformat,
                                        GLint x, GLint y, GLsizei width );

__attribute__((visibility("default"))) void glGetColorTable( GLenum target, GLenum format,
                                       GLenum type, GLvoid *table );

__attribute__((visibility("default"))) void glGetColorTableParameterfv( GLenum target, GLenum pname,
                                                  GLfloat *params );

__attribute__((visibility("default"))) void glGetColorTableParameteriv( GLenum target, GLenum pname,
                                                  GLint *params );

__attribute__((visibility("default"))) void glBlendEquation( GLenum mode );

__attribute__((visibility("default"))) void glBlendColor( GLclampf red, GLclampf green,
                                    GLclampf blue, GLclampf alpha );

__attribute__((visibility("default"))) void glHistogram( GLenum target, GLsizei width,
       GLenum internalformat, GLboolean sink );

__attribute__((visibility("default"))) void glResetHistogram( GLenum target );

__attribute__((visibility("default"))) void glGetHistogram( GLenum target, GLboolean reset,
          GLenum format, GLenum type,
          GLvoid *values );

__attribute__((visibility("default"))) void glGetHistogramParameterfv( GLenum target, GLenum pname,
       GLfloat *params );

__attribute__((visibility("default"))) void glGetHistogramParameteriv( GLenum target, GLenum pname,
       GLint *params );

__attribute__((visibility("default"))) void glMinmax( GLenum target, GLenum internalformat,
    GLboolean sink );

__attribute__((visibility("default"))) void glResetMinmax( GLenum target );

__attribute__((visibility("default"))) void glGetMinmax( GLenum target, GLboolean reset,
                                   GLenum format, GLenum types,
                                   GLvoid *values );

__attribute__((visibility("default"))) void glGetMinmaxParameterfv( GLenum target, GLenum pname,
           GLfloat *params );

__attribute__((visibility("default"))) void glGetMinmaxParameteriv( GLenum target, GLenum pname,
           GLint *params );

__attribute__((visibility("default"))) void glConvolutionFilter1D( GLenum target,
 GLenum internalformat, GLsizei width, GLenum format, GLenum type,
 const GLvoid *image );

__attribute__((visibility("default"))) void glConvolutionFilter2D( GLenum target,
 GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
 GLenum type, const GLvoid *image );

__attribute__((visibility("default"))) void glConvolutionParameterf( GLenum target, GLenum pname,
 GLfloat params );

__attribute__((visibility("default"))) void glConvolutionParameterfv( GLenum target, GLenum pname,
 const GLfloat *params );

__attribute__((visibility("default"))) void glConvolutionParameteri( GLenum target, GLenum pname,
 GLint params );

__attribute__((visibility("default"))) void glConvolutionParameteriv( GLenum target, GLenum pname,
 const GLint *params );

__attribute__((visibility("default"))) void glCopyConvolutionFilter1D( GLenum target,
 GLenum internalformat, GLint x, GLint y, GLsizei width );

__attribute__((visibility("default"))) void glCopyConvolutionFilter2D( GLenum target,
 GLenum internalformat, GLint x, GLint y, GLsizei width,
 GLsizei height);

__attribute__((visibility("default"))) void glGetConvolutionFilter( GLenum target, GLenum format,
 GLenum type, GLvoid *image );

__attribute__((visibility("default"))) void glGetConvolutionParameterfv( GLenum target, GLenum pname,
 GLfloat *params );

__attribute__((visibility("default"))) void glGetConvolutionParameteriv( GLenum target, GLenum pname,
 GLint *params );

__attribute__((visibility("default"))) void glSeparableFilter2D( GLenum target,
 GLenum internalformat, GLsizei width, GLsizei height, GLenum format,
 GLenum type, const GLvoid *row, const GLvoid *column );

__attribute__((visibility("default"))) void glGetSeparableFilter( GLenum target, GLenum format,
 GLenum type, GLvoid *row, GLvoid *column, GLvoid *span );

typedef void ( * PFNGLBLENDCOLORPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
typedef void ( * PFNGLBLENDEQUATIONPROC) (GLenum mode);
typedef void ( * PFNGLCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
typedef void ( * PFNGLCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLCOPYCOLORTABLEPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLGETCOLORTABLEPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data);
typedef void ( * PFNGLCOPYCOLORSUBTABLEPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image);
typedef void ( * PFNGLCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image);
typedef void ( * PFNGLCONVOLUTIONPARAMETERFPROC) (GLenum target, GLenum pname, GLfloat params);
typedef void ( * PFNGLCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLCONVOLUTIONPARAMETERIPROC) (GLenum target, GLenum pname, GLint params);
typedef void ( * PFNGLCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLCOPYCONVOLUTIONFILTER1DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLCOPYCONVOLUTIONFILTER2DPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void ( * PFNGLGETCONVOLUTIONFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *image);
typedef void ( * PFNGLGETCONVOLUTIONPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETCONVOLUTIONPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETSEPARABLEFILTERPROC) (GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span);
typedef void ( * PFNGLSEPARABLEFILTER2DPROC) (GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column);
typedef void ( * PFNGLGETHISTOGRAMPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
typedef void ( * PFNGLGETHISTOGRAMPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETHISTOGRAMPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETMINMAXPROC) (GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values);
typedef void ( * PFNGLGETMINMAXPARAMETERFVPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETMINMAXPARAMETERIVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLHISTOGRAMPROC) (GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
typedef void ( * PFNGLMINMAXPROC) (GLenum target, GLenum internalformat, GLboolean sink);
typedef void ( * PFNGLRESETHISTOGRAMPROC) (GLenum target);
typedef void ( * PFNGLRESETMINMAXPROC) (GLenum target);
# 1883 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
__attribute__((visibility("default"))) void glActiveTexture( GLenum texture );

__attribute__((visibility("default"))) void glClientActiveTexture( GLenum texture );

__attribute__((visibility("default"))) void glCompressedTexImage1D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data );

__attribute__((visibility("default"))) void glCompressedTexImage2D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data );

__attribute__((visibility("default"))) void glCompressedTexImage3D( GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data );

__attribute__((visibility("default"))) void glCompressedTexSubImage1D( GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data );

__attribute__((visibility("default"))) void glCompressedTexSubImage2D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data );

__attribute__((visibility("default"))) void glCompressedTexSubImage3D( GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data );

__attribute__((visibility("default"))) void glGetCompressedTexImage( GLenum target, GLint lod, GLvoid *img );

__attribute__((visibility("default"))) void glMultiTexCoord1d( GLenum target, GLdouble s );

__attribute__((visibility("default"))) void glMultiTexCoord1dv( GLenum target, const GLdouble *v );

__attribute__((visibility("default"))) void glMultiTexCoord1f( GLenum target, GLfloat s );

__attribute__((visibility("default"))) void glMultiTexCoord1fv( GLenum target, const GLfloat *v );

__attribute__((visibility("default"))) void glMultiTexCoord1i( GLenum target, GLint s );

__attribute__((visibility("default"))) void glMultiTexCoord1iv( GLenum target, const GLint *v );

__attribute__((visibility("default"))) void glMultiTexCoord1s( GLenum target, GLshort s );

__attribute__((visibility("default"))) void glMultiTexCoord1sv( GLenum target, const GLshort *v );

__attribute__((visibility("default"))) void glMultiTexCoord2d( GLenum target, GLdouble s, GLdouble t );

__attribute__((visibility("default"))) void glMultiTexCoord2dv( GLenum target, const GLdouble *v );

__attribute__((visibility("default"))) void glMultiTexCoord2f( GLenum target, GLfloat s, GLfloat t );

__attribute__((visibility("default"))) void glMultiTexCoord2fv( GLenum target, const GLfloat *v );

__attribute__((visibility("default"))) void glMultiTexCoord2i( GLenum target, GLint s, GLint t );

__attribute__((visibility("default"))) void glMultiTexCoord2iv( GLenum target, const GLint *v );

__attribute__((visibility("default"))) void glMultiTexCoord2s( GLenum target, GLshort s, GLshort t );

__attribute__((visibility("default"))) void glMultiTexCoord2sv( GLenum target, const GLshort *v );

__attribute__((visibility("default"))) void glMultiTexCoord3d( GLenum target, GLdouble s, GLdouble t, GLdouble r );

__attribute__((visibility("default"))) void glMultiTexCoord3dv( GLenum target, const GLdouble *v );

__attribute__((visibility("default"))) void glMultiTexCoord3f( GLenum target, GLfloat s, GLfloat t, GLfloat r );

__attribute__((visibility("default"))) void glMultiTexCoord3fv( GLenum target, const GLfloat *v );

__attribute__((visibility("default"))) void glMultiTexCoord3i( GLenum target, GLint s, GLint t, GLint r );

__attribute__((visibility("default"))) void glMultiTexCoord3iv( GLenum target, const GLint *v );

__attribute__((visibility("default"))) void glMultiTexCoord3s( GLenum target, GLshort s, GLshort t, GLshort r );

__attribute__((visibility("default"))) void glMultiTexCoord3sv( GLenum target, const GLshort *v );

__attribute__((visibility("default"))) void glMultiTexCoord4d( GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q );

__attribute__((visibility("default"))) void glMultiTexCoord4dv( GLenum target, const GLdouble *v );

__attribute__((visibility("default"))) void glMultiTexCoord4f( GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q );

__attribute__((visibility("default"))) void glMultiTexCoord4fv( GLenum target, const GLfloat *v );

__attribute__((visibility("default"))) void glMultiTexCoord4i( GLenum target, GLint s, GLint t, GLint r, GLint q );

__attribute__((visibility("default"))) void glMultiTexCoord4iv( GLenum target, const GLint *v );

__attribute__((visibility("default"))) void glMultiTexCoord4s( GLenum target, GLshort s, GLshort t, GLshort r, GLshort q );

__attribute__((visibility("default"))) void glMultiTexCoord4sv( GLenum target, const GLshort *v );


__attribute__((visibility("default"))) void glLoadTransposeMatrixd( const GLdouble m[16] );

__attribute__((visibility("default"))) void glLoadTransposeMatrixf( const GLfloat m[16] );

__attribute__((visibility("default"))) void glMultTransposeMatrixd( const GLdouble m[16] );

__attribute__((visibility("default"))) void glMultTransposeMatrixf( const GLfloat m[16] );

__attribute__((visibility("default"))) void glSampleCoverage( GLclampf value, GLboolean invert );

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
typedef void ( * PFNGLGETCOMPRESSEDTEXIMAGEPROC) (GLenum target, GLint level, void *img);
# 2066 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
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
# 2150 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
# 1 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h" 1
# 3388 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
# 1 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 152 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 3 4
typedef long int wchar_t;
# 3389 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h" 2


typedef char GLchar;




typedef ptrdiff_t GLintptr;
typedef ptrdiff_t GLsizeiptr;




typedef ptrdiff_t GLintptrARB;
typedef ptrdiff_t GLsizeiptrARB;




typedef char GLcharARB;
typedef unsigned int GLhandleARB;




typedef unsigned short GLhalfARB;



typedef unsigned short GLhalfNV;
# 3454 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
# 1 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 1 3
# 16 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 3
# 1 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 1 3
# 41 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed int int32_t;
typedef unsigned int uint32_t;
# 97 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
  typedef long long unsigned int uintmax_t;
# 243 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/stdint.h" 3
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 17 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 2 3

# 1 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h" 1 3 4
# 19 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 2 3
# 270 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/inttypes.h" 3
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
# 3455 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h" 2




typedef int64_t GLint64EXT;
typedef uint64_t GLuint64EXT;
# 3692 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 3762 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 3880 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 3985 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLUNIFORMMATRIX2X3FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX3X2FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX2X4FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX4X2FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX3X4FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
typedef void ( * PFNGLUNIFORMMATRIX4X3FVPROC) (GLint location, GLsizei count, GLboolean transpose, const GLfloat *value);
# 4075 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLLOADTRANSPOSEMATRIXFARBPROC) (const GLfloat *m);
typedef void ( * PFNGLLOADTRANSPOSEMATRIXDARBPROC) (const GLdouble *m);
typedef void ( * PFNGLMULTTRANSPOSEMATRIXFARBPROC) (const GLfloat *m);
typedef void ( * PFNGLMULTTRANSPOSEMATRIXDARBPROC) (const GLdouble *m);







typedef void ( * PFNGLSAMPLECOVERAGEARBPROC) (GLclampf value, GLboolean invert);
# 4108 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE3DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE2DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXIMAGE1DARBPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data);
typedef void ( * PFNGLGETCOMPRESSEDTEXIMAGEARBPROC) (GLenum target, GLint level, GLvoid *img);
# 4127 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPOINTPARAMETERFARBPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPOINTPARAMETERFVARBPROC) (GLenum pname, const GLfloat *params);
# 4145 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 4166 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCURRENTPALETTEMATRIXARBPROC) (GLint index);
typedef void ( * PFNGLMATRIXINDEXUBVARBPROC) (GLint size, const GLubyte *indices);
typedef void ( * PFNGLMATRIXINDEXUSVARBPROC) (GLint size, const GLushort *indices);
typedef void ( * PFNGLMATRIXINDEXUIVARBPROC) (GLint size, const GLuint *indices);
typedef void ( * PFNGLMATRIXINDEXPOINTERARBPROC) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
# 4221 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 4305 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 4389 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 4414 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLGENQUERIESARBPROC) (GLsizei n, GLuint *ids);
typedef void ( * PFNGLDELETEQUERIESARBPROC) (GLsizei n, const GLuint *ids);
typedef GLboolean ( * PFNGLISQUERYARBPROC) (GLuint id);
typedef void ( * PFNGLBEGINQUERYARBPROC) (GLenum target, GLuint id);
typedef void ( * PFNGLENDQUERYARBPROC) (GLenum target);
typedef void ( * PFNGLGETQUERYIVARBPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETQUERYOBJECTIVARBPROC) (GLuint id, GLenum pname, GLint *params);
typedef void ( * PFNGLGETQUERYOBJECTUIVARBPROC) (GLuint id, GLenum pname, GLuint *params);
# 4467 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 4515 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLBINDATTRIBLOCATIONARBPROC) (GLhandleARB programObj, GLuint index, const GLcharARB *name);
typedef void ( * PFNGLGETACTIVEATTRIBARBPROC) (GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei *length, GLint *size, GLenum *type, GLcharARB *name);
typedef GLint ( * PFNGLGETATTRIBLOCATIONARBPROC) (GLhandleARB programObj, const GLcharARB *name);
# 4545 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDRAWBUFFERSARBPROC) (GLsizei n, const GLenum *bufs);
# 4557 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCLAMPCOLORARBPROC) (GLenum target, GLenum clamp);
# 4581 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLBLENDCOLOREXTPROC) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);







typedef void ( * PFNGLPOLYGONOFFSETEXTPROC) (GLfloat factor, GLfloat bias);
# 4602 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTEXIMAGE3DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels);
# 4612 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLGETTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLfloat *weights);
typedef void ( * PFNGLTEXFILTERFUNCSGISPROC) (GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);
# 4622 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
# 4635 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOPYTEXIMAGE1DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
typedef void ( * PFNGLCOPYTEXIMAGE2DEXTPROC) (GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
typedef void ( * PFNGLCOPYTEXSUBIMAGE1DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLCOPYTEXSUBIMAGE2DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
typedef void ( * PFNGLCOPYTEXSUBIMAGE3DEXTPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
# 4656 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 4685 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 4715 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
typedef void ( * PFNGLCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLCOPYCOLORTABLESGIPROC) (GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
typedef void ( * PFNGLGETCOLORTABLESGIPROC) (GLenum target, GLenum format, GLenum type, GLvoid *table);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERFVSGIPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERIVSGIPROC) (GLenum target, GLenum pname, GLint *params);







typedef void ( * PFNGLPIXELTEXGENSGIXPROC) (GLenum mode);
# 4742 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPIXELTEXGENPARAMETERISGISPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, const GLint *params);
typedef void ( * PFNGLPIXELTEXGENPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETPIXELTEXGENPARAMETERIVSGISPROC) (GLenum pname, GLint *params);
typedef void ( * PFNGLGETPIXELTEXGENPARAMETERFVSGISPROC) (GLenum pname, GLfloat *params);
# 4756 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTEXIMAGE4DSGISPROC) (GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void ( * PFNGLTEXSUBIMAGE4DSGISPROC) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const GLvoid *pixels);
# 4778 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef GLboolean ( * PFNGLARETEXTURESRESIDENTEXTPROC) (GLsizei n, const GLuint *textures, GLboolean *residences);
typedef void ( * PFNGLBINDTEXTUREEXTPROC) (GLenum target, GLuint texture);
typedef void ( * PFNGLDELETETEXTURESEXTPROC) (GLsizei n, const GLuint *textures);
typedef void ( * PFNGLGENTEXTURESEXTPROC) (GLsizei n, GLuint *textures);
typedef GLboolean ( * PFNGLISTEXTUREEXTPROC) (GLuint texture);
typedef void ( * PFNGLPRIORITIZETEXTURESEXTPROC) (GLsizei n, const GLuint *textures, const GLclampf *priorities);
# 4792 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDETAILTEXFUNCSGISPROC) (GLenum target, GLsizei n, const GLfloat *points);
typedef void ( * PFNGLGETDETAILTEXFUNCSGISPROC) (GLenum target, GLfloat *points);
# 4802 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLSHARPENTEXFUNCSGISPROC) (GLenum target, GLsizei n, const GLfloat *points);
typedef void ( * PFNGLGETSHARPENTEXFUNCSGISPROC) (GLenum target, GLfloat *points);
# 4820 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLSAMPLEMASKSGISPROC) (GLclampf value, GLboolean invert);
typedef void ( * PFNGLSAMPLEPATTERNSGISPROC) (GLenum pattern);
# 4841 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLARRAYELEMENTEXTPROC) (GLint i);
typedef void ( * PFNGLCOLORPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLDRAWARRAYSEXTPROC) (GLenum mode, GLint first, GLsizei count);
typedef void ( * PFNGLEDGEFLAGPOINTEREXTPROC) (GLsizei stride, GLsizei count, const GLboolean *pointer);
typedef void ( * PFNGLGETPOINTERVEXTPROC) (GLenum pname, GLvoid* *params);
typedef void ( * PFNGLINDEXPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLNORMALPOINTEREXTPROC) (GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLTEXCOORDPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
typedef void ( * PFNGLVERTEXPOINTEREXTPROC) (GLint size, GLenum type, GLsizei stride, GLsizei count, const GLvoid *pointer);
# 4881 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLBLENDEQUATIONEXTPROC) (GLenum mode);
# 4912 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLSPRITEPARAMETERFSGIXPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLSPRITEPARAMETERFVSGIXPROC) (GLenum pname, const GLfloat *params);
typedef void ( * PFNGLSPRITEPARAMETERISGIXPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLSPRITEPARAMETERIVSGIXPROC) (GLenum pname, const GLint *params);
# 4928 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPOINTPARAMETERFEXTPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPOINTPARAMETERFVEXTPROC) (GLenum pname, const GLfloat *params);
# 4938 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPOINTPARAMETERFSGISPROC) (GLenum pname, GLfloat param);
typedef void ( * PFNGLPOINTPARAMETERFVSGISPROC) (GLenum pname, const GLfloat *params);
# 4952 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef GLint ( * PFNGLGETINSTRUMENTSSGIXPROC) (void);
typedef void ( * PFNGLINSTRUMENTSBUFFERSGIXPROC) (GLsizei size, GLint *buffer);
typedef GLint ( * PFNGLPOLLINSTRUMENTSSGIXPROC) (GLint *marker_p);
typedef void ( * PFNGLREADINSTRUMENTSSGIXPROC) (GLint marker);
typedef void ( * PFNGLSTARTINSTRUMENTSSGIXPROC) (void);
typedef void ( * PFNGLSTOPINSTRUMENTSSGIXPROC) (GLint marker);
# 4969 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLFRAMEZOOMSGIXPROC) (GLint factor);







typedef void ( * PFNGLTAGSAMPLEBUFFERSGIXPROC) (void);
# 4988 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDEFORMATIONMAP3DSGIXPROC) (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble *points);
typedef void ( * PFNGLDEFORMATIONMAP3FSGIXPROC) (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat *points);
typedef void ( * PFNGLDEFORMSGIXPROC) (GLbitfield mask);
typedef void ( * PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC) (GLbitfield mask);







typedef void ( * PFNGLREFERENCEPLANESGIXPROC) (const GLdouble *equation);







typedef void ( * PFNGLFLUSHRASTERSGIXPROC) (void);
# 5020 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLFOGFUNCSGISPROC) (GLsizei n, const GLfloat *points);
typedef void ( * PFNGLGETFOGFUNCSGISPROC) (GLfloat *points);
# 5038 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLIMAGETRANSFORMPARAMETERIHPPROC) (GLenum target, GLenum pname, GLint param);
typedef void ( * PFNGLIMAGETRANSFORMPARAMETERFHPPROC) (GLenum target, GLenum pname, GLfloat param);
typedef void ( * PFNGLIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETIMAGETRANSFORMPARAMETERIVHPPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETIMAGETRANSFORMPARAMETERFVHPPROC) (GLenum target, GLenum pname, GLfloat *params);
# 5060 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data);
typedef void ( * PFNGLCOPYCOLORSUBTABLEEXTPROC) (GLenum target, GLsizei start, GLint x, GLint y, GLsizei width);
# 5073 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLHINTPGIPROC) (GLenum target, GLint mode);
# 5084 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOLORTABLEEXTPROC) (GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const GLvoid *table);
typedef void ( * PFNGLGETCOLORTABLEEXTPROC) (GLenum target, GLenum format, GLenum type, GLvoid *data);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETCOLORTABLEPARAMETERFVEXTPROC) (GLenum target, GLenum pname, GLfloat *params);
# 5104 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLGETLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, GLint *params);
typedef void ( * PFNGLLISTPARAMETERFSGIXPROC) (GLuint list, GLenum pname, GLfloat param);
typedef void ( * PFNGLLISTPARAMETERFVSGIXPROC) (GLuint list, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLLISTPARAMETERISGIXPROC) (GLuint list, GLenum pname, GLint param);
typedef void ( * PFNGLLISTPARAMETERIVSGIXPROC) (GLuint list, GLenum pname, const GLint *params);
# 5137 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLINDEXMATERIALEXTPROC) (GLenum face, GLenum mode);







typedef void ( * PFNGLINDEXFUNCEXTPROC) (GLenum func, GLclampf ref);
# 5158 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLLOCKARRAYSEXTPROC) (GLint first, GLsizei count);
typedef void ( * PFNGLUNLOCKARRAYSEXTPROC) (void);
# 5168 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCULLPARAMETERDVEXTPROC) (GLenum pname, GLdouble *params);
typedef void ( * PFNGLCULLPARAMETERFVEXTPROC) (GLenum pname, GLfloat *params);
# 5198 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 5231 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDRAWRANGEELEMENTSEXTPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices);
# 5249 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLAPPLYTEXTUREEXTPROC) (GLenum mode);
typedef void ( * PFNGLTEXTURELIGHTEXTPROC) (GLenum pname);
typedef void ( * PFNGLTEXTUREMATERIALEXTPROC) (GLenum face, GLenum mode);
# 5272 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLASYNCMARKERSGIXPROC) (GLuint marker);
typedef GLint ( * PFNGLFINISHASYNCSGIXPROC) (GLuint *markerp);
typedef GLint ( * PFNGLPOLLASYNCSGIXPROC) (GLuint *markerp);
typedef GLuint ( * PFNGLGENASYNCMARKERSSGIXPROC) (GLsizei range);
typedef void ( * PFNGLDELETEASYNCMARKERSSGIXPROC) (GLuint marker, GLsizei range);
typedef GLboolean ( * PFNGLISASYNCMARKERSGIXPROC) (GLuint marker);
# 5296 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLVERTEXPOINTERVINTELPROC) (GLint size, GLenum type, const GLvoid* *pointer);
typedef void ( * PFNGLNORMALPOINTERVINTELPROC) (GLenum type, const GLvoid* *pointer);
typedef void ( * PFNGLCOLORPOINTERVINTELPROC) (GLint size, GLenum type, const GLvoid* *pointer);
typedef void ( * PFNGLTEXCOORDPOINTERVINTELPROC) (GLint size, GLenum type, const GLvoid* *pointer);
# 5314 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPIXELTRANSFORMPARAMETERIEXTPROC) (GLenum target, GLenum pname, GLint param);
typedef void ( * PFNGLPIXELTRANSFORMPARAMETERFEXTPROC) (GLenum target, GLenum pname, GLfloat param);
typedef void ( * PFNGLPIXELTRANSFORMPARAMETERIVEXTPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLPIXELTRANSFORMPARAMETERFVEXTPROC) (GLenum target, GLenum pname, const GLfloat *params);
# 5353 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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







typedef void ( * PFNGLTEXTURENORMALEXTPROC) (GLenum mode);
# 5386 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLMULTIDRAWARRAYSEXTPROC) (GLenum mode, GLint *first, GLsizei *count, GLsizei primcount);
typedef void ( * PFNGLMULTIDRAWELEMENTSEXTPROC) (GLenum mode, const GLsizei *count, GLenum type, const GLvoid* *indices, GLsizei primcount);
# 5399 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLFOGCOORDFEXTPROC) (GLfloat coord);
typedef void ( * PFNGLFOGCOORDFVEXTPROC) (const GLfloat *coord);
typedef void ( * PFNGLFOGCOORDDEXTPROC) (GLdouble coord);
typedef void ( * PFNGLFOGCOORDDVEXTPROC) (const GLdouble *coord);
typedef void ( * PFNGLFOGCOORDPOINTEREXTPROC) (GLenum type, GLsizei stride, const GLvoid *pointer);
# 5436 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 5481 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLFINISHTEXTURESUNXPROC) (void);
# 5496 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLGLOBALALPHAFACTORBSUNPROC) (GLbyte factor);
typedef void ( * PFNGLGLOBALALPHAFACTORSSUNPROC) (GLshort factor);
typedef void ( * PFNGLGLOBALALPHAFACTORISUNPROC) (GLint factor);
typedef void ( * PFNGLGLOBALALPHAFACTORFSUNPROC) (GLfloat factor);
typedef void ( * PFNGLGLOBALALPHAFACTORDSUNPROC) (GLdouble factor);
typedef void ( * PFNGLGLOBALALPHAFACTORUBSUNPROC) (GLubyte factor);
typedef void ( * PFNGLGLOBALALPHAFACTORUSSUNPROC) (GLushort factor);
typedef void ( * PFNGLGLOBALALPHAFACTORUISUNPROC) (GLuint factor);
# 5517 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLREPLACEMENTCODEUISUNPROC) (GLuint code);
typedef void ( * PFNGLREPLACEMENTCODEUSSUNPROC) (GLushort code);
typedef void ( * PFNGLREPLACEMENTCODEUBSUNPROC) (GLubyte code);
typedef void ( * PFNGLREPLACEMENTCODEUIVSUNPROC) (const GLuint *code);
typedef void ( * PFNGLREPLACEMENTCODEUSVSUNPROC) (const GLushort *code);
typedef void ( * PFNGLREPLACEMENTCODEUBVSUNPROC) (const GLubyte *code);
typedef void ( * PFNGLREPLACEMENTCODEPOINTERSUNPROC) (GLenum type, GLsizei stride, const GLvoid* *pointer);
# 5570 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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







typedef void ( * PFNGLBLENDFUNCSEPARATEEXTPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);







typedef void ( * PFNGLBLENDFUNCSEPARATEINGRPROC) (GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha);
# 5671 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLVERTEXWEIGHTFEXTPROC) (GLfloat weight);
typedef void ( * PFNGLVERTEXWEIGHTFVEXTPROC) (const GLfloat *weight);
typedef void ( * PFNGLVERTEXWEIGHTPOINTEREXTPROC) (GLsizei size, GLenum type, GLsizei stride, const GLvoid *pointer);
# 5686 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLFLUSHVERTEXARRAYRANGENVPROC) (void);
typedef void ( * PFNGLVERTEXARRAYRANGENVPROC) (GLsizei length, const GLvoid *pointer);
# 5707 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 5743 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLRESIZEBUFFERSMESAPROC) (void);
# 5774 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 5810 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLMULTIMODEDRAWARRAYSIBMPROC) (const GLenum *mode, const GLint *first, const GLsizei *count, GLsizei primcount, GLint modestride);
typedef void ( * PFNGLMULTIMODEDRAWELEMENTSIBMPROC) (const GLenum *mode, const GLsizei *count, GLenum type, const GLvoid* const *indices, GLsizei primcount, GLint modestride);
# 5826 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLSECONDARYCOLORPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLEDGEFLAGPOINTERLISTIBMPROC) (GLint stride, const GLboolean* *pointer, GLint ptrstride);
typedef void ( * PFNGLFOGCOORDPOINTERLISTIBMPROC) (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLINDEXPOINTERLISTIBMPROC) (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLNORMALPOINTERLISTIBMPROC) (GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLTEXCOORDPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
typedef void ( * PFNGLVERTEXPOINTERLISTIBMPROC) (GLint size, GLenum type, GLint stride, const GLvoid* *pointer, GLint ptrstride);
# 5865 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTBUFFERMASK3DFXPROC) (GLuint mask);
# 5874 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLSAMPLEMASKEXTPROC) (GLclampf value, GLboolean invert);
typedef void ( * PFNGLSAMPLEPATTERNEXTPROC) (GLenum pattern);
# 5899 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTEXTURECOLORMASKSGISPROC) (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);







typedef void ( * PFNGLIGLOOINTERFACESGIXPROC) (GLenum pname, const GLvoid *params);
# 5929 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDELETEFENCESNVPROC) (GLsizei n, const GLuint *fences);
typedef void ( * PFNGLGENFENCESNVPROC) (GLsizei n, GLuint *fences);
typedef GLboolean ( * PFNGLISFENCENVPROC) (GLuint fence);
typedef GLboolean ( * PFNGLTESTFENCENVPROC) (GLuint fence);
typedef void ( * PFNGLGETFENCEIVNVPROC) (GLuint fence, GLenum pname, GLint *params);
typedef void ( * PFNGLFINISHFENCENVPROC) (GLuint fence);
typedef void ( * PFNGLSETFENCENVPROC) (GLuint fence, GLenum condition);
# 5951 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const GLvoid *points);
typedef void ( * PFNGLMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETMAPCONTROLPOINTSNVPROC) (GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid *points);
typedef void ( * PFNGLGETMAPPARAMETERIVNVPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETMAPPARAMETERFVNVPROC) (GLenum target, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETMAPATTRIBPARAMETERIVNVPROC) (GLenum target, GLuint index, GLenum pname, GLint *params);
typedef void ( * PFNGLGETMAPATTRIBPARAMETERFVNVPROC) (GLenum target, GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLEVALMAPSNVPROC) (GLenum target, GLenum mode);
# 5972 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, const GLfloat *params);
typedef void ( * PFNGLGETCOMBINERSTAGEPARAMETERFVNVPROC) (GLenum stage, GLenum pname, GLfloat *params);
# 6064 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 6162 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTEXBUMPPARAMETERIVATIPROC) (GLenum pname, const GLint *param);
typedef void ( * PFNGLTEXBUMPPARAMETERFVATIPROC) (GLenum pname, const GLfloat *param);
typedef void ( * PFNGLGETTEXBUMPPARAMETERIVATIPROC) (GLenum pname, GLint *param);
typedef void ( * PFNGLGETTEXBUMPPARAMETERFVATIPROC) (GLenum pname, GLfloat *param);
# 6186 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 6208 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPNTRIANGLESIATIPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLPNTRIANGLESFATIPROC) (GLenum pname, GLfloat param);
# 6228 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 6288 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 6381 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 6435 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLELEMENTPOINTERATIPROC) (GLenum type, const GLvoid *pointer);
typedef void ( * PFNGLDRAWELEMENTARRAYATIPROC) (GLenum mode, GLsizei count);
typedef void ( * PFNGLDRAWRANGEELEMENTARRAYATIPROC) (GLenum mode, GLuint start, GLuint end, GLsizei count);







typedef void ( * PFNGLDRAWMESHARRAYSSUNPROC) (GLenum mode, GLint first, GLsizei count, GLsizei width);
# 6471 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLGENOCCLUSIONQUERIESNVPROC) (GLsizei n, GLuint *ids);
typedef void ( * PFNGLDELETEOCCLUSIONQUERIESNVPROC) (GLsizei n, const GLuint *ids);
typedef GLboolean ( * PFNGLISOCCLUSIONQUERYNVPROC) (GLuint id);
typedef void ( * PFNGLBEGINOCCLUSIONQUERYNVPROC) (GLuint id);
typedef void ( * PFNGLENDOCCLUSIONQUERYNVPROC) (void);
typedef void ( * PFNGLGETOCCLUSIONQUERYIVNVPROC) (GLuint id, GLenum pname, GLint *params);
typedef void ( * PFNGLGETOCCLUSIONQUERYUIVNVPROC) (GLuint id, GLenum pname, GLuint *params);
# 6486 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPOINTPARAMETERINVPROC) (GLenum pname, GLint param);
typedef void ( * PFNGLPOINTPARAMETERIVNVPROC) (GLenum pname, const GLint *params);
# 6507 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLACTIVESTENCILFACEEXTPROC) (GLenum face);
# 6527 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLELEMENTPOINTERAPPLEPROC) (GLenum type, const GLvoid *pointer);
typedef void ( * PFNGLDRAWELEMENTARRAYAPPLEPROC) (GLenum mode, GLint first, GLsizei count);
typedef void ( * PFNGLDRAWRANGEELEMENTARRAYAPPLEPROC) (GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count);
typedef void ( * PFNGLMULTIDRAWELEMENTARRAYAPPLEPROC) (GLenum mode, const GLint *first, const GLsizei *count, GLsizei primcount);
typedef void ( * PFNGLMULTIDRAWRANGEELEMENTARRAYAPPLEPROC) (GLenum mode, GLuint start, GLuint end, const GLint *first, const GLsizei *count, GLsizei primcount);
# 6546 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLGENFENCESAPPLEPROC) (GLsizei n, GLuint *fences);
typedef void ( * PFNGLDELETEFENCESAPPLEPROC) (GLsizei n, const GLuint *fences);
typedef void ( * PFNGLSETFENCEAPPLEPROC) (GLuint fence);
typedef GLboolean ( * PFNGLISFENCEAPPLEPROC) (GLuint fence);
typedef GLboolean ( * PFNGLTESTFENCEAPPLEPROC) (GLuint fence);
typedef void ( * PFNGLFINISHFENCEAPPLEPROC) (GLuint fence);
typedef GLboolean ( * PFNGLTESTOBJECTAPPLEPROC) (GLenum object, GLuint name);
typedef void ( * PFNGLFINISHOBJECTAPPLEPROC) (GLenum object, GLint name);
# 6564 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLBINDVERTEXARRAYAPPLEPROC) (GLuint array);
typedef void ( * PFNGLDELETEVERTEXARRAYSAPPLEPROC) (GLsizei n, const GLuint *arrays);
typedef void ( * PFNGLGENVERTEXARRAYSAPPLEPROC) (GLsizei n, GLuint *arrays);
typedef GLboolean ( * PFNGLISVERTEXARRAYAPPLEPROC) (GLuint array);
# 6577 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLVERTEXARRAYRANGEAPPLEPROC) (GLsizei length, GLvoid *pointer);
typedef void ( * PFNGLFLUSHVERTEXARRAYRANGEAPPLEPROC) (GLsizei length, GLvoid *pointer);
typedef void ( * PFNGLVERTEXARRAYPARAMETERIAPPLEPROC) (GLenum pname, GLint param);
# 6595 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDRAWBUFFERSATIPROC) (GLsizei n, const GLenum *bufs);
# 6628 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4FNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4DNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLdouble x, GLdouble y, GLdouble z, GLdouble w);
typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4FVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, const GLfloat *v);
typedef void ( * PFNGLPROGRAMNAMEDPARAMETER4DVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, const GLdouble *v);
typedef void ( * PFNGLGETPROGRAMNAMEDPARAMETERFVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLfloat *params);
typedef void ( * PFNGLGETPROGRAMNAMEDPARAMETERDVNVPROC) (GLuint id, GLsizei len, const GLubyte *name, GLdouble *params);
# 6686 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 6740 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPIXELDATARANGENVPROC) (GLenum target, GLsizei length, GLvoid *pointer);
typedef void ( * PFNGLFLUSHPIXELDATARANGENVPROC) (GLenum target);
# 6750 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPRIMITIVERESTARTNVPROC) (void);
typedef void ( * PFNGLPRIMITIVERESTARTINDEXNVPROC) (GLuint index);
# 6768 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef GLvoid* ( * PFNGLMAPOBJECTBUFFERATIPROC) (GLuint buffer);
typedef void ( * PFNGLUNMAPOBJECTBUFFERATIPROC) (GLuint buffer);
# 6778 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLSTENCILOPSEPARATEATIPROC) (GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
typedef void ( * PFNGLSTENCILFUNCSEPARATEATIPROC) (GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);
# 6789 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLVERTEXATTRIBARRAYOBJECTATIPROC) (GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset);
typedef void ( * PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC) (GLuint index, GLenum pname, GLfloat *params);
typedef void ( * PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC) (GLuint index, GLenum pname, GLint *params);
# 6803 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDEPTHBOUNDSEXTPROC) (GLclampd zmin, GLclampd zmax);
# 6815 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLBLENDEQUATIONSEPARATEEXTPROC) (GLenum modeRGB, GLenum modeAlpha);
# 6867 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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







typedef void ( * PFNGLSTRINGMARKERGREMEDYPROC) (GLsizei len, const GLvoid *string);
# 6903 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLSTENCILCLEARTAGEXTPROC) (GLsizei stencilTagBits, GLuint stencilClearTag);
# 6915 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLBLITFRAMEBUFFEREXTPROC) (GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter);







typedef void ( * PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC) (GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height);
# 6936 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLGETQUERYOBJECTI64VEXTPROC) (GLuint id, GLenum pname, GLint64EXT *params);
typedef void ( * PFNGLGETQUERYOBJECTUI64VEXTPROC) (GLuint id, GLenum pname, GLuint64EXT *params);
# 6946 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPROGRAMENVPARAMETERS4FVEXTPROC) (GLenum target, GLuint index, GLsizei count, const GLfloat *params);
typedef void ( * PFNGLPROGRAMLOCALPARAMETERS4FVEXTPROC) (GLenum target, GLuint index, GLsizei count, const GLfloat *params);
# 6956 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLBUFFERPARAMETERIAPPLEPROC) (GLenum target, GLenum pname, GLint param);
typedef void ( * PFNGLFLUSHMAPPEDBUFFERRANGEAPPLEPROC) (GLenum target, GLintptr offset, GLsizeiptr size);
# 6980 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 7006 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPROGRAMVERTEXLIMITNVPROC) (GLenum target, GLint limit);
typedef void ( * PFNGLFRAMEBUFFERTEXTUREEXTPROC) (GLenum target, GLenum attachment, GLuint texture, GLint level);
typedef void ( * PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC) (GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer);
typedef void ( * PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC) (GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face);







typedef void ( * PFNGLPROGRAMPARAMETERIEXTPROC) (GLuint program, GLenum pname, GLint value);
# 7047 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 7087 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 7106 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDRAWARRAYSINSTANCEDEXTPROC) (GLenum mode, GLint start, GLsizei count, GLsizei primcount);
typedef void ( * PFNGLDRAWELEMENTSINSTANCEDEXTPROC) (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices, GLsizei primcount);
# 7123 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTEXBUFFEREXTPROC) (GLenum target, GLenum internalformat, GLuint buffer);
# 7145 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLDEPTHRANGEDNVPROC) (GLdouble zNear, GLdouble zFar);
typedef void ( * PFNGLCLEARDEPTHDNVPROC) (GLdouble depth);
typedef void ( * PFNGLDEPTHBOUNDSDNVPROC) (GLdouble zmin, GLdouble zmax);
# 7159 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC) (GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height);
# 7177 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC) (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLfloat *params);
typedef void ( * PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC) (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLint *params);
typedef void ( * PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC) (GLenum target, GLuint buffer, GLuint index, GLsizei count, const GLuint *params);
# 7192 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLCOLORMASKINDEXEDEXTPROC) (GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a);
typedef void ( * PFNGLGETBOOLEANINDEXEDVEXTPROC) (GLenum target, GLuint index, GLboolean *data);
typedef void ( * PFNGLGETINTEGERINDEXEDVEXTPROC) (GLenum target, GLuint index, GLint *data);
typedef void ( * PFNGLENABLEINDEXEDEXTPROC) (GLenum target, GLuint index);
typedef void ( * PFNGLDISABLEINDEXEDEXTPROC) (GLenum target, GLuint index);
typedef GLboolean ( * PFNGLISENABLEDINDEXEDEXTPROC) (GLenum target, GLuint index);
# 7215 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
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
# 7235 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLUNIFORMBUFFEREXTPROC) (GLuint program, GLint location, GLuint buffer);
typedef GLint ( * PFNGLGETUNIFORMBUFFERSIZEEXTPROC) (GLuint program, GLint location);
typedef GLintptr ( * PFNGLGETUNIFORMOFFSETEXTPROC) (GLuint program, GLint location);
# 7250 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/glext.h"
typedef void ( * PFNGLTEXPARAMETERIIVEXTPROC) (GLenum target, GLenum pname, const GLint *params);
typedef void ( * PFNGLTEXPARAMETERIUIVEXTPROC) (GLenum target, GLenum pname, const GLuint *params);
typedef void ( * PFNGLGETTEXPARAMETERIIVEXTPROC) (GLenum target, GLenum pname, GLint *params);
typedef void ( * PFNGLGETTEXPARAMETERIUIVEXTPROC) (GLenum target, GLenum pname, GLuint *params);
typedef void ( * PFNGLCLEARCOLORIIEXTPROC) (GLint red, GLint green, GLint blue, GLint alpha);
typedef void ( * PFNGLCLEARCOLORIUIEXTPROC) (GLuint red, GLuint green, GLuint blue, GLuint alpha);







typedef void ( * PFNGLFRAMETERMINATORGREMEDYPROC) (void);
# 2151 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h" 2
# 2165 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
__attribute__((visibility("default"))) GLhandleARB glCreateDebugObjectMESA (void);
__attribute__((visibility("default"))) void glClearDebugLogMESA (GLhandleARB obj, GLenum logType, GLenum shaderType);
__attribute__((visibility("default"))) void glGetDebugLogMESA (GLhandleARB obj, GLenum logType, GLenum shaderType, GLsizei maxLength,
                                         GLsizei *length, GLcharARB *debugLog);
__attribute__((visibility("default"))) GLsizei glGetDebugLogLengthMESA (GLhandleARB obj, GLenum logType, GLenum shaderType);
# 2204 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
typedef void (*GLprogramcallbackMESA)(GLenum target, GLvoid *data);

__attribute__((visibility("default"))) void glProgramCallbackMESA(GLenum target, GLprogramcallbackMESA callback, GLvoid *data);

__attribute__((visibility("default"))) void glGetProgramRegisterfvMESA(GLenum target, GLsizei len, const GLubyte *name, GLfloat *v);
# 2218 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
__attribute__((visibility("default"))) void glBlendEquationSeparateATI( GLenum modeRGB, GLenum modeA );
typedef void ( * PFNGLBLENDEQUATIONSEPARATEATIPROC) (GLenum modeRGB, GLenum modeA);
# 11 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glutbitmap.h" 2

typedef struct {
  const GLsizei width;
  const GLsizei height;
  const GLfloat xorig;
  const GLfloat yorig;
  const GLfloat advance;
  const GLubyte *bitmap;
} BitmapCharRec, *BitmapCharPtr;

typedef struct {
  const char *name;
  const int num_chars;
  const int first;
  const BitmapCharRec * const *ch;
} BitmapFontRec, *BitmapFontPtr;

typedef void *GLUTbitmapFont;
# 5 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_9x15.c" 2
# 13 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_9x15.c"
static const BitmapCharRec ch0 = {0,0,0,0,9,0};
# 23 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_9x15.c"
static const BitmapCharRec ch32 = {0,0,0,0,9,0};
# 33 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_9x15.c"
static const BitmapCharRec ch127 = {0,0,0,0,9,0};
# 43 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut/glut_9x15.c"
static const BitmapCharRec ch160 = {0,0,0,0,9,0};




static const GLubyte ch255data[] = {
0x78,0x84,0x4,0x74,0x8c,0x84,0x84,0x84,0x84,0x84,0x0,0x0,0x28,0x28,
};

static const BitmapCharRec ch255 = {6,14,-1,3,9,ch255data};



static const GLubyte ch254data[] = {
0x80,0x80,0x80,0xbc,0xc2,0x82,0x82,0x82,0xc2,0xbc,0x80,0x80,
};

static const BitmapCharRec ch254 = {7,12,-1,3,9,ch254data};



static const GLubyte ch253data[] = {
0x78,0x84,0x4,0x74,0x8c,0x84,0x84,0x84,0x84,0x84,0x0,0x0,0x30,0x8,
};

static const BitmapCharRec ch253 = {6,14,-1,3,9,ch253data};



static const GLubyte ch252data[] = {
0x7a,0x84,0x84,0x84,0x84,0x84,0x84,0x0,0x0,0x28,0x28,
};

static const BitmapCharRec ch252 = {7,11,-1,0,9,ch252data};



static const GLubyte ch251data[] = {
0x7a,0x84,0x84,0x84,0x84,0x84,0x84,0x0,0x0,0x44,0x38,
};

static const BitmapCharRec ch251 = {7,11,-1,0,9,ch251data};



static const GLubyte ch250data[] = {
0x7a,0x84,0x84,0x84,0x84,0x84,0x84,0x0,0x0,0x30,0x8,
};

static const BitmapCharRec ch250 = {7,11,-1,0,9,ch250data};



static const GLubyte ch249data[] = {
0x7a,0x84,0x84,0x84,0x84,0x84,0x84,0x0,0x0,0x18,0x20,
};

static const BitmapCharRec ch249 = {7,11,-1,0,9,ch249data};



static const GLubyte ch248data[] = {
0x80,0x7c,0xa2,0xa2,0x92,0x8a,0x8a,0x7c,0x2,
};

static const BitmapCharRec ch248 = {7,9,-1,1,9,ch248data};



static const GLubyte ch247data[] = {
0x10,0x38,0x10,0x0,0xfe,0x0,0x10,0x38,0x10,
};

static const BitmapCharRec ch247 = {7,9,-1,0,9,ch247data};



static const GLubyte ch246data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x0,0x28,0x28,
};

static const BitmapCharRec ch246 = {7,11,-1,0,9,ch246data};



static const GLubyte ch245data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x0,0x50,0x28,
};

static const BitmapCharRec ch245 = {7,11,-1,0,9,ch245data};



static const GLubyte ch244data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x0,0x44,0x38,
};

static const BitmapCharRec ch244 = {7,11,-1,0,9,ch244data};



static const GLubyte ch243data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x0,0x30,0x8,
};

static const BitmapCharRec ch243 = {7,11,-1,0,9,ch243data};



static const GLubyte ch242data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x0,0x18,0x20,
};

static const BitmapCharRec ch242 = {7,11,-1,0,9,ch242data};



static const GLubyte ch241data[] = {
0x82,0x82,0x82,0x82,0x82,0xc2,0xbc,0x0,0x0,0x50,0x28,
};

static const BitmapCharRec ch241 = {7,11,-1,0,9,ch241data};



static const GLubyte ch240data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x7c,0x8,0x50,0x30,0x48,
};

static const BitmapCharRec ch240 = {7,11,-1,0,9,ch240data};



static const GLubyte ch239data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0xe0,0x0,0x0,0x50,0x50,
};

static const BitmapCharRec ch239 = {5,11,-2,0,9,ch239data};



static const GLubyte ch238data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0xe0,0x0,0x0,0x90,0x60,
};

static const BitmapCharRec ch238 = {5,11,-2,0,9,ch238data};



static const GLubyte ch237data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0xe0,0x0,0x0,0x60,0x10,
};

static const BitmapCharRec ch237 = {5,11,-2,0,9,ch237data};



static const GLubyte ch236data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0xe0,0x0,0x0,0x30,0x40,
};

static const BitmapCharRec ch236 = {5,11,-2,0,9,ch236data};



static const GLubyte ch235data[] = {
0x7c,0x80,0x80,0xfe,0x82,0x82,0x7c,0x0,0x0,0x28,0x28,
};

static const BitmapCharRec ch235 = {7,11,-1,0,9,ch235data};



static const GLubyte ch234data[] = {
0x7c,0x80,0x80,0xfe,0x82,0x82,0x7c,0x0,0x0,0x44,0x38,
};

static const BitmapCharRec ch234 = {7,11,-1,0,9,ch234data};



static const GLubyte ch233data[] = {
0x7c,0x80,0x80,0xfe,0x82,0x82,0x7c,0x0,0x0,0x30,0x8,
};

static const BitmapCharRec ch233 = {7,11,-1,0,9,ch233data};



static const GLubyte ch232data[] = {
0x7c,0x80,0x80,0xfe,0x82,0x82,0x7c,0x0,0x0,0x18,0x20,
};

static const BitmapCharRec ch232 = {7,11,-1,0,9,ch232data};



static const GLubyte ch231data[] = {
0x30,0x48,0x18,0x7c,0x82,0x80,0x80,0x80,0x82,0x7c,
};

static const BitmapCharRec ch231 = {7,10,-1,3,9,ch231data};



static const GLubyte ch230data[] = {
0x6e,0x92,0x90,0x7c,0x12,0x92,0x6c,
};

static const BitmapCharRec ch230 = {7,7,-1,0,9,ch230data};



static const GLubyte ch229data[] = {
0x7a,0x86,0x82,0x7e,0x2,0x2,0x7c,0x0,0x18,0x24,0x18,
};

static const BitmapCharRec ch229 = {7,11,-1,0,9,ch229data};



static const GLubyte ch228data[] = {
0x7a,0x86,0x82,0x7e,0x2,0x2,0x7c,0x0,0x0,0x28,0x28,
};

static const BitmapCharRec ch228 = {7,11,-1,0,9,ch228data};



static const GLubyte ch227data[] = {
0x7a,0x86,0x82,0x7e,0x2,0x2,0x7c,0x0,0x0,0x50,0x28,
};

static const BitmapCharRec ch227 = {7,11,-1,0,9,ch227data};



static const GLubyte ch226data[] = {
0x7a,0x86,0x82,0x7e,0x2,0x2,0x7c,0x0,0x0,0x44,0x38,
};

static const BitmapCharRec ch226 = {7,11,-1,0,9,ch226data};



static const GLubyte ch225data[] = {
0x7a,0x86,0x82,0x7e,0x2,0x2,0x7c,0x0,0x0,0x30,0x8,
};

static const BitmapCharRec ch225 = {7,11,-1,0,9,ch225data};



static const GLubyte ch224data[] = {
0x7a,0x86,0x82,0x7e,0x2,0x2,0x7c,0x0,0x0,0x18,0x20,
};

static const BitmapCharRec ch224 = {7,11,-1,0,9,ch224data};



static const GLubyte ch223data[] = {
0x80,0xbc,0xc2,0x82,0x82,0xfc,0x82,0x82,0x7c,
};

static const BitmapCharRec ch223 = {7,9,-1,1,9,ch223data};



static const GLubyte ch222data[] = {
0x80,0x80,0x80,0xfc,0x82,0x82,0x82,0xfc,0x80,0x80,
};

static const BitmapCharRec ch222 = {7,10,-1,0,9,ch222data};



static const GLubyte ch221data[] = {
0x10,0x10,0x10,0x10,0x28,0x44,0x82,0x82,0x0,0x30,0x8,
};

static const BitmapCharRec ch221 = {7,11,-1,0,9,ch221data};



static const GLubyte ch220data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x0,0x28,0x28,
};

static const BitmapCharRec ch220 = {7,11,-1,0,9,ch220data};



static const GLubyte ch219data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x0,0x44,0x38,
};

static const BitmapCharRec ch219 = {7,11,-1,0,9,ch219data};



static const GLubyte ch218data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x0,0x30,0x8,
};

static const BitmapCharRec ch218 = {7,11,-1,0,9,ch218data};



static const GLubyte ch217data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x0,0x18,0x20,
};

static const BitmapCharRec ch217 = {7,11,-1,0,9,ch217data};



static const GLubyte ch216data[] = {
0x80,0x7c,0xc2,0xa2,0xa2,0x92,0x92,0x8a,0x8a,0x86,0x7c,0x2,
};

static const BitmapCharRec ch216 = {7,12,-1,1,9,ch216data};



static const GLubyte ch215data[] = {
0x82,0x44,0x28,0x10,0x28,0x44,0x82,
};

static const BitmapCharRec ch215 = {7,7,-1,-1,9,ch215data};



static const GLubyte ch214data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x28,0x28,
};

static const BitmapCharRec ch214 = {7,11,-1,0,9,ch214data};



static const GLubyte ch213data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x50,0x28,
};

static const BitmapCharRec ch213 = {7,11,-1,0,9,ch213data};



static const GLubyte ch212data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x44,0x38,
};

static const BitmapCharRec ch212 = {7,11,-1,0,9,ch212data};



static const GLubyte ch211data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x30,0x8,
};

static const BitmapCharRec ch211 = {7,11,-1,0,9,ch211data};



static const GLubyte ch210data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x7c,0x0,0x18,0x20,
};

static const BitmapCharRec ch210 = {7,11,-1,0,9,ch210data};



static const GLubyte ch209data[] = {
0x82,0x86,0x8a,0x92,0x92,0xa2,0xc2,0x82,0x0,0x50,0x28,
};

static const BitmapCharRec ch209 = {7,11,-1,0,9,ch209data};



static const GLubyte ch208data[] = {
0xfc,0x42,0x42,0x42,0x42,0xf2,0x42,0x42,0x42,0xfc,
};

static const BitmapCharRec ch208 = {7,10,-1,0,9,ch208data};



static const GLubyte ch207data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0x20,0xf8,0x0,0x50,0x50,
};

static const BitmapCharRec ch207 = {5,11,-2,0,9,ch207data};



static const GLubyte ch206data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0x20,0xf8,0x0,0x88,0x70,
};

static const BitmapCharRec ch206 = {5,11,-2,0,9,ch206data};



static const GLubyte ch205data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0x20,0xf8,0x0,0x60,0x10,
};

static const BitmapCharRec ch205 = {5,11,-2,0,9,ch205data};



static const GLubyte ch204data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0x20,0xf8,0x0,0x30,0x40,
};

static const BitmapCharRec ch204 = {5,11,-2,0,9,ch204data};



static const GLubyte ch203data[] = {
0xfe,0x40,0x40,0x40,0x78,0x40,0x40,0xfe,0x0,0x28,0x28,
};

static const BitmapCharRec ch203 = {7,11,-1,0,9,ch203data};



static const GLubyte ch202data[] = {
0xfe,0x40,0x40,0x40,0x78,0x40,0x40,0xfe,0x0,0x44,0x38,
};

static const BitmapCharRec ch202 = {7,11,-1,0,9,ch202data};



static const GLubyte ch201data[] = {
0xfe,0x40,0x40,0x40,0x78,0x40,0x40,0xfe,0x0,0x30,0x8,
};

static const BitmapCharRec ch201 = {7,11,-1,0,9,ch201data};



static const GLubyte ch200data[] = {
0xfe,0x40,0x40,0x40,0x78,0x40,0x40,0xfe,0x0,0x18,0x20,
};

static const BitmapCharRec ch200 = {7,11,-1,0,9,ch200data};



static const GLubyte ch199data[] = {
0x30,0x48,0x18,0x7c,0x82,0x80,0x80,0x80,0x80,0x80,0x80,0x82,0x7c,
};

static const BitmapCharRec ch199 = {7,13,-1,3,9,ch199data};



static const GLubyte ch198data[] = {
0x9e,0x90,0x90,0x90,0xfc,0x90,0x90,0x90,0x90,0x6e,
};

static const BitmapCharRec ch198 = {7,10,-1,0,9,ch198data};



static const GLubyte ch197data[] = {
0x82,0x82,0x82,0xfe,0x82,0x82,0x44,0x38,0x10,0x28,0x10,
};

static const BitmapCharRec ch197 = {7,11,-1,0,9,ch197data};



static const GLubyte ch196data[] = {
0x82,0x82,0x82,0xfe,0x82,0x82,0x44,0x38,0x0,0x28,0x28,
};

static const BitmapCharRec ch196 = {7,11,-1,0,9,ch196data};



static const GLubyte ch195data[] = {
0x82,0x82,0x82,0xfe,0x82,0x82,0x44,0x38,0x0,0x50,0x28,
};

static const BitmapCharRec ch195 = {7,11,-1,0,9,ch195data};



static const GLubyte ch194data[] = {
0x82,0x82,0x82,0xfe,0x82,0x82,0x44,0x38,0x0,0x44,0x38,
};

static const BitmapCharRec ch194 = {7,11,-1,0,9,ch194data};



static const GLubyte ch193data[] = {
0x82,0x82,0x82,0xfe,0x82,0x82,0x44,0x38,0x0,0x30,0x8,
};

static const BitmapCharRec ch193 = {7,11,-1,0,9,ch193data};



static const GLubyte ch192data[] = {
0x82,0x82,0x82,0xfe,0x82,0x82,0x44,0x38,0x0,0x18,0x20,
};

static const BitmapCharRec ch192 = {7,11,-1,0,9,ch192data};



static const GLubyte ch191data[] = {
0x7c,0x82,0x82,0x80,0x40,0x20,0x10,0x10,0x0,0x10,
};

static const BitmapCharRec ch191 = {7,10,-1,0,9,ch191data};



static const GLubyte ch190data[] = {
0x6,0x1a,0x12,0xa,0x66,0x92,0x10,0x20,0x90,0x60,
};

static const BitmapCharRec ch190 = {7,10,-1,0,9,ch190data};



static const GLubyte ch189data[] = {
0x1e,0x10,0xc,0x2,0xf2,0x4c,0x40,0x40,0xc0,0x40,
};

static const BitmapCharRec ch189 = {7,10,-1,0,9,ch189data};



static const GLubyte ch188data[] = {
0x6,0x1a,0x12,0xa,0xe6,0x42,0x40,0x40,0xc0,0x40,
};

static const BitmapCharRec ch188 = {7,10,-1,0,9,ch188data};



static const GLubyte ch187data[] = {
0x90,0x48,0x24,0x12,0x12,0x24,0x48,0x90,
};

static const BitmapCharRec ch187 = {7,8,-1,-1,9,ch187data};



static const GLubyte ch186data[] = {
0xf8,0x0,0x70,0x88,0x88,0x70,
};

static const BitmapCharRec ch186 = {5,6,-1,-5,9,ch186data};



static const GLubyte ch185data[] = {
0xe0,0x40,0x40,0x40,0xc0,0x40,
};

static const BitmapCharRec ch185 = {3,6,-1,-4,9,ch185data};



static const GLubyte ch184data[] = {
0x60,0x90,0x30,
};

static const BitmapCharRec ch184 = {4,3,-2,3,9,ch184data};



static const GLubyte ch183data[] = {
0xc0,0xc0,
};

static const BitmapCharRec ch183 = {2,2,-4,-4,9,ch183data};



static const GLubyte ch182data[] = {
0xa,0xa,0xa,0xa,0xa,0x7a,0x8a,0x8a,0x8a,0x7e,
};

static const BitmapCharRec ch182 = {7,10,-1,0,9,ch182data};



static const GLubyte ch181data[] = {
0x80,0x80,0xba,0xc6,0x82,0x82,0x82,0x82,0x82,
};

static const BitmapCharRec ch181 = {7,9,-1,2,9,ch181data};



static const GLubyte ch180data[] = {
0xc0,0x20,
};

static const BitmapCharRec ch180 = {3,2,-3,-9,9,ch180data};



static const GLubyte ch179data[] = {
0x60,0x90,0x10,0x20,0x90,0x60,
};

static const BitmapCharRec ch179 = {4,6,-1,-4,9,ch179data};



static const GLubyte ch178data[] = {
0xf0,0x80,0x60,0x10,0x90,0x60,
};

static const BitmapCharRec ch178 = {4,6,-1,-4,9,ch178data};



static const GLubyte ch177data[] = {
0xfe,0x0,0x10,0x10,0x10,0xfe,0x10,0x10,0x10,
};

static const BitmapCharRec ch177 = {7,9,-1,-1,9,ch177data};



static const GLubyte ch176data[] = {
0x60,0x90,0x90,0x60,
};

static const BitmapCharRec ch176 = {4,4,-3,-6,9,ch176data};



static const GLubyte ch175data[] = {
0xfc,
};

static const BitmapCharRec ch175 = {6,1,-1,-9,9,ch175data};



static const GLubyte ch174data[] = {
0x3c,0x42,0xa5,0xa9,0xbd,0xa5,0xb9,0x42,0x3c,
};

static const BitmapCharRec ch174 = {8,9,0,-1,9,ch174data};



static const GLubyte ch173data[] = {
0xfc,
};

static const BitmapCharRec ch173 = {6,1,-1,-4,9,ch173data};



static const GLubyte ch172data[] = {
0x4,0x4,0x4,0xfc,
};

static const BitmapCharRec ch172 = {6,4,-1,-2,9,ch172data};



static const GLubyte ch171data[] = {
0x12,0x24,0x48,0x90,0x90,0x48,0x24,0x12,
};

static const BitmapCharRec ch171 = {7,8,-1,-1,9,ch171data};



static const GLubyte ch170data[] = {
0xf8,0x0,0x78,0x90,0x70,0x90,0x60,
};

static const BitmapCharRec ch170 = {5,7,-3,-3,9,ch170data};



static const GLubyte ch169data[] = {
0x3c,0x42,0x99,0xa5,0xa1,0xa5,0x99,0x42,0x3c,
};

static const BitmapCharRec ch169 = {8,9,0,-1,9,ch169data};



static const GLubyte ch168data[] = {
0xa0,0xa0,
};

static const BitmapCharRec ch168 = {3,2,-3,-9,9,ch168data};



static const GLubyte ch167data[] = {
0x70,0x88,0x8,0x70,0x88,0x88,0x88,0x70,0x80,0x88,0x70,
};

static const BitmapCharRec ch167 = {5,11,-2,1,9,ch167data};



static const GLubyte ch166data[] = {
0x80,0x80,0x80,0x80,0x80,0x0,0x80,0x80,0x80,0x80,0x80,
};

static const BitmapCharRec ch166 = {1,11,-4,1,9,ch166data};



static const GLubyte ch165data[] = {
0x10,0x10,0x10,0x7c,0x10,0x7c,0x28,0x44,0x82,0x82,
};

static const BitmapCharRec ch165 = {7,10,-1,0,9,ch165data};



static const GLubyte ch164data[] = {
0x82,0x7c,0x44,0x44,0x7c,0x82,
};

static const BitmapCharRec ch164 = {7,6,-1,-3,9,ch164data};



static const GLubyte ch163data[] = {
0x5c,0xa2,0x60,0x20,0x20,0xf8,0x20,0x20,0x22,0x1c,
};

static const BitmapCharRec ch163 = {7,10,-1,0,9,ch163data};



static const GLubyte ch162data[] = {
0x40,0x78,0xa4,0xa0,0x90,0x94,0x78,0x8,
};

static const BitmapCharRec ch162 = {6,8,-1,0,9,ch162data};



static const GLubyte ch161data[] = {
0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x0,0x0,0x80,0x80,
};

static const BitmapCharRec ch161 = {1,11,-4,0,9,ch161data};



static const GLubyte ch126data[] = {
0x8c,0x92,0x62,
};

static const BitmapCharRec ch126 = {7,3,-1,-7,9,ch126data};



static const GLubyte ch125data[] = {
0xe0,0x10,0x10,0x10,0x20,0x18,0x18,0x20,0x10,0x10,0x10,0xe0,
};

static const BitmapCharRec ch125 = {5,12,-1,1,9,ch125data};



static const GLubyte ch124data[] = {
0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
};

static const BitmapCharRec ch124 = {1,12,-4,1,9,ch124data};



static const GLubyte ch123data[] = {
0x38,0x40,0x40,0x40,0x20,0xc0,0xc0,0x20,0x40,0x40,0x40,0x38,
};

static const BitmapCharRec ch123 = {5,12,-3,1,9,ch123data};



static const GLubyte ch122data[] = {
0xfe,0x40,0x20,0x10,0x8,0x4,0xfe,
};

static const BitmapCharRec ch122 = {7,7,-1,0,9,ch122data};



static const GLubyte ch121data[] = {
0x78,0x84,0x4,0x74,0x8c,0x84,0x84,0x84,0x84,0x84,
};

static const BitmapCharRec ch121 = {6,10,-1,3,9,ch121data};



static const GLubyte ch120data[] = {
0x82,0x44,0x28,0x10,0x28,0x44,0x82,
};

static const BitmapCharRec ch120 = {7,7,-1,0,9,ch120data};



static const GLubyte ch119data[] = {
0x44,0xaa,0x92,0x92,0x92,0x82,0x82,
};

static const BitmapCharRec ch119 = {7,7,-1,0,9,ch119data};



static const GLubyte ch118data[] = {
0x10,0x28,0x28,0x44,0x44,0x82,0x82,
};

static const BitmapCharRec ch118 = {7,7,-1,0,9,ch118data};



static const GLubyte ch117data[] = {
0x7a,0x84,0x84,0x84,0x84,0x84,0x84,
};

static const BitmapCharRec ch117 = {7,7,-1,0,9,ch117data};



static const GLubyte ch116data[] = {
0x1c,0x22,0x20,0x20,0x20,0x20,0xfc,0x20,0x20,
};

static const BitmapCharRec ch116 = {7,9,-1,0,9,ch116data};



static const GLubyte ch115data[] = {
0x7c,0x82,0x2,0x7c,0x80,0x82,0x7c,
};

static const BitmapCharRec ch115 = {7,7,-1,0,9,ch115data};



static const GLubyte ch114data[] = {
0x40,0x40,0x40,0x40,0x42,0x62,0x9c,
};

static const BitmapCharRec ch114 = {7,7,-1,0,9,ch114data};



static const GLubyte ch113data[] = {
0x2,0x2,0x2,0x7a,0x86,0x82,0x82,0x82,0x86,0x7a,
};

static const BitmapCharRec ch113 = {7,10,-1,3,9,ch113data};



static const GLubyte ch112data[] = {
0x80,0x80,0x80,0xbc,0xc2,0x82,0x82,0x82,0xc2,0xbc,
};

static const BitmapCharRec ch112 = {7,10,-1,3,9,ch112data};



static const GLubyte ch111data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x7c,
};

static const BitmapCharRec ch111 = {7,7,-1,0,9,ch111data};



static const GLubyte ch110data[] = {
0x82,0x82,0x82,0x82,0x82,0xc2,0xbc,
};

static const BitmapCharRec ch110 = {7,7,-1,0,9,ch110data};



static const GLubyte ch109data[] = {
0x82,0x92,0x92,0x92,0x92,0x92,0xec,
};

static const BitmapCharRec ch109 = {7,7,-1,0,9,ch109data};



static const GLubyte ch108data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xe0,
};

static const BitmapCharRec ch108 = {5,10,-2,0,9,ch108data};



static const GLubyte ch107data[] = {
0x82,0x8c,0xb0,0xc0,0xb0,0x8c,0x82,0x80,0x80,0x80,
};

static const BitmapCharRec ch107 = {7,10,-1,0,9,ch107data};



static const GLubyte ch106data[] = {
0x78,0x84,0x84,0x84,0x4,0x4,0x4,0x4,0x4,0x1c,0x0,0x0,0xc,
};

static const BitmapCharRec ch106 = {6,13,-1,3,9,ch106data};



static const GLubyte ch105data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0xe0,0x0,0x0,0x60,
};

static const BitmapCharRec ch105 = {5,10,-2,0,9,ch105data};



static const GLubyte ch104data[] = {
0x82,0x82,0x82,0x82,0x82,0xc2,0xbc,0x80,0x80,0x80,
};

static const BitmapCharRec ch104 = {7,10,-1,0,9,ch104data};



static const GLubyte ch103data[] = {
0x7c,0x82,0x82,0x7c,0x80,0x78,0x84,0x84,0x84,0x7a,
};

static const BitmapCharRec ch103 = {7,10,-1,3,9,ch103data};



static const GLubyte ch102data[] = {
0x20,0x20,0x20,0x20,0xf8,0x20,0x20,0x22,0x22,0x1c,
};

static const BitmapCharRec ch102 = {7,10,-1,0,9,ch102data};



static const GLubyte ch101data[] = {
0x7c,0x80,0x80,0xfe,0x82,0x82,0x7c,
};

static const BitmapCharRec ch101 = {7,7,-1,0,9,ch101data};



static const GLubyte ch100data[] = {
0x7a,0x86,0x82,0x82,0x82,0x86,0x7a,0x2,0x2,0x2,
};

static const BitmapCharRec ch100 = {7,10,-1,0,9,ch100data};



static const GLubyte ch99data[] = {
0x7c,0x82,0x80,0x80,0x80,0x82,0x7c,
};

static const BitmapCharRec ch99 = {7,7,-1,0,9,ch99data};



static const GLubyte ch98data[] = {
0xbc,0xc2,0x82,0x82,0x82,0xc2,0xbc,0x80,0x80,0x80,
};

static const BitmapCharRec ch98 = {7,10,-1,0,9,ch98data};



static const GLubyte ch97data[] = {
0x7a,0x86,0x82,0x7e,0x2,0x2,0x7c,
};

static const BitmapCharRec ch97 = {7,7,-1,0,9,ch97data};



static const GLubyte ch96data[] = {
0x10,0x20,0x40,0xc0,
};

static const BitmapCharRec ch96 = {4,4,-3,-6,9,ch96data};



static const GLubyte ch95data[] = {
0xff,
};

static const BitmapCharRec ch95 = {8,1,0,1,9,ch95data};



static const GLubyte ch94data[] = {
0x82,0x44,0x28,0x10,
};

static const BitmapCharRec ch94 = {7,4,-1,-6,9,ch94data};



static const GLubyte ch93data[] = {
0xf0,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0xf0,
};

static const BitmapCharRec ch93 = {4,12,-2,1,9,ch93data};



static const GLubyte ch92data[] = {
0x2,0x4,0x4,0x8,0x10,0x10,0x20,0x40,0x40,0x80,
};

static const BitmapCharRec ch92 = {7,10,-1,0,9,ch92data};



static const GLubyte ch91data[] = {
0xf0,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0xf0,
};

static const BitmapCharRec ch91 = {4,12,-3,1,9,ch91data};



static const GLubyte ch90data[] = {
0xfe,0x80,0x80,0x40,0x20,0x10,0x8,0x4,0x2,0xfe,
};

static const BitmapCharRec ch90 = {7,10,-1,0,9,ch90data};



static const GLubyte ch89data[] = {
0x10,0x10,0x10,0x10,0x10,0x10,0x28,0x44,0x82,0x82,
};

static const BitmapCharRec ch89 = {7,10,-1,0,9,ch89data};



static const GLubyte ch88data[] = {
0x82,0x82,0x44,0x28,0x10,0x10,0x28,0x44,0x82,0x82,
};

static const BitmapCharRec ch88 = {7,10,-1,0,9,ch88data};



static const GLubyte ch87data[] = {
0x44,0xaa,0x92,0x92,0x92,0x92,0x82,0x82,0x82,0x82,
};

static const BitmapCharRec ch87 = {7,10,-1,0,9,ch87data};



static const GLubyte ch86data[] = {
0x10,0x28,0x28,0x28,0x44,0x44,0x44,0x82,0x82,0x82,
};

static const BitmapCharRec ch86 = {7,10,-1,0,9,ch86data};



static const GLubyte ch85data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,
};

static const BitmapCharRec ch85 = {7,10,-1,0,9,ch85data};



static const GLubyte ch84data[] = {
0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0xfe,
};

static const BitmapCharRec ch84 = {7,10,-1,0,9,ch84data};



static const GLubyte ch83data[] = {
0x7c,0x82,0x82,0x2,0xc,0x70,0x80,0x82,0x82,0x7c,
};

static const BitmapCharRec ch83 = {7,10,-1,0,9,ch83data};



static const GLubyte ch82data[] = {
0x82,0x82,0x84,0x88,0x90,0xfc,0x82,0x82,0x82,0xfc,
};

static const BitmapCharRec ch82 = {7,10,-1,0,9,ch82data};



static const GLubyte ch81data[] = {
0x6,0x8,0x7c,0x92,0xa2,0x82,0x82,0x82,0x82,0x82,0x82,0x7c,
};

static const BitmapCharRec ch81 = {7,12,-1,2,9,ch81data};



static const GLubyte ch80data[] = {
0x80,0x80,0x80,0x80,0x80,0xfc,0x82,0x82,0x82,0xfc,
};

static const BitmapCharRec ch80 = {7,10,-1,0,9,ch80data};



static const GLubyte ch79data[] = {
0x7c,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x7c,
};

static const BitmapCharRec ch79 = {7,10,-1,0,9,ch79data};



static const GLubyte ch78data[] = {
0x82,0x82,0x82,0x86,0x8a,0x92,0xa2,0xc2,0x82,0x82,
};

static const BitmapCharRec ch78 = {7,10,-1,0,9,ch78data};



static const GLubyte ch77data[] = {
0x82,0x82,0x82,0x92,0x92,0xaa,0xaa,0xc6,0x82,0x82,
};

static const BitmapCharRec ch77 = {7,10,-1,0,9,ch77data};



static const GLubyte ch76data[] = {
0xfe,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
};

static const BitmapCharRec ch76 = {7,10,-1,0,9,ch76data};



static const GLubyte ch75data[] = {
0x82,0x84,0x88,0x90,0xa0,0xe0,0x90,0x88,0x84,0x82,
};

static const BitmapCharRec ch75 = {7,10,-1,0,9,ch75data};



static const GLubyte ch74data[] = {
0x78,0x84,0x4,0x4,0x4,0x4,0x4,0x4,0x4,0x1e,
};

static const BitmapCharRec ch74 = {7,10,-1,0,9,ch74data};



static const GLubyte ch73data[] = {
0xf8,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xf8,
};

static const BitmapCharRec ch73 = {5,10,-2,0,9,ch73data};



static const GLubyte ch72data[] = {
0x82,0x82,0x82,0x82,0x82,0xfe,0x82,0x82,0x82,0x82,
};

static const BitmapCharRec ch72 = {7,10,-1,0,9,ch72data};



static const GLubyte ch71data[] = {
0x7c,0x82,0x82,0x82,0x8e,0x80,0x80,0x80,0x82,0x7c,
};

static const BitmapCharRec ch71 = {7,10,-1,0,9,ch71data};



static const GLubyte ch70data[] = {
0x40,0x40,0x40,0x40,0x40,0x78,0x40,0x40,0x40,0xfe,
};

static const BitmapCharRec ch70 = {7,10,-1,0,9,ch70data};



static const GLubyte ch69data[] = {
0xfe,0x40,0x40,0x40,0x40,0x78,0x40,0x40,0x40,0xfe,
};

static const BitmapCharRec ch69 = {7,10,-1,0,9,ch69data};



static const GLubyte ch68data[] = {
0xfc,0x42,0x42,0x42,0x42,0x42,0x42,0x42,0x42,0xfc,
};

static const BitmapCharRec ch68 = {7,10,-1,0,9,ch68data};



static const GLubyte ch67data[] = {
0x7c,0x82,0x80,0x80,0x80,0x80,0x80,0x80,0x82,0x7c,
};

static const BitmapCharRec ch67 = {7,10,-1,0,9,ch67data};



static const GLubyte ch66data[] = {
0xfc,0x42,0x42,0x42,0x42,0x7c,0x42,0x42,0x42,0xfc,
};

static const BitmapCharRec ch66 = {7,10,-1,0,9,ch66data};



static const GLubyte ch65data[] = {
0x82,0x82,0x82,0xfe,0x82,0x82,0x82,0x44,0x28,0x10,
};

static const BitmapCharRec ch65 = {7,10,-1,0,9,ch65data};



static const GLubyte ch64data[] = {
0x7c,0x80,0x80,0x9a,0xa6,0xa2,0x9e,0x82,0x82,0x7c,
};

static const BitmapCharRec ch64 = {7,10,-1,0,9,ch64data};



static const GLubyte ch63data[] = {
0x10,0x0,0x10,0x10,0x8,0x4,0x2,0x82,0x82,0x7c,
};

static const BitmapCharRec ch63 = {7,10,-1,0,9,ch63data};



static const GLubyte ch62data[] = {
0x80,0x40,0x20,0x10,0x8,0x8,0x10,0x20,0x40,0x80,
};

static const BitmapCharRec ch62 = {5,10,-2,0,9,ch62data};



static const GLubyte ch61data[] = {
0xfe,0x0,0x0,0xfe,
};

static const BitmapCharRec ch61 = {7,4,-1,-2,9,ch61data};



static const GLubyte ch60data[] = {
0x8,0x10,0x20,0x40,0x80,0x80,0x40,0x20,0x10,0x8,
};

static const BitmapCharRec ch60 = {5,10,-2,0,9,ch60data};



static const GLubyte ch59data[] = {
0x80,0x40,0x40,0xc0,0xc0,0x0,0x0,0x0,0xc0,0xc0,
};

static const BitmapCharRec ch59 = {2,10,-4,3,9,ch59data};



static const GLubyte ch58data[] = {
0xc0,0xc0,0x0,0x0,0x0,0xc0,0xc0,
};

static const BitmapCharRec ch58 = {2,7,-4,0,9,ch58data};



static const GLubyte ch57data[] = {
0x78,0x4,0x2,0x2,0x7a,0x86,0x82,0x82,0x82,0x7c,
};

static const BitmapCharRec ch57 = {7,10,-1,0,9,ch57data};



static const GLubyte ch56data[] = {
0x38,0x44,0x82,0x82,0x44,0x38,0x44,0x82,0x44,0x38,
};

static const BitmapCharRec ch56 = {7,10,-1,0,9,ch56data};



static const GLubyte ch55data[] = {
0x40,0x40,0x20,0x20,0x10,0x8,0x4,0x2,0x2,0xfe,
};

static const BitmapCharRec ch55 = {7,10,-1,0,9,ch55data};



static const GLubyte ch54data[] = {
0x7c,0x82,0x82,0x82,0xc2,0xbc,0x80,0x80,0x40,0x3c,
};

static const BitmapCharRec ch54 = {7,10,-1,0,9,ch54data};



static const GLubyte ch53data[] = {
0x7c,0x82,0x2,0x2,0x2,0xc2,0xbc,0x80,0x80,0xfe,
};

static const BitmapCharRec ch53 = {7,10,-1,0,9,ch53data};



static const GLubyte ch52data[] = {
0x4,0x4,0x4,0xfe,0x84,0x44,0x24,0x14,0xc,0x4,
};

static const BitmapCharRec ch52 = {7,10,-1,0,9,ch52data};



static const GLubyte ch51data[] = {
0x7c,0x82,0x2,0x2,0x2,0x1c,0x8,0x4,0x2,0xfe,
};

static const BitmapCharRec ch51 = {7,10,-1,0,9,ch51data};



static const GLubyte ch50data[] = {
0xfe,0x80,0x40,0x30,0x8,0x4,0x2,0x82,0x82,0x7c,
};

static const BitmapCharRec ch50 = {7,10,-1,0,9,ch50data};



static const GLubyte ch49data[] = {
0xfe,0x10,0x10,0x10,0x10,0x10,0x90,0x50,0x30,0x10,
};

static const BitmapCharRec ch49 = {7,10,-1,0,9,ch49data};



static const GLubyte ch48data[] = {
0x38,0x44,0x82,0x82,0x82,0x82,0x82,0x82,0x44,0x38,
};

static const BitmapCharRec ch48 = {7,10,-1,0,9,ch48data};



static const GLubyte ch47data[] = {
0x80,0x40,0x40,0x20,0x10,0x10,0x8,0x4,0x4,0x2,
};

static const BitmapCharRec ch47 = {7,10,-1,0,9,ch47data};



static const GLubyte ch46data[] = {
0xc0,0xc0,
};

static const BitmapCharRec ch46 = {2,2,-4,0,9,ch46data};



static const GLubyte ch45data[] = {
0xfe,
};

static const BitmapCharRec ch45 = {7,1,-1,-4,9,ch45data};



static const GLubyte ch44data[] = {
0x80,0x40,0x40,0xc0,0xc0,
};

static const BitmapCharRec ch44 = {2,5,-4,3,9,ch44data};



static const GLubyte ch43data[] = {
0x10,0x10,0x10,0xfe,0x10,0x10,0x10,
};

static const BitmapCharRec ch43 = {7,7,-1,-1,9,ch43data};



static const GLubyte ch42data[] = {
0x10,0x92,0x54,0x38,0x54,0x92,0x10,
};

static const BitmapCharRec ch42 = {7,7,-1,-1,9,ch42data};



static const GLubyte ch41data[] = {
0x80,0x40,0x40,0x20,0x20,0x20,0x20,0x20,0x20,0x40,0x40,0x80,
};

static const BitmapCharRec ch41 = {3,12,-3,1,9,ch41data};



static const GLubyte ch40data[] = {
0x20,0x40,0x40,0x80,0x80,0x80,0x80,0x80,0x80,0x40,0x40,0x20,
};

static const BitmapCharRec ch40 = {3,12,-3,1,9,ch40data};



static const GLubyte ch39data[] = {
0x80,0x40,0x20,0x30,
};

static const BitmapCharRec ch39 = {4,4,-3,-6,9,ch39data};



static const GLubyte ch38data[] = {
0x62,0x94,0x88,0x94,0x62,0x60,0x90,0x90,0x90,0x60,
};

static const BitmapCharRec ch38 = {7,10,-1,0,9,ch38data};



static const GLubyte ch37data[] = {
0x84,0x4a,0x4a,0x24,0x10,0x10,0x48,0xa4,0xa4,0x42,
};

static const BitmapCharRec ch37 = {7,10,-1,0,9,ch37data};



static const GLubyte ch36data[] = {
0x10,0x7c,0x92,0x12,0x12,0x14,0x38,0x50,0x90,0x92,0x7c,0x10,
};

static const BitmapCharRec ch36 = {7,12,-1,1,9,ch36data};



static const GLubyte ch35data[] = {
0x48,0x48,0xfc,0x48,0x48,0xfc,0x48,0x48,
};

static const BitmapCharRec ch35 = {6,8,-1,-1,9,ch35data};



static const GLubyte ch34data[] = {
0x90,0x90,0x90,
};

static const BitmapCharRec ch34 = {4,3,-3,-7,9,ch34data};



static const GLubyte ch33data[] = {
0x80,0x80,0x0,0x0,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
};

static const BitmapCharRec ch33 = {1,11,-4,0,9,ch33data};



static const GLubyte ch31data[] = {
0xc0,0xc0,
};

static const BitmapCharRec ch31 = {2,2,-4,-2,9,ch31data};



static const GLubyte ch30data[] = {
0x5c,0xa2,0x60,0x20,0x20,0xf8,0x20,0x20,0x22,0x1c,
};

static const BitmapCharRec ch30 = {7,10,-1,0,9,ch30data};



static const GLubyte ch29data[] = {
0x80,0x40,0xfe,0x10,0xfe,0x4,0x2,
};

static const BitmapCharRec ch29 = {7,7,-1,0,9,ch29data};



static const GLubyte ch28data[] = {
0x44,0x24,0x24,0x24,0x24,0x24,0xfe,
};

static const BitmapCharRec ch28 = {7,7,-1,0,9,ch28data};



static const GLubyte ch27data[] = {
0xfe,0x0,0x80,0x40,0x20,0x10,0x8,0x8,0x10,0x20,0x40,0x80,
};

static const BitmapCharRec ch27 = {7,12,-1,2,9,ch27data};



static const GLubyte ch26data[] = {
0xfc,0x0,0x4,0x8,0x10,0x20,0x40,0x40,0x20,0x10,0x8,0x4,
};

static const BitmapCharRec ch26 = {6,12,-2,2,9,ch26data};



static const GLubyte ch25data[] = {
0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
};

static const BitmapCharRec ch25 = {1,15,-4,3,9,ch25data};



static const GLubyte ch24data[] = {
0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0xff,0x80,
};

static const BitmapCharRec ch24 = {9,7,0,3,9,ch24data};



static const GLubyte ch23data[] = {
0xff,0x80,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,
0x8,0x0,
};

static const BitmapCharRec ch23 = {9,9,0,-3,9,ch23data};



static const GLubyte ch22data[] = {
0x8,0x8,0x8,0x8,0x8,0x8,0xf8,0x8,0x8,0x8,0x8,0x8,0x8,0x8,0x8,
};

static const BitmapCharRec ch22 = {5,15,0,3,9,ch22data};



static const GLubyte ch21data[] = {
0x80,0x80,0x80,0x80,0x80,0x80,0xf8,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
};

static const BitmapCharRec ch21 = {5,15,-4,3,9,ch21data};



static const GLubyte ch20data[] = {
0xff,0x80,
};

static const BitmapCharRec ch20 = {9,1,0,1,9,ch20data};



static const GLubyte ch19data[] = {
0xff,0x80,
};

static const BitmapCharRec ch19 = {9,1,0,-1,9,ch19data};



static const GLubyte ch18data[] = {
0xff,0x80,
};

static const BitmapCharRec ch18 = {9,1,0,-3,9,ch18data};



static const GLubyte ch17data[] = {
0xff,0x80,
};

static const BitmapCharRec ch17 = {9,1,0,-5,9,ch17data};



static const GLubyte ch16data[] = {
0xff,0x80,
};

static const BitmapCharRec ch16 = {9,1,0,-7,9,ch16data};



static const GLubyte ch15data[] = {
0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0xff,0x80,0x8,0x0,
0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,0x8,0x0,
};

static const BitmapCharRec ch15 = {9,15,0,3,9,ch15data};



static const GLubyte ch14data[] = {
0xf8,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
};

static const BitmapCharRec ch14 = {5,9,-4,-3,9,ch14data};



static const GLubyte ch13data[] = {
0x80,0x80,0x80,0x80,0x80,0x80,0xf8,
};

static const BitmapCharRec ch13 = {5,7,-4,3,9,ch13data};



static const GLubyte ch12data[] = {
0x8,0x8,0x8,0x8,0x8,0x8,0xf8,
};

static const BitmapCharRec ch12 = {5,7,0,3,9,ch12data};



static const GLubyte ch11data[] = {
0xf8,0x8,0x8,0x8,0x8,0x8,0x8,0x8,0x8,
};

static const BitmapCharRec ch11 = {5,9,0,-3,9,ch11data};



static const GLubyte ch10data[] = {
0x8,0x8,0x8,0x8,0x3e,0x0,0x20,0x50,0x88,0x88,
};

static const BitmapCharRec ch10 = {7,10,-1,2,9,ch10data};



static const GLubyte ch9data[] = {
0x3e,0x20,0x20,0x20,0x20,0x88,0x98,0xa8,0xc8,0x88,
};

static const BitmapCharRec ch9 = {7,10,-1,2,9,ch9data};



static const GLubyte ch8data[] = {
0xfe,0x10,0x10,0xfe,0x10,0x10,
};

static const BitmapCharRec ch8 = {7,6,-1,0,9,ch8data};



static const GLubyte ch7data[] = {
0x70,0x88,0x88,0x70,
};

static const BitmapCharRec ch7 = {5,4,-2,-6,9,ch7data};



static const GLubyte ch6data[] = {
0x20,0x20,0x3c,0x20,0x3e,0x0,0xf8,0x80,0x80,0x80,
};

static const BitmapCharRec ch6 = {7,10,-1,2,9,ch6data};



static const GLubyte ch5data[] = {
0x22,0x22,0x3c,0x22,0x3c,0x0,0x78,0x80,0x80,0x78,
};

static const BitmapCharRec ch5 = {7,10,-1,2,9,ch5data};



static const GLubyte ch4data[] = {
0x10,0x10,0x1c,0x10,0x1e,0x80,0x80,0xe0,0x80,0xf0,
};

static const BitmapCharRec ch4 = {7,10,-1,2,9,ch4data};



static const GLubyte ch3data[] = {
0x8,0x8,0x8,0x3e,0x0,0x88,0x88,0xf8,0x88,0x88,
};

static const BitmapCharRec ch3 = {7,10,-1,2,9,ch3data};



static const GLubyte ch2data[] = {
0x55,0xaa,0x55,0xaa,0x55,0xaa,0x55,0xaa,0x55,0xaa,0x55,0xaa,0x55,0xaa,
};

static const BitmapCharRec ch2 = {8,14,0,3,9,ch2data};



static const GLubyte ch1data[] = {
0x10,0x38,0x7c,0xfe,0x7c,0x38,0x10,
};

static const BitmapCharRec ch1 = {7,7,-1,0,9,ch1data};

static const BitmapCharRec * const chars[] = {
&ch0,
&ch1,
&ch2,
&ch3,
&ch4,
&ch5,
&ch6,
&ch7,
&ch8,
&ch9,
&ch10,
&ch11,
&ch12,
&ch13,
&ch14,
&ch15,
&ch16,
&ch17,
&ch18,
&ch19,
&ch20,
&ch21,
&ch22,
&ch23,
&ch24,
&ch25,
&ch26,
&ch27,
&ch28,
&ch29,
&ch30,
&ch31,
&ch32,
&ch33,
&ch34,
&ch35,
&ch36,
&ch37,
&ch38,
&ch39,
&ch40,
&ch41,
&ch42,
&ch43,
&ch44,
&ch45,
&ch46,
&ch47,
&ch48,
&ch49,
&ch50,
&ch51,
&ch52,
&ch53,
&ch54,
&ch55,
&ch56,
&ch57,
&ch58,
&ch59,
&ch60,
&ch61,
&ch62,
&ch63,
&ch64,
&ch65,
&ch66,
&ch67,
&ch68,
&ch69,
&ch70,
&ch71,
&ch72,
&ch73,
&ch74,
&ch75,
&ch76,
&ch77,
&ch78,
&ch79,
&ch80,
&ch81,
&ch82,
&ch83,
&ch84,
&ch85,
&ch86,
&ch87,
&ch88,
&ch89,
&ch90,
&ch91,
&ch92,
&ch93,
&ch94,
&ch95,
&ch96,
&ch97,
&ch98,
&ch99,
&ch100,
&ch101,
&ch102,
&ch103,
&ch104,
&ch105,
&ch106,
&ch107,
&ch108,
&ch109,
&ch110,
&ch111,
&ch112,
&ch113,
&ch114,
&ch115,
&ch116,
&ch117,
&ch118,
&ch119,
&ch120,
&ch121,
&ch122,
&ch123,
&ch124,
&ch125,
&ch126,
&ch127,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
&ch160,
&ch161,
&ch162,
&ch163,
&ch164,
&ch165,
&ch166,
&ch167,
&ch168,
&ch169,
&ch170,
&ch171,
&ch172,
&ch173,
&ch174,
&ch175,
&ch176,
&ch177,
&ch178,
&ch179,
&ch180,
&ch181,
&ch182,
&ch183,
&ch184,
&ch185,
&ch186,
&ch187,
&ch188,
&ch189,
&ch190,
&ch191,
&ch192,
&ch193,
&ch194,
&ch195,
&ch196,
&ch197,
&ch198,
&ch199,
&ch200,
&ch201,
&ch202,
&ch203,
&ch204,
&ch205,
&ch206,
&ch207,
&ch208,
&ch209,
&ch210,
&ch211,
&ch212,
&ch213,
&ch214,
&ch215,
&ch216,
&ch217,
&ch218,
&ch219,
&ch220,
&ch221,
&ch222,
&ch223,
&ch224,
&ch225,
&ch226,
&ch227,
&ch228,
&ch229,
&ch230,
&ch231,
&ch232,
&ch233,
&ch234,
&ch235,
&ch236,
&ch237,
&ch238,
&ch239,
&ch240,
&ch241,
&ch242,
&ch243,
&ch244,
&ch245,
&ch246,
&ch247,
&ch248,
&ch249,
&ch250,
&ch251,
&ch252,
&ch253,
&ch254,
&ch255,
};

const BitmapFontRec glutBitmap9By15 = {
"-misc-fixed-medium-r-normal--15-140-75-75-C-90-iso8859-1",
256,
0,
chars
};

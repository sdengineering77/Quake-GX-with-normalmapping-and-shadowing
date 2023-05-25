/*---------------------------------------------------------------------------------

	OpenGL Tempate for Wii

---------------------------------------------------------------------------------*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
#include <math.h>
#include <unistd.h>

#ifdef __PPC__
#include <gccore.h>
#include <wiiuse/wpad.h>
#else
#include <windows.h>
#endif

#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>

#ifdef __WIN32__
#include <GL/glaux.h>
#endif

#ifdef __PPC__
#include "cratetex.h"
//#include "cratetex_bin.h"
#include "crate.h"
#include "crate_tpl.h"
#endif

GLfloat	xrot = 0.0f;				// X Rotation
GLfloat	yrot = 0.0f;				// Y Rotation
GLfloat xspeed = 0.2f;				// X Rotation Speed
GLfloat yspeed = 0.2f;				// Y Rotation Speed
GLfloat	z=-5.0f;			// Depth Into The Screen

GLfloat LightAmbient[]=		{ 1.0f, 1.0f, 1.0f, 1.0f };
GLfloat LightDiffuse[]=		{ 1.0f, 1.0f, 1.0f, 1.0f };

GLfloat LightPosition[]=	{ 0.0, 0.0, 2.0, 0.0 }; 

	GLfloat ambi[]= { 0.0f, 0.0f, 0.0f, 1.0f };				 // ambien Light Values ( NEW )
	GLfloat white[]= { 1.0f, 0.5f, 0.8f, 1.0f };				 // Diffuse Light Values ( NEW )
	GLfloat emis[]= { 0.0f, 0.0f, 0.0f, 1.0f };				 // emisive Light Values ( NEW )
	
    GLfloat spec[]= { 1.0f, 1.0f, 1.0f, 1.0f };
    GLfloat shin=   100.0f;

    GLfloat globambi[]= { 0.0f, 0.0f, 0.0f, 1.0f };
    GLfloat no_mat[]= { 0.0f, 0.0f, 0.0f, 1.0f };
  
    GLfloat direction[]={ 0.0f, 0.0f, -1.0f, 1.0};


GLuint	texture[3];			// Storage For 3 Textures

#ifdef __WIN32__
AUX_RGBImageRec *LoadBMP(char *Filename)				// Loads A Bitmap Image
{
	FILE *File=NULL;									// File Handle

	if (!Filename)										// Make Sure A Filename Was Given
	{
		return NULL;									// If Not Return NULL
	}

	File=fopen(Filename,"r");							// Check To See If The File Exists

	if (File)											// Does The File Exist?
	{
		fclose(File);									// Close The Handle
		return auxDIBImageLoad(Filename);				// Load The Bitmap And Return A Pointer
	}

	return NULL;										// If Load Failed Return NULL
}
#endif

int LoadGLTextures()									// Load Bitmaps And Convert To Textures
{

	int Status=FALSE;									// Status Indicator

#ifdef __PPC__
    
	// load texture
	glGenTextures(1, &texture[0]);					// Create one Texture
	DCFlushRange((void*)crate_tpl, crate_tpl_size); //loadtexture procedure
	glBindTexture(GL_TEXTURE_2D, texture[0]);
	glTexImage2D(GL_TEXTURE_2D, 0, 3, cratetex.width, cratetex.height, 0, GL_RGB, GL_UNSIGNED_BYTE, (void*)crate_tpl);
	glEnable(GL_TEXTURE_2D);						// Enable Texture Mapping ( NEW )
	
    Status=TRUE;									// Set The Status To TRUE
#endif

#ifdef __WIN32__    

	AUX_RGBImageRec *TextureImage[1];					// Create Storage Space For The Texture

	memset(TextureImage,0,sizeof(void *)*1);           	// Set The Pointer To NULL

	// Load The Bitmap, Check For Errors, If Bitmap's Not Found Quit
	if (TextureImage[0]=LoadBMP("DataWin32/Crate.bmp"))
	{
		Status=TRUE;									// Set The Status To TRUE

		glGenTextures(1, &texture[0]);					// Create Three Textures

		// Create Nearest Filtered Texture
		glBindTexture(GL_TEXTURE_2D, texture[0]);
		glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
		glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
		glTexImage2D(GL_TEXTURE_2D, 0, 3, TextureImage[0]->sizeX, TextureImage[0]->sizeY, 0, GL_RGB, GL_UNSIGNED_BYTE, TextureImage[0]->data);		
	}
	
	if (TextureImage[0])								// If Texture Exists
	{
		if (TextureImage[0]->data)						// If Texture Image Exists
		{
			free(TextureImage[0]->data);// Free The Texture Image Memory will not compile in dev
		}

		free(TextureImage[0]);							// Free The Image Structure
	}
#endif

	return Status;										// Return The Status
}


// this is where you set up opengl to your needs (called at startup)
int InitGLScene(){

	// setup our camera at the origin
	// looking down the -z axis with y up
	//gluLookAt(0.0F, 0.0F, 0.0F, 0.0F, 0.0F, -1.0F, 0.0F, 1.0F, 0.0F);

#ifdef __WIN32__ 
    glMatrixMode(GL_PROJECTION);						// Select The Projection Matrix
	glLoadIdentity();									// Reset The Projection Matrix
#endif 
 
	// setup our projection matrix
	// this creates a perspective matrix with a view angle of 90,
	// and aspect ratio based on the display resolution
    int w = glutGet(GLUT_SCREEN_WIDTH);
    int h = glutGet(GLUT_SCREEN_HEIGHT);
	gluPerspective(65.0f, (GLfloat) w/(GLfloat) h, 1.0f, 20.0f);

	// initialize the window size ( for glut )
	glutInitWindowSize(glutGet(GLUT_SCREEN_WIDTH), glutGet(GLUT_SCREEN_HEIGHT));
	
#ifdef __WIN32__
	glMatrixMode(GL_MODELVIEW);							// Select The Modelview Matrix
	glLoadIdentity();									// Reset The Modelview Matrix
#endif
	printf("loading textures...");
    if (!LoadGLTextures())								// Jump To Texture Loading Routine
	{
		return FALSE;									// If Texture Didn't Load Return FALSE
	}

	printf("OK\n");

	//glEnable(GL_TEXTURE_2D);							// Enable Texture Mapping
	glDisable(GL_TEXTURE_2D);
	
    //glShadeModel(GL_SMOOTH);							// Enable Smooth Shading
	
    glClearColor(0.0f, 0.0f, 0.0f, 0.5f);				// Black Background
	glClearDepth(1.0f);									// Depth Buffer Setup
	glEnable(GL_DEPTH_TEST);							// Enables Depth Testing
	glDepthFunc(GL_LEQUAL);								// The Type Of Depth Testing To Do
	//glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);	// Really Nice Perspective Calculations

    GLfloat ambient[] = { 0.0, 0.0, 0.0, 1.0 };
    GLfloat diffuse[] = { 1.0, 1.0, 1.0, 1.0 };
    GLfloat position[] = { 0.0, 3.0, 2.0, 1.0 };
    GLfloat lmodel_ambient[] = { 0.4, 0.4, 0.4, 1.0 };
    GLfloat local_view[] = { 0.0 };

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
    glLightfv(GL_LIGHT0, GL_POSITION, position);
    glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
    //glLightModelfv(GL_LIGHT_MODEL_LOCAL_VIEWER, local_view);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);

    glClearColor(0.0, 0.1, 0.1, 0.0);


//	glLightfv(GL_LIGHT1, GL_AMBIENT, LightAmbient);		// Setup The Ambient Light
//	glLightfv(GL_LIGHT1, GL_DIFFUSE, LightDiffuse);		// Setup The Diffuse Light
//	glLightfv(GL_LIGHT1, GL_POSITION,LightPosition);	// Position The Light
//	glEnable(GL_LIGHT1);								// Enable Light One
//	glEnable(GL_LIGHTING);		// Enable Lighting
    	
	//set up material
	glMaterialfv(GL_FRONT, GL_AMBIENT , ambi);
	glMaterialfv(GL_FRONT, GL_DIFFUSE, white);

	glMaterialfv(GL_FRONT, GL_EMISSION, emis); //was emis
	
	glMaterialfv(GL_FRONT, GL_SPECULAR, spec); //specular material
    glMaterialf(GL_FRONT, GL_SHININESS, shin); //shininess
	
	//set up global ambient light
	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, globambi);
	
	glLightfv(GL_LIGHT1,GL_SPOT_DIRECTION, direction);
	glLightf(GL_LIGHT1,GL_SPOT_CUTOFF, 30.0f);
	
 //exponent propertie defines the concentration of the light
       // glLightf(GL_LIGHT1, GL_SPOT_EXPONENT, 10.0f);
        
        //light attenuation (default values used here : no attenuation with the distance)
        glLightf(GL_LIGHT1, GL_CONSTANT_ATTENUATION, 1.0f);
        glLightf(GL_LIGHT1, GL_LINEAR_ATTENUATION, 0.0f);
        glLightf(GL_LIGHT1, GL_QUADRATIC_ATTENUATION, 0.0f);
	
    //glLightf( GL_LIGHT0, GL_CONSTANT_ATTENUATION, 0.0f );
    //glLightf( GL_LIGHT0, GL_LINEAR_ATTENUATION, 0.0f );
    //glLightf( GL_LIGHT0, GL_QUADRATIC_ATTENUATION, 0.002f );
;
	
//	glLightModeli(GL_LIGHT_MODEL_COLOR_CONTROL, GL_SEPARATE_SPECULAR_COLOR);
//glLightModelfv(GL_LIGHT_MODEL_LOCAL_VIEWER, 0.0);

	
//yes now opengl behaves in the strange way as gx does.
//glFrontFace(GL_CCW);
//glEnable(GL_CULL_FACE); 

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
    glLightfv(GL_LIGHT0, GL_POSITION, position);
    glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
    //glLightModelfv(GL_LIGHT_MODEL_LOCAL_VIEWER, local_view);

    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);

    glClearColor(0.0, 0.1, 0.1, 0.0);
	
	return TRUE;										// Initialization Went OK
}


//-----------------------------------------------------------------------------
// Name: renderSphere()
// Desc: Create a sphere centered at cy, cx, cz with radius r, and 
//       precision p. Based on a function Written by Paul Bourke. 
//       http://astronomy.swin.edu.au/~pbourke/opengl/sphere/
//-----------------------------------------------------------------------------
void renderSphere( float cx, float cy, float cz, float r, int p )
{
    const float PI     = 3.14159265358979f;
    const float TWOPI  = 6.28318530717958f;
    const float PIDIV2 = 1.57079632679489f;

    float theta1 = 0.0;
    float theta2 = 0.0;
    float theta3 = 0.0;

    float ex = 0.0f;
    float ey = 0.0f;
    float ez = 0.0f;

    float px = 0.0f;
    float py = 0.0f;
    float pz = 0.0f;

    // Disallow a negative number for radius.
    if( r < 0 )
        r = -r;

    // Disallow a negative number for precision.
    if( p < 0 )
        p = -p;

    // If the sphere is too small, just render a OpenGL point instead.
    if( p < 4 || r <= 0 ) 
    {
        glBegin( GL_POINTS );
        glVertex3f( cx, cy, cz );
        glEnd();
        return;
    }

    int i = 0;
    for( i = 0; i < p/2; ++i )
    {
        theta1 = i * TWOPI / p - PIDIV2;
        theta2 = (i + 1) * TWOPI / p - PIDIV2;

        glBegin( GL_TRIANGLE_STRIP );
        {
            int j = 0;     
            for( j = 0; j <= p; ++j )
            {
                theta3 = j * TWOPI / p;

                ex = cosf(theta2) * cosf(theta3);
                ey = sinf(theta2);
                ez = cosf(theta2) * sinf(theta3);
                px = cx + r * ex;
                py = cy + r * ey;
                pz = cz + r * ez;

                glNormal3f( ex, ey, ez );
                glTexCoord2f( -(j/(float)p) , 2*(i+1)/(float)p );
                glVertex3f( px, py, pz );

                ex = cosf(theta1) * cosf(theta3);
                ey = sinf(theta1);
                ez = cosf(theta1) * sinf(theta3);
                px = cx + r * ex;
                py = cy + r * ey;
                pz = cz + r * ez;

                glNormal3f( ex, ey, ez );
                glTexCoord2f( -(j/(float)p), 2*i/(float)p );
                glVertex3f( px, py, pz );
            }
        }
        glEnd();
    }
}

//Vertex List
static GLfloat CubeV[8][3] = {
        {-0.5F, 0.5F,  0.5F},
        { 0.5F, 0.5F,  0.5F},
        { 0.5F,-0.5F,  0.5F},
        {-0.5F,-0.5F,  0.5F},
        {-0.5F, 0.5F, -0.5F},
        { 0.5F, 0.5F, -0.5F},
        { 0.5F,-0.5F, -0.5F},
        {-0.5F,-0.5F, -0.5F}
};
//Triangle List
static int CubeT[12][3] = {
        {0,1,2},{2,3,0},{5,4,6},
        {4,7,6},{1,5,6},{1,6,2},
        {4,0,7},{0,3,7},{0,4,1},
        {4,5,1},{3,2,7},{6,7,2}
};
//Normal List
static GLfloat CubeN[12][3] = {
        { 0.0f, 0.0f, 1.0f},
        { 0.0f, 0.0f, 1.0f},
        { 0.0f, 0.0f,-1.0f},
        { 0.0f, 0.0f,-1.0f},
        { 1.0f, 0.0f, 0.0f},
        { 1.0f, 0.0f, 0.0f},
        {-1.0f, 0.0f, 0.0f},
        {-1.0f, 0.0f, 0.0f},
        { 0.0f, 1.0f, 0.0f},
        { 0.0f, 1.0f, 0.0f},
        { 0.0f,-1.0f, 0.0f},
        { 0.0f,-1.0f, 0.0f}
};

inline void Normalize3(GLdouble *v)
{
   GLdouble len = sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]);
   v[0] /= len;
   v[1] /= len;
   v[2] /= len;
}


void SphereFace(int p_recurse, double p_radius, GLdouble *a, 
                                               GLdouble *b, GLdouble *c)
{
   if(p_recurse > 1)
{
   // Compute vectors halfway between the passed vectors 
   GLdouble d[3] = {a[0] + b[0], a[1] + b[1], a[2] + b[2]};
   GLdouble e[3] = {b[0] + c[0], b[1] + c[1], b[2] + c[2]};
   GLdouble f[3] = {c[0] + a[0], c[1] + a[1], c[2] + a[2]};

   Normalize3(d);
   Normalize3(e);
   Normalize3(f);

   SphereFace(p_recurse-1, p_radius, a, d, f);
   SphereFace(p_recurse-1, p_radius, d, b, e);
   SphereFace(p_recurse-1, p_radius, f, e, c);
   SphereFace(p_recurse-1, p_radius, f, d, e);
}

                                            
                                               
   glBegin(GL_TRIANGLES);
      glTexCoord2f(0.0f, 0.0f);
      glNormal3f(a[0], a[1], a[2]);
      glVertex3f(a[0] * p_radius, a[1] * p_radius, a[2] * p_radius);
      glNormal3f(b[0], b[1], b[2]);
      glVertex3f(b[0] * p_radius, b[1] * p_radius, b[2] * p_radius);
      glNormal3f(c[0], c[1], c[2]);
      glVertex3f(c[0] * p_radius, c[1] * p_radius, c[2] * p_radius);
   glEnd();
}

void glutSolidSphere(GLdouble radius, GLint slices, GLint stacks)
{
   GLdouble a[] = {1, 0, 0};
   GLdouble b[] = {0, 0, -1};
   GLdouble c[] = {-1, 0, 0};
   GLdouble d[] = {0, 0, 1};
   GLdouble e[] = {0, 1, 0};
   GLdouble f[] = {0, -1, 0};
   
   int recurse = 1;

   //SphereFace(recurse, radius, d, a, e);
   //SphereFace(recurse, radius, a, b, e);
   //SphereFace(recurse, radius, b, c, e);
   //SphereFace(recurse, radius, c, d, e);
   //SphereFace(recurse, radius, a, d, f);
   //SphereFace(recurse, radius, b, a, f);
   //SphereFace(recurse, radius, c, b, f);
   //SphereFace(recurse, radius, d, c, f);
 
 
   int i = 0;
                glBegin(GL_TRIANGLES);
                        for(i=0;i<12;i++)
                        {
                                glNormal3f(CubeN[i][0],CubeN[i][1],CubeN[i][2]);
                                glVertex3f(CubeV[CubeT[i][0]][0],CubeV[CubeT[i][0]][1],CubeV[CubeT[i][0]][2]);
                                glVertex3f(CubeV[CubeT[i][1]][0],CubeV[CubeT[i][1]][1],CubeV[CubeT[i][1]][2]);
                                glVertex3f(CubeV[CubeT[i][2]][0],CubeV[CubeT[i][2]][1],CubeV[CubeT[i][2]][2]);
                        }
                glEnd();
   
   
}



//this is where you draw your opengl scene (called each loop by Display)
int DrawGLScene(){

GLfloat no_mat[] = { 0.0, 0.0, 0.0, 1.0 };
    GLfloat mat_ambient[] = { 0.7, 0.7, 0.7, 1.0 };
    GLfloat mat_ambient_color[] = { 0.8, 0.8, 0.2, 1.0 };
    GLfloat mat_diffuse[] = { 0.1, 0.5, 0.8, 1.0 };
    GLfloat mat_specular[] = { 1.0, 1.0, 1.0, 1.0 };
    GLfloat no_shininess[] = { 0.0 };
    GLfloat low_shininess[] = { 5.0 };
    GLfloat high_shininess[] = { 100.0 };
    GLfloat mat_emission[] = {0.3, 0.2, 0.2, 0.0};

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

glLoadIdentity();
glTranslatef(0.0f,0.0f,-10);
/*
	glEnable(GL_TEXTURE_2D);							// Enable Texture Mapping

//  draw sphere in first row, first column
//  diffuse reflection only; no ambient or specular  
//
    glPushMatrix();
    glTranslatef (-3.75, 3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, no_mat);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, no_mat);
    glMaterialfv(GL_FRONT, GL_SHININESS, no_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    //glutSolidSphere(1.0, 16, 16);
	renderSphere(0, 0, 0, 2, 20);
    glPopMatrix();

//  draw sphere in first row, second column
//  diffuse and specular reflection; low shininess; no ambient
//
    glPushMatrix();
    glTranslatef (-1.25, 3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, no_mat);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, low_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    //glutSolidSphere(1.0, 16, 16);
	renderSphere(0, 0, 0, 2, 20);
    glPopMatrix();

//  draw sphere in first row, third column
//  diffuse and specular reflection; high shininess; no ambient
//
    glPushMatrix();
    glTranslatef (1.25, 3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, no_mat);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, high_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    //glutSolidSphere(1.0, 16, 16);
	renderSphere(0, 0, 0, 2, 20);
    glPopMatrix();

//  draw sphere in first row, fourth column
//  diffuse reflection; emission; no ambient or specular reflection
//
    glPushMatrix();
    glTranslatef (3.75, 3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, no_mat);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, no_mat);
    glMaterialfv(GL_FRONT, GL_SHININESS, no_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, mat_emission);
    //glutSolidSphere(1.0, 16, 16);
	renderSphere(0, 0, 0, 2, 20);
    glPopMatrix();

	glDisable(GL_TEXTURE_2D);							// Enable Texture Mapping

//  draw sphere in second row, first column
//  ambient and diffuse reflection; no specular  
//
    glPushMatrix();
    glTranslatef (-3.75, 0.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, no_mat);
    glMaterialfv(GL_FRONT, GL_SHININESS, no_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();

//  draw sphere in second row, second column
//  ambient, diffuse and specular reflection; low shininess
//
    glPushMatrix();
    glTranslatef (-1.25, 0.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, low_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();

//  draw sphere in second row, third column
//  ambient, diffuse and specular reflection; high shininess
//
    glPushMatrix();
    glTranslatef (1.25, 0.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, high_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();

//  draw sphere in second row, fourth column
//  ambient and diffuse reflection; emission; no specular
//
    glPushMatrix();
    glTranslatef (3.75, 0.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, no_mat);
    glMaterialfv(GL_FRONT, GL_SHININESS, no_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, mat_emission);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();

//  draw sphere in third row, first column
//  colored ambient and diffuse reflection; no specular  
//
    glPushMatrix();
    glTranslatef (-3.75, -3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient_color);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, no_mat);
    glMaterialfv(GL_FRONT, GL_SHININESS, no_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();

//  draw sphere in third row, second column
//  colored ambient, diffuse and specular reflection; low shininess
//
    glPushMatrix();
    glTranslatef (-1.25, -3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient_color);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, low_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();

//  draw sphere in third row, third column
//  colored ambient, diffuse and specular reflection; high shininess
//
    glPushMatrix();
    glTranslatef (1.25, -3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient_color);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular);
    glMaterialfv(GL_FRONT, GL_SHININESS, high_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, no_mat);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();
*/
//  draw sphere in third row, fourth column
//  colored ambient and diffuse reflection; emission; no specular
//
    glPushMatrix();
    glTranslatef (3.75, -3.0, 0.0);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient_color);
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse);
    glMaterialfv(GL_FRONT, GL_SPECULAR, no_mat);
    glMaterialfv(GL_FRONT, GL_SHININESS, no_shininess);
    glMaterialfv(GL_FRONT, GL_EMISSION, mat_emission);
    glutSolidSphere(1.0, 16, 16);
    glPopMatrix();



/*
glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);	// Clear The Screen And The Depth Buffer
	glLoadIdentity();									// Reset The View
		
	glTranslatef(0.0f,0.0f,z);

	glRotatef(xrot,1.0f,0.0f,0.0f);
	glRotatef(yrot,0.0f,1.0f,0.0f);

	glBindTexture(GL_TEXTURE_2D, texture[0]);


DrawSphere(2);



  // renderSphere( 0.0f, 0.0f, 0.0f, 1.5f, 10.0 );
*/

// draw six faces of a cube

/*
int i = 0;
                glBegin(GL_TRIANGLES);
                        for(i=0;i<12;i++)
                        {
                                glNormal3f(CubeN[i][0],CubeN[i][1],CubeN[i][2]);
                                glVertex3f(CubeV[CubeT[i][0]][0],CubeV[CubeT[i][0]][1],CubeV[CubeT[i][0]][2]);
                                glVertex3f(CubeV[CubeT[i][1]][0],CubeV[CubeT[i][1]][1],CubeV[CubeT[i][1]][2]);
                                glVertex3f(CubeV[CubeT[i][2]][0],CubeV[CubeT[i][2]][1],CubeV[CubeT[i][2]][2]);
                        }
                glEnd();
*/
                
/*
	glBegin(GL_QUADS);
		// Front Face
		glNormal3f( 0.0f, 0.0f, 1.0f);
		glTexCoord2f(0.0f, 0.0f); glVertex3f(-1.0f, -1.0f,  1.0f);
		glTexCoord2f(1.0f, 0.0f); glVertex3f( 1.0f, -1.0f,  1.0f);
		glTexCoord2f(1.0f, 1.0f); glVertex3f( 1.0f,  1.0f,  1.0f);
		glTexCoord2f(0.0f, 1.0f); glVertex3f(-1.0f,  1.0f,  1.0f);
		
		// Back Face
		glNormal3f( 0.0f, 0.0f,-1.0f);
		glTexCoord2f(1.0f, 0.0f); glVertex3f(-1.0f, -1.0f, -1.0f);
		glTexCoord2f(1.0f, 1.0f); glVertex3f(-1.0f,  1.0f, -1.0f);
		glTexCoord2f(0.0f, 1.0f); glVertex3f( 1.0f,  1.0f, -1.0f);
		glTexCoord2f(0.0f, 0.0f); glVertex3f( 1.0f, -1.0f, -1.0f);

		// Top Face
		glNormal3f( 0.0f, 1.0f, 0.0f);
		glTexCoord2f(0.0f, 1.0f); glVertex3f(-1.0f,  1.0f, -1.0f);
		glTexCoord2f(0.0f, 0.0f); glVertex3f(-1.0f,  1.0f,  1.0f);
		glTexCoord2f(1.0f, 0.0f); glVertex3f( 1.0f,  1.0f,  1.0f);
		glTexCoord2f(1.0f, 1.0f); glVertex3f( 1.0f,  1.0f, -1.0f);
		
		// Bottom Face
		glNormal3f( 0.0f,-1.0f, 0.0f);
		glTexCoord2f(1.0f, 1.0f); glVertex3f(-1.0f, -1.0f, -1.0f);
		glTexCoord2f(0.0f, 1.0f); glVertex3f( 1.0f, -1.0f, -1.0f);
		glTexCoord2f(0.0f, 0.0f); glVertex3f( 1.0f, -1.0f,  1.0f);
		glTexCoord2f(1.0f, 0.0f); glVertex3f(-1.0f, -1.0f,  1.0f);

		// Right face
		glNormal3f( 1.0f, 0.0f, 0.0f);
		glTexCoord2f(1.0f, 0.0f); glVertex3f( 1.0f, -1.0f, -1.0f);
		glTexCoord2f(1.0f, 1.0f); glVertex3f( 1.0f,  1.0f, -1.0f);
		glTexCoord2f(0.0f, 1.0f); glVertex3f( 1.0f,  1.0f,  1.0f);
		glTexCoord2f(0.0f, 0.0f); glVertex3f( 1.0f, -1.0f,  1.0f);

		// Left Face
		glNormal3f(-1.0f, 0.0f, 0.0f);
		glTexCoord2f(0.0f, 0.0f); glVertex3f(-1.0f, -1.0f, -1.0f);
		glTexCoord2f(1.0f, 0.0f); glVertex3f(-1.0f, -1.0f,  1.0f);
		glTexCoord2f(1.0f, 1.0f); glVertex3f(-1.0f,  1.0f,  1.0f);
		glTexCoord2f(0.0f, 1.0f); glVertex3f(-1.0f,  1.0f, -1.0f);
	glEnd();
*/
		  

//	xrot+=xspeed;
//	yrot+=yspeed;
	return TRUE;										// Keep Going
}

// called by glutMainLoop (setup by glutDisplayFunc)
void Display(){

#ifdef __PPC__
	//check if user pressed a button on the wiimote
	WPAD_ScanPads();
	if (WPAD_ButtonsDown(0) & WPAD_BUTTON_HOME) exit(0); //if user pressed home button then quit
	if (WPAD_ButtonsDown(0) & WPAD_BUTTON_1) glEnable(GL_LIGHTING);		// Enable Lighting;
	if (WPAD_ButtonsDown(0) & WPAD_BUTTON_2) glDisable(GL_LIGHTING);		// Disable Lighting;
#endif

	DrawGLScene(); //draw the scene

	// do this stuff after drawing
	glFlush();									
	glutSwapBuffers();

#ifdef __PPC__
	usleep(1); //do some sleep
#endif
}

//---------------------------------------------------------------------------------
int main( int argc, char **argv ){
//---------------------------------------------------------------------------------

	//Initialize Glut
	glutInit(&argc, argv);
	
#ifdef __PPC__	
	//Initialize WiiMote
	WPAD_Init();
#else
    glutInitWindowSize(720,480);
    glutInitWindowPosition(10,10);
#endif

	//Set Opengl to use rbg and doublebuffering
	glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);

    glutCreateWindow("");

	//Tell Glut to use Display as its main function
	glutDisplayFunc(Display);
	
	glutIdleFunc(Display);

    //Initialize OpenGL (custom)
	InitGLScene();

	//Enter Glut mainloop
	glutMainLoop();

	return 0;
}


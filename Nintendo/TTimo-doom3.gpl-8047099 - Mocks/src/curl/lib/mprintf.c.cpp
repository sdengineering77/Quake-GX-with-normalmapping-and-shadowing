/****************************************************************************
 *
 * $Id: mprintf.c,v 1.38 2004/03/08 11:28:14 bagder Exp $
 *
 *************************************************************************
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
 * MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE AUTHORS AND
 * CONTRIBUTORS ACCEPT NO RESPONSIBILITY IN ANY CONCEIVABLE MANNER.
 *
 * Purpose:
 *  A merge of Bjorn Reese's format() function and Daniel's dsprintf()
 *  1.0. A full blooded printf() clone with full support for <num>$
 *  everywhere (parameters, widths and precisions) including variabled
 *  sized parameters (like doubles, long longs, long doubles and even
 *  void * in 64-bit architectures).
 *
 * Current restrictions:
 * - Max 128 parameters
 * - No 'long double' support.
 *
 * If you ever want truly portable and good *printf() clones, the project that
 * took on from here is named 'Trio' and you find more details on the trio web
 * page at http://daniel.haxx.se/trio/
 */


#include "setup.h"
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <ctype.h>
#include <string.h>

#include <curl/mprintf.h>

#ifndef SIZEOF_LONG_DOUBLE
#define SIZEOF_LONG_DOUBLE 0
#endif

#ifdef DPRINTF_DEBUG
#define HAVE_LONGLONG
#define LONG_LONG long long
#define ENABLE_64BIT
#endif

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

#define BUFFSIZE 256 /* buffer for long-to-str and float-to-str calcs */
#define MAX_PARAMETERS 128 /* lame static limit */

#undef TRUE
#undef FALSE
#undef BOOL
#ifdef __cplusplus
# define TRUE true
# define FALSE false
# define BOOL bool
#else
# define TRUE  ((char)(1 == 1))
# define FALSE ((char)(0 == 1))
# define BOOL char
#endif


/* Lower-case digits.  */
static const char lower_digits[] = "0123456789abcdefghijklmnopqrstuvwxyz";

/* Upper-case digits.  */
static const char upper_digits[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

#define	OUTCHAR(x) done+=(stream(x, (FILE *)data)==-1?0:1)

/* Data type to read from the arglist */
typedef enum  {
  FORMAT_UNKNOWN = 0,
  FORMAT_STRING,
  FORMAT_PTR,
  FORMAT_INT,
  FORMAT_INTPTR,
  FORMAT_LONG,
  FORMAT_LONGLONG,
  FORMAT_DOUBLE,
  FORMAT_LONGDOUBLE,
  FORMAT_WIDTH /* For internal use */
} FormatType;

/* convertion and display flags */
enum {
  FLAGS_NEW        = 0,
  FLAGS_SPACE      = 1<<0,
  FLAGS_SHOWSIGN   = 1<<1,
  FLAGS_LEFT       = 1<<2,
  FLAGS_ALT        = 1<<3,
  FLAGS_SHORT      = 1<<4,
  FLAGS_LONG       = 1<<5,
  FLAGS_LONGLONG   = 1<<6,
  FLAGS_LONGDOUBLE = 1<<7,
  FLAGS_PAD_NIL    = 1<<8,
  FLAGS_UNSIGNED   = 1<<9,
  FLAGS_OCTAL      = 1<<10,
  FLAGS_HEX        = 1<<11,
  FLAGS_UPPER      = 1<<12,
  FLAGS_WIDTH      = 1<<13, /* '*' or '*<num>$' used */
  FLAGS_WIDTHPARAM = 1<<14, /* width PARAMETER was specified */
  FLAGS_PREC       = 1<<15, /* precision was specified */
  FLAGS_PRECPARAM  = 1<<16, /* precision PARAMETER was specified */
  FLAGS_CHAR       = 1<<17, /* %c story */
  FLAGS_FLOATE     = 1<<18, /* %e or %E */
  FLAGS_FLOATG     = 1<<19  /* %g or %G */
};

typedef struct {
  FormatType type;
  int flags;
  int width;     /* width OR width parameter number */
  int precision; /* precision OR precision parameter number */
  union {
    char *str;
    void *ptr;
    long num;
#ifdef ENABLE_64BIT
    LONG_LONG lnum;
#endif
    double dnum;
#if 0 /*SIZEOF_LONG_DOUBLE */
    long double ldnum;
#endif
  } data;
} va_stack_t;

struct nsprintf {
  char *buffer;
  size_t length;
  size_t max;
};

struct asprintf {
  char *buffer; /* allocated buffer */
  size_t len;   /* length of string */
  size_t alloc; /* length of alloc */
};

int curl_msprintf(char *buffer, const char *format, ...);

static long dprintf_DollarString(char *input, char **end)
{
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long dprintf_DollarString(char *input, char **end)\r\n");
    return retVal;
}


static BOOL dprintf_IsQualifierNoDollar(char c)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL dprintf_IsQualifierNoDollar(char c)\r\n");
    return retVal;
}


#ifdef DPRINTF_DEBUG2
int dprintf_Pass1Report(va_stack_t *vto, int max)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int dprintf_Pass1Report(va_stack_t *vto, int max)\r\n");
    return retVal;
}

#endif

/******************************************************************
 *
 * Pass 1:
 * Create an index with the type of each parameter entry and its
 * value (may vary in size)
 *
 ******************************************************************/

static int dprintf_Pass1(char *format, va_stack_t *vto, char **endpos, va_list arglist)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int dprintf_Pass1(char *format, va_stack_t *vto, char **endpos, va_list arglist)\r\n");
    return retVal;
}


static int dprintf_formatf(
             void *data, /* untouched by format(), just sent to the
                            stream() function in the first argument */
	     int (*stream)(int, FILE *), /* function pointer called for each
					    output character */
	     const char *format,    /* %-formatted string */
	     va_list ap_save) /* list of parameters */
{
  /* Base-36 digits for numbers.  */
  const char *digits = lower_digits;

  /* Pointer into the format string.  */
  char *f;

  /* Number of characters written.  */
  int done = 0;

  long param; /* current parameter to read */
  long param_num=0; /* parameter counter */

  va_stack_t vto[MAX_PARAMETERS];
  char *endpos[MAX_PARAMETERS];
  char **end;

  char work[BUFFSIZE];

  va_stack_t *p;

  /* Do the actual %-code parsing */
  dprintf_Pass1((char *)format, vto, endpos, ap_save);

  end = &endpos[0]; /* the initial end-position from the list dprintf_Pass1()
                       created for us */
  
  f = (char *)format;
  while (*f != '\0') {
    /* Format spec modifiers.  */
    char alt;
    
    /* Width of a field.  */
    long width;

    /* Precision of a field.  */
    long prec;
    
    /* Decimal integer is negative.  */
    char is_neg;
    
    /* Base of a number to be written.  */
    long base;

    /* Integral values to be written.  */
#ifdef ENABLE_64BIT
    unsigned LONG_LONG num;
#else
    unsigned long num;
#endif
    long signed_num;
    
    if (*f != '%') {
      /* This isn't a format spec, so write everything out until the next one
	 OR end of string is reached.  */
      do {
	OUTCHAR(*f);
      } while(*++f && ('%' != *f));
      continue;
    }
    
    ++f;
    
    /* Check for "%%".  Note that although the ANSI standard lists
       '%' as a conversion specifier, it says "The complete format
       specification shall be `%%'," so we can avoid all the width
       and precision processing.  */
    if (*f == '%') {
      ++f;
      OUTCHAR('%');
      continue;
    }

    /* If this is a positional parameter, the position must follow imediately
       after the %, thus create a %<num>$ sequence */
    param=dprintf_DollarString(f, &f);

    if(!param)
      param = param_num;
    else
      --param;
    
    param_num++; /* increase this always to allow "%2$s %1$s %s" and then the
		    third %s will pick the 3rd argument */

    p = &vto[param];

    /* pick up the specified width */
    if(p->flags & FLAGS_WIDTHPARAM)
      width = vto[p->width].data.num;
    else
      width = p->width;

    /* pick up the specified precision */
    if(p->flags & FLAGS_PRECPARAM)
      prec = vto[p->precision].data.num;
    else if(p->flags & FLAGS_PREC)
      prec = p->precision;
    else
      prec = -1;

    alt = p->flags & FLAGS_ALT;
    
    switch (p->type) {
    case FORMAT_INT:
      num = p->data.num;
      if(p->flags & FLAGS_CHAR) {
	/* Character.  */
	if (!(p->flags & FLAGS_LEFT))
	  while (--width > 0)
	    OUTCHAR(' ');
	OUTCHAR((char) num);
	if (p->flags & FLAGS_LEFT)
	  while (--width > 0)
	    OUTCHAR(' ');
	break;
      }
      if(p->flags & FLAGS_UNSIGNED) {
	/* Decimal unsigned integer.  */
	base = 10;
	goto unsigned_number;
      }
      if(p->flags & FLAGS_OCTAL) {
	/* Octal unsigned integer.  */
	base = 8;
	goto unsigned_number;
      }
      if(p->flags & FLAGS_HEX) {
	/* Hexadecimal unsigned integer.  */

	digits = (p->flags & FLAGS_UPPER)? upper_digits : lower_digits;
	base = 16;
	goto unsigned_number;
      }

      /* Decimal integer.  */
      base = 10;

#ifdef ENABLE_64BIT
      if(p->flags & FLAGS_LONGLONG) {
        /* long long */
	is_neg = p->data.lnum < 0;
	num = is_neg ? (- p->data.lnum) : p->data.lnum;
      }
      else
#endif
      {
	signed_num = (long) num;
      
	is_neg = signed_num < 0;
	num = is_neg ? (- signed_num) : signed_num;
      }
      goto number;
      
    unsigned_number:;
      /* Unsigned number of base BASE.  */
      is_neg = 0;
      
    number:;
      /* Number of base BASE.  */
      {
	char *workend = &work[sizeof(work) - 1];
	char *w;
	
	/* Supply a default precision if none was given.  */
	if (prec == -1)
	  prec = 1;
	
	/* Put the number in WORK.  */
	w = workend;
	while (num > 0) {
	  *w-- = digits[num % base];
	  num /= base;
	}
	width -= workend - w;
	prec -= workend - w;
	
	if (alt && base == 8 && prec <= 0) {
	  *w-- = '0';
	  --width;
	}
	
	if (prec > 0) {
	  width -= prec;
	  while (prec-- > 0)
	    *w-- = '0';
	}
	
	if (alt && base == 16)
	  width -= 2;
	
	if (is_neg || (p->flags & FLAGS_SHOWSIGN) || (p->flags & FLAGS_SPACE))
	  --width;
	
	if (!(p->flags & FLAGS_LEFT) && !(p->flags & FLAGS_PAD_NIL))
	  while (width-- > 0)
	    OUTCHAR(' ');
	
	if (is_neg)
	  OUTCHAR('-');
	else if (p->flags & FLAGS_SHOWSIGN)
	  OUTCHAR('+');
	else if (p->flags & FLAGS_SPACE)
	  OUTCHAR(' ');
	
	if (alt && base == 16) {
	  OUTCHAR('0');
	  if(p->flags & FLAGS_UPPER)
	    OUTCHAR('X');
	  else
	    OUTCHAR('x');
	}

	if (!(p->flags & FLAGS_LEFT) && (p->flags & FLAGS_PAD_NIL))
	  while (width-- > 0)
	    OUTCHAR('0');
	
	/* Write the number.  */
	while (++w <= workend) {
	  OUTCHAR(*w);
	}
	
	if (p->flags & FLAGS_LEFT)
	  while (width-- > 0)
	    OUTCHAR(' ');
      }
      break;
      
    case FORMAT_STRING:
	    /* String.  */
      {
	static char null[] = "(nil)";
	char *str;
	size_t len;
	
	str = (char *) p->data.str;
	if ( str == NULL) {
	  /* Write null[] if there's space.  */
	  if (prec == -1 || prec >= (long) sizeof(null) - 1) {
	    str = null;
	    len = sizeof(null) - 1;
	    /* Disable quotes around (nil) */
	    p->flags &= (~FLAGS_ALT);
	  }
	  else {
	    str = (char *)"";
	    len = 0;
	  }
	}
	else
	  len = strlen(str);
	
	if (prec != -1 && (size_t) prec < len)
	  len = prec;
	width -= len;

	if (p->flags & FLAGS_ALT)
	  OUTCHAR('"');

	if (!(p->flags&FLAGS_LEFT))
	  while (width-- > 0)
	    OUTCHAR(' ');
	
	while (len-- > 0)
	  OUTCHAR(*str++);
	if (p->flags&FLAGS_LEFT)
	  while (width-- > 0)
	    OUTCHAR(' ');

	if (p->flags & FLAGS_ALT)
	  OUTCHAR('"');
      }
      break;
      
    case FORMAT_PTR:
      /* Generic pointer.  */
      {
	void *ptr;
	ptr = (void *) p->data.ptr;
	if (ptr != NULL) {
	  /* If the pointer is not NULL, write it as a %#x spec.  */
	  base = 16;
	  digits = (p->flags & FLAGS_UPPER)? upper_digits : lower_digits;
	  alt = 1;
	  num = (unsigned long) ptr;
	  is_neg = 0;
	  goto number;
	}
	else {
	  /* Write "(nil)" for a nil pointer.  */
	  static char strnil[] = "(nil)";
	  char *point;
	  
	  width -= sizeof(strnil) - 1;
	  if (p->flags & FLAGS_LEFT)
	    while (width-- > 0)
	      OUTCHAR(' ');
	  for (point = strnil; *point != '\0'; ++point)
	    OUTCHAR(*point);
	  if (! (p->flags & FLAGS_LEFT))
	    while (width-- > 0)
	      OUTCHAR(' ');
	}
      }
      break;

    case FORMAT_DOUBLE:
      {
	char formatbuf[32]="%";
	char *fptr;
	
	width = -1;
	if (p->flags & FLAGS_WIDTH)
	  width = p->width;
	else if (p->flags & FLAGS_WIDTHPARAM)
	  width = vto[p->width].data.num;

	prec = -1;
	if (p->flags & FLAGS_PREC)
	  prec = p->precision;
	else if (p->flags & FLAGS_PRECPARAM)
	  prec = vto[p->precision].data.num;

	if (p->flags & FLAGS_LEFT)
	  strcat(formatbuf, "-");
	if (p->flags & FLAGS_SHOWSIGN)
	  strcat(formatbuf, "+");
	if (p->flags & FLAGS_SPACE)
	  strcat(formatbuf, " ");
	if (p->flags & FLAGS_ALT)
	  strcat(formatbuf, "#");

	fptr=&formatbuf[strlen(formatbuf)];

	if(width >= 0) {
	  /* RECURSIVE USAGE */
	  fptr += curl_msprintf(fptr, "%ld", width);
	}
	if(prec >= 0) {
	  /* RECURSIVE USAGE */
	  fptr += curl_msprintf(fptr, ".%ld", prec);
	}
	if (p->flags & FLAGS_LONG)
	  strcat(fptr, "l");

	if (p->flags & FLAGS_FLOATE)
	  strcat(fptr, p->flags&FLAGS_UPPER?"E":"e");
	else if (p->flags & FLAGS_FLOATG)
	  strcat(fptr, (p->flags & FLAGS_UPPER) ? "G" : "g");
	else
	  strcat(fptr, "f");

	/* NOTE NOTE NOTE!! Not all sprintf() implementations returns number
	   of output characters */
#if 0 /*SIZEOF_LONG_DOUBLE*/
	if (p->flags & FLAGS_LONG)
	  /* This is for support of the 'long double' type */
	  (sprintf)(work, formatbuf, p->data.ldnum);
	else
#endif
	  (sprintf)(work, formatbuf, p->data.dnum);

	for(fptr=work; *fptr; fptr++)
	  OUTCHAR(*fptr);
      }
      break;

    case FORMAT_INTPTR:
      /* Answer the count of characters written.  */
#ifdef ENABLE_64BIT
      if (p->flags & FLAGS_LONGLONG)
	*(LONG_LONG *) p->data.ptr = (LONG_LONG)done;
      else
#endif
	if (p->flags & FLAGS_LONG)
	  *(long *) p->data.ptr = (long)done;
      else if (!(p->flags & FLAGS_SHORT))
	*(int *) p->data.ptr = (int)done;
      else
	*(short *) p->data.ptr = (short)done;
      break;

    default:
      break;
    }
    f = *end++; /* goto end of %-code */

  }
  return done;
}

/* fputc() look-alike */
static int addbyter(int output, FILE *data)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int addbyter(int output, FILE *data)\r\n");
    return retVal;
}


int curl_mvsnprintf(char *buffer, size_t maxlength, const char *format,
                    va_list ap_save)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_mvsnprintf(char *buffer, size_t maxlength, const char *format, va_list ap_save)\r\n");
    return retVal;
}


int curl_msnprintf(char *buffer, size_t maxlength, const char *format, ...)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_msnprintf(char *buffer, size_t maxlength, const char *format, ...)\r\n");
    return retVal;
}


/* fputc() look-alike */
static int alloc_addbyter(int output, FILE *data)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int alloc_addbyter(int output, FILE *data)\r\n");
    return retVal;
}


char *curl_maprintf(const char *format, ...)
{
    Sys_Printf("char *curl_maprintf(const char *format, ...)\r\n");
    return NULL;
}


char *curl_mvaprintf(const char *format, va_list ap_save)
{
    Sys_Printf("char *curl_mvaprintf(const char *format, va_list ap_save)\r\n");
    return NULL;
}


static int storebuffer(int output, FILE *data)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int storebuffer(int output, FILE *data)\r\n");
    return retVal;
}


int curl_msprintf(char *buffer, const char *format, ...)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_msprintf(char *buffer, const char *format, ...)\r\n");
    return retVal;
}


#ifndef WIN32 /* not needed on win32 */
extern int fputc(int, FILE *);
#endif

int curl_mprintf(const char *format, ...)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_mprintf(const char *format, ...)\r\n");
    return retVal;
}


int curl_mfprintf(FILE *whereto, const char *format, ...)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_mfprintf(FILE *whereto, const char *format, ...)\r\n");
    return retVal;
}


int curl_mvsprintf(char *buffer, const char *format, va_list ap_save)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_mvsprintf(char *buffer, const char *format, va_list ap_save)\r\n");
    return retVal;
}


int curl_mvprintf(const char *format, va_list ap_save)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_mvprintf(const char *format, va_list ap_save)\r\n");
    return retVal;
}


int curl_mvfprintf(FILE *whereto, const char *format, va_list ap_save)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_mvfprintf(FILE *whereto, const char *format, va_list ap_save)\r\n");
    return retVal;
}


#ifdef DPRINTF_DEBUG
int main()
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main()\r\n");
    return retVal;
}


#endif

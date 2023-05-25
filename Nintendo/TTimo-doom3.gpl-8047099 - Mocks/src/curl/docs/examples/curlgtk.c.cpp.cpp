/*****************************************************************************
 *                                  _   _ ____  _
 *  Project                     ___| | | |  _ \| |
 *                             / __| | | | |_) | |
 *                            | (__| |_| |  _ <| |___
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: curlgtk.c,v 1.4 2004/02/09 07:12:33 bagder Exp $
 */
/* Copyright (c) 2000 David Odin (aka DindinX) for MandrakeSoft */
/* an attempt to use the curl library in concert with a gtk-threaded application */

#include <stdio.h>
#include <gtk/gtk.h>

#include <curl/curl.h>
#include <curl/types.h> /* new for v7 */
#include <curl/easy.h> /* new for v7 */

GtkWidget *Bar;

size_t my_write_func(void *ptr, size_t size, size_t nmemb, FILE *stream)
{
    size_t  retVal;
    memset(&retVal, 0, sizeof(size_t));
    SYS_Printf("size_t my_write_func(void *ptr, size_t size, size_t nmemb, FILE *stream)\r\n");
    return retVal;
}



size_t my_read_func(void *ptr, size_t size, size_t nmemb, FILE *stream)
{
    size_t  retVal;
    memset(&retVal, 0, sizeof(size_t));
    SYS_Printf("size_t my_read_func(void *ptr, size_t size, size_t nmemb, FILE *stream)\r\n");
    return retVal;
}



int my_progress_func(GtkWidget *Bar,
                     double t, /* dltotal */
                     double d, /* dlnow */
                     double ultotal,
                     double ulnow)
{
/*  printf("%d / %d (%g %%)\n", d, t, d*100.0/t);*/
  gdk_threads_enter();
  gtk_progress_set_value(GTK_PROGRESS(Bar), d*100.0/t);
  gdk_threads_leave();
  return 0;
}

void *curl_thread(void *ptr)
{
    SYS_Printf("void *curl_thread(void *ptr)\r\n");
    return NULL;
}



int main(int argc, char **argv)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}




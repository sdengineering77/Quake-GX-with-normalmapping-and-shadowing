#include "test.h"

#ifdef USE_SSLEAY

#include <sys/time.h>
#include <sys/types.h>

#include <openssl/opensslv.h>
#include <openssl/x509v3.h>
#include <openssl/x509_vfy.h>
#include <openssl/crypto.h>
#include <openssl/lhash.h>
#include <openssl/objects.h>
#include <openssl/err.h>
#include <openssl/evp.h>
#include <openssl/x509.h>
#include <openssl/pkcs12.h>
#include <openssl/bio.h>
#include <openssl/ssl.h>


typedef struct sslctxparm_st {
   CURL* curl;
   int accesstype ;
   unsigned char * accessinfoURL ;

} sslctxparm;


static unsigned char *i2s_ASN1_IA5STRING( ASN1_IA5STRING *ia5)
{
    Sys_Printf("char *i2s_ASN1_IA5STRING( ASN1_IA5STRING *ia5)\r\n");
    return NULL;
}


/* A conveniance routine to get an access URI. */

static unsigned char *my_get_ext(X509 * cert, const int type,
                                 int extensiontype)
{
    Sys_Printf("char *my_get_ext(X509 * cert, const int type, int extensiontype)\r\n");
    return NULL;
}


void * globalparm = NULL;

static int ssl_app_verify_callback(X509_STORE_CTX *ctx, void *arg)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ssl_app_verify_callback(X509_STORE_CTX *ctx, void *arg)\r\n");
    return retVal;
}



static CURLcode sslctxfun(CURL * curl, void * sslctx, void * parm)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode sslctxfun(CURL * curl, void * sslctx, void * parm)\r\n");
    return retVal;
}


int test(char *URL)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int test(char *URL)\r\n");
    return retVal;
}

#else /* USE_SSLEAY */
int test(char *URL)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int test(char *URL)\r\n");
    return retVal;
}

#endif /* USE_SSLEAY */

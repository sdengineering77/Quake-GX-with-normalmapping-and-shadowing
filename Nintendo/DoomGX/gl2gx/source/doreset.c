#include <stdlib.h>

#ifdef __cplusplus 
extern "C" void do_reset()
{
	exit(0);
	throw;
}
#else
void do_reset()
{
	exit(0);
}

#endif




#ifndef __crate_TEX_H__
#define __crate_TEX_H__

struct _texdef {
	int width;
	int height;
	int colfmt;
	int minlod;
	int maxlod;
	int min;
	int mag;
	int wrap_s;
	int wrap_t;
} cratetex = {
	256,
	256,
	6,
	0,
	0,
	1,
	1,
	1,
	1
};

#endif

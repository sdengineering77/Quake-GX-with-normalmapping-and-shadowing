// stb_dxt.h - v1.03 - DXT1/DXT5 compressor - public domain
// original by fabian "ryg" giesen - ported to C by stb
// use '#define STB_DEFINE' before including to create the implementation
//
// USAGE:
//   call stb_compress_dxt_block() for every block (you must pad)
//     source should be a 4x4 block of RGBA data in row-major order;
//     A is ignored if you specify alpha=0; you get dithering if
//     quality=1
//
// version history:
//   v1.03  - endianness support
//   v1.02  - fix alpha encoding bug
//   v1.01  - fix bug converting to RGB that messed up quality, thanks ryg & cbloom
//   v1.00  - first release



#include <gx.h>
#include "../../generic/quakedef.h"


void stb_compress_dxt_block(u8 *dest, const u8 *src, int alpha, int quality);

static u8 stb__Expand5[32];
static u8 stb__Expand6[64];
static u8 stb__OMatch5[256][2];
static u8 stb__OMatch6[256][2];
static u8 stb__QuantRBTab[256+16];
static u8 stb__QuantGTab[256+16];

static int stb__Mul8Bit(int a,int b)
{
  int t = a*b + 128;
  return (t + (t >> 8)) >> 8;
}

static void stb__From16Bit(u8 *out, unsigned short v)
{
   int rv = (v & 0xf800) >> 11;
   int gv = (v & 0x07e0) >>  5;
   int bv = (v & 0x001f) >>  0;

   out[0] = stb__Expand5[rv];
   out[1] = stb__Expand6[gv];
   out[2] = stb__Expand5[bv];
   out[3] = 0;
}

static unsigned short stb__As16Bit(int r, int g, int b)
{
   return (stb__Mul8Bit(r,31) << 11) + (stb__Mul8Bit(g,63) << 5) + stb__Mul8Bit(b,31);
}

static void stb__LerpRGB(u8 *out, u8 *p1, u8 *p2, int f)
{
   out[0] = p1[0] + stb__Mul8Bit(p2[0] - p1[0],f);
   out[1] = p1[1] + stb__Mul8Bit(p2[1] - p1[1],f);
   out[2] = p1[2] + stb__Mul8Bit(p2[2] - p1[2],f);
}

/****************************************************************************/

// compute table to reproduce constant colors as accurately as possible
static void stb__PrepareOptTable(u8 *Table,const u8 *expand,int size)
{
   int i,mn,mx;
   for (i=0;i<256;i++) {
      int bestErr = 256;
      for (mn=0;mn<size;mn++) {
         for (mx=0;mx<size;mx++) {
            int mine = expand[mn];
            int maxe = expand[mx];
            int err = abs(maxe + stb__Mul8Bit(mine-maxe,0x55) - i);

            if(err < bestErr)
            { 
               Table[i*2+0] = mx;
               Table[i*2+1] = mn;
               bestErr = err;
            }
         }
      }
   }
}

static void stb__EvalColors(u8 *color,unsigned short c0,unsigned short c1)
{
   stb__From16Bit(color+ 0, c0);
   stb__From16Bit(color+ 4, c1);
   stb__LerpRGB  (color+ 8, color+0,color+4, 0x55);
   stb__LerpRGB  (color+12, color+0,color+4, 0xaa);
}

// Block dithering function. Simply dithers a block to 565 RGB.
// (Floyd-Steinberg)
static void stb__DitherBlock(u8 *dest, u8 *block)
{
  int err[8],*ep1 = err,*ep2 = err+4, *et;
  int ch,y;

  // process channels seperately
  for (ch=0; ch<3; ++ch) {
      u8 *bp = block+ch, *dp = dest+ch;
      u8 *quant = (ch == 1) ? stb__QuantGTab+8 : stb__QuantRBTab+8;
      memset(err, 0, sizeof(err));
      for(y=0; y<4; ++y) {
         dp[ 0] = quant[bp[ 0] + ((3*ep2[1] + 5*ep2[0]) >> 4)];
         ep1[0] = bp[ 0] - dp[ 0];
         dp[ 4] = quant[bp[ 4] + ((7*ep1[0] + 3*ep2[2] + 5*ep2[1] + ep2[0]) >> 4)];
         ep1[1] = bp[ 4] - dp[ 4];
         dp[ 8] = quant[bp[ 8] + ((7*ep1[1] + 3*ep2[3] + 5*ep2[2] + ep2[1]) >> 4)];
         ep1[2] = bp[ 8] - dp[ 8];
         dp[12] = quant[bp[12] + ((7*ep1[2] + 5*ep2[3] + ep2[2]) >> 4)];
         ep1[3] = bp[12] - dp[12];
         bp += 16;
         dp += 16;
         et = ep1, ep1 = ep2, ep2 = et; // swap
      }
   }
}

// The color matching function
static unsigned int stb__MatchColorsBlock(u8 *block, u8 *color,int dither)
{
   unsigned int mask = 0;
   int dirr = color[0*4+0] - color[1*4+0];
   int dirg = color[0*4+1] - color[1*4+1];
   int dirb = color[0*4+2] - color[1*4+2];
   int dots[16];
   int stops[4];
   int i;
   int c0Point, halfPoint, c3Point;

   for(i=0;i<16;i++)
      dots[i] = block[i*4+0]*dirr + block[i*4+1]*dirg + block[i*4+2]*dirb;

   for(i=0;i<4;i++)
      stops[i] = color[i*4+0]*dirr + color[i*4+1]*dirg + color[i*4+2]*dirb;

   c0Point   = (stops[1] + stops[3]) >> 1;
   halfPoint = (stops[3] + stops[2]) >> 1;
   c3Point   = (stops[2] + stops[0]) >> 1;

   if(!dither) {
      // the version without dithering is straightforward
      for (i=15;i>=0;i--) {
         int dot = dots[i];
         mask <<= 2;

         if(dot < halfPoint)
           mask |= (dot < c0Point) ? 1 : 3;
         else
           mask |= (dot < c3Point) ? 2 : 0;
      }
  } else {
      // with floyd-steinberg dithering
      int err[8],*ep1 = err,*ep2 = err+4;
      int *dp = dots, y;

      c0Point   <<= 4;
      halfPoint <<= 4;
      c3Point   <<= 4;
      for(i=0;i<8;i++)
         err[i] = 0;

      for(y=0;y<4;y++)
      {
         int dot,lmask,step;

         dot = (dp[0] << 4) + (3*ep2[1] + 5*ep2[0]);
         if(dot < halfPoint)
           step = (dot < c0Point) ? 1 : 3;
         else
           step = (dot < c3Point) ? 2 : 0;
         ep1[0] = dp[0] - stops[step];
         lmask = step;

         dot = (dp[1] << 4) + (7*ep1[0] + 3*ep2[2] + 5*ep2[1] + ep2[0]);
         if(dot < halfPoint)
           step = (dot < c0Point) ? 1 : 3;
         else
           step = (dot < c3Point) ? 2 : 0;
         ep1[1] = dp[1] - stops[step];
         lmask |= step<<2;

         dot = (dp[2] << 4) + (7*ep1[1] + 3*ep2[3] + 5*ep2[2] + ep2[1]);
         if(dot < halfPoint)
           step = (dot < c0Point) ? 1 : 3;
         else
           step = (dot < c3Point) ? 2 : 0;
         ep1[2] = dp[2] - stops[step];
         lmask |= step<<4;

         dot = (dp[3] << 4) + (7*ep1[2] + 5*ep2[3] + ep2[2]);
         if(dot < halfPoint)
           step = (dot < c0Point) ? 1 : 3;
         else
           step = (dot < c3Point) ? 2 : 0;
         ep1[3] = dp[3] - stops[step];
         lmask |= step<<6;

         dp += 4;
         mask |= lmask << (y*8);
         { int *et = ep1; ep1 = ep2; ep2 = et; } // swap
      }
   }

   return mask;
}

// The color optimization function. (Clever code, part 1)
static void stb__OptimizeColorsBlock(u8 *block, unsigned short *pmax16, unsigned short *pmin16)
{
  int mind = 0x7fffffff,maxd = -0x7fffffff;
  u8 *minp = NULL; // DRS shutup compiler
  u8 *maxp = NULL;
  double magn;
  int v_r,v_g,v_b;
  static const int nIterPower = 4;
  float covf[6],vfr,vfg,vfb;

  // determine color distribution
  int cov[6];
  int mu[3],min[3],max[3];
  int ch,i,iter;

  for(ch=0;ch<3;ch++)
  {
    const u8 *bp = ((const u8 *) block) + ch;
    int muv,minv,maxv;

    muv = minv = maxv = bp[0];
    for(i=4;i<64;i+=4)
    {
      muv += bp[i];
      if (bp[i] < minv) minv = bp[i];
      else if (bp[i] > maxv) maxv = bp[i];
    }

    mu[ch] = (muv + 8) >> 4;
    min[ch] = minv;
    max[ch] = maxv;
  }

  // determine covariance matrix
  for (i=0;i<6;i++)
     cov[i] = 0;

  for (i=0;i<16;i++)
  {
    int r = block[i*4+0] - mu[0];
    int g = block[i*4+1] - mu[1];
    int b = block[i*4+2] - mu[2];

    cov[0] += r*r;
    cov[1] += r*g;
    cov[2] += r*b;
    cov[3] += g*g;
    cov[4] += g*b;
    cov[5] += b*b;
  }

  // convert covariance matrix to float, find principal axis via power iter
  for(i=0;i<6;i++)
    covf[i] = cov[i] / 255.0f;

  vfr = (float) (max[0] - min[0]);
  vfg = (float) (max[1] - min[1]);
  vfb = (float) (max[2] - min[2]);

  for(iter=0;iter<nIterPower;iter++)
  {
    float r = vfr*covf[0] + vfg*covf[1] + vfb*covf[2];
    float g = vfr*covf[1] + vfg*covf[3] + vfb*covf[4];
    float b = vfr*covf[2] + vfg*covf[4] + vfb*covf[5];

    vfr = r;
    vfg = g;
    vfb = b;
  }

  magn = fabs(vfr);
  if (fabs(vfg) > magn) magn = fabs(vfg);
  if (fabs(vfb) > magn) magn = fabs(vfb);

   if(magn < 4.0f) { // too small, default to luminance
      v_r = 148;
      v_g = 300;
      v_b = 58;
   } else {
      magn = 512.0 / magn;
      v_r = (int) (vfr * magn);
      v_g = (int) (vfg * magn);
      v_b = (int) (vfb * magn);
   }

   // Pick colors at extreme points
   for(i=0;i<16;i++)
   {
      int dot = block[i*4+0]*v_r + block[i*4+1]*v_g + block[i*4+2]*v_b;

      if (dot < mind) {
         mind = dot;
         minp = block+i*4;
      }

      if (dot > maxd) {
         maxd = dot;
         maxp = block+i*4;
      }
   }

	if (maxp) { // DRS: shutup compiler.. can this fail anyway?
	   *pmax16 = stb__As16Bit(maxp[0],maxp[1],maxp[2]);
	} else {
		*pmax16 = 0;
	}
	if (minp) {
	   *pmin16 = stb__As16Bit(minp[0],minp[1],minp[2]);
	} else {
		*pmin16 = 0;
	}
}

static int stb__sclamp(float y, int p0, int p1)
{
   int x = (int) y;
   if (x < p0) return p0;
   if (x > p1) return p1;
   return x;
}

// The refinement function. (Clever code, part 2)
// Tries to optimize colors to suit block contents better.
// (By solving a least squares system via normal equations+Cramer's rule)
static int stb__RefineBlock(u8 *block, unsigned short *pmax16, unsigned short *pmin16, unsigned int mask)
{
   static const int w1Tab[4] = { 3,0,2,1 };
   static const int prods[4] = { 0x090000,0x000900,0x040102,0x010402 };
   // ^some magic to save a lot of multiplies in the accumulating loop...

   float frb,fg;
   unsigned short oldMin, oldMax, min16, max16;
   int i, akku = 0, xx,xy,yy;
   int At1_r,At1_g,At1_b;
   int At2_r,At2_g,At2_b;
   unsigned int cm = mask;

   oldMin = *pmin16;
   oldMax = *pmax16;

   if((mask ^ (mask<<2)) < 4) // all pixels have the same index?
   {
      // yes, linear system would be singular; solve using optimal
      // single-color match on average color
      int r = 8, g = 8, b = 8;
      for (i=0;i<16;++i) {
         r += block[i*4+0];
         g += block[i*4+1];
         b += block[i*4+2];
      }

      r >>= 4; g >>= 4; b >>= 4;

      max16 = (stb__OMatch5[r][0]<<11) | (stb__OMatch6[g][0]<<5) | stb__OMatch5[b][0];
      min16 = (stb__OMatch5[r][1]<<11) | (stb__OMatch6[g][1]<<5) | stb__OMatch5[b][1];
   } else {
      At1_r = At1_g = At1_b = 0;
      At2_r = At2_g = At2_b = 0;
      for (i=0;i<16;++i,cm>>=2) {
         int step = cm&3;
         int w1 = w1Tab[step];
         int r = block[i*4+0];
         int g = block[i*4+1];
         int b = block[i*4+2];

         akku    += prods[step];
         At1_r   += w1*r;
         At1_g   += w1*g;
         At1_b   += w1*b;
         At2_r   += r;
         At2_g   += g;
         At2_b   += b;
      }

      At2_r = 3*At2_r - At1_r;
      At2_g = 3*At2_g - At1_g;
      At2_b = 3*At2_b - At1_b;

      // extract solutions and decide solvability
      xx = akku >> 16;
      yy = (akku >> 8) & 0xff;
      xy = (akku >> 0) & 0xff;

      frb = 3.0f * 31.0f / 255.0f / (xx*yy - xy*xy);
      fg = frb * 63.0f / 31.0f;

      // solve.
      max16 =   stb__sclamp((At1_r*yy - At2_r*xy)*frb+0.5f,0,31) << 11;
      max16 |=  stb__sclamp((At1_g*yy - At2_g*xy)*fg +0.5f,0,63) << 5;
      max16 |=  stb__sclamp((At1_b*yy - At2_b*xy)*frb+0.5f,0,31) << 0;

      min16 =   stb__sclamp((At2_r*xx - At1_r*xy)*frb+0.5f,0,31) << 11;
      min16 |=  stb__sclamp((At2_g*xx - At1_g*xy)*fg +0.5f,0,63) << 5;
      min16 |=  stb__sclamp((At2_b*xx - At1_b*xy)*frb+0.5f,0,31) << 0;
   }

   *pmin16 = min16;
   *pmax16 = max16;
   return oldMin != min16 || oldMax != max16;
}

// Color block compression
static void stb__CompressColorBlock(u8 *dest, u8 *block,int quality)
{
   unsigned int mask;
   int i;
   unsigned short max16, min16;
   u8 dblock[16*4],color[4*4];

   // check if block is constant
   for (i=1;i<16;i++)
      if (((unsigned int *) block)[i] != ((unsigned int *) block)[0])
         break;

   if(i == 16) { // constant color
      int r = block[0], g = block[1], b = block[2];
      mask  = 0xaaaaaaaa;
      max16 = (stb__OMatch5[r][0]<<11) | (stb__OMatch6[g][0]<<5) | stb__OMatch5[b][0];
      min16 = (stb__OMatch5[r][1]<<11) | (stb__OMatch6[g][1]<<5) | stb__OMatch5[b][1];
   } else {
      // first step: compute dithered version for PCA if desired
      if(quality)
         stb__DitherBlock(dblock,block);

      // second step: pca+map along principal axis
      stb__OptimizeColorsBlock(quality ? dblock : block,&max16,&min16);
      if (max16 != min16) {
         stb__EvalColors(color,max16,min16);
         mask = stb__MatchColorsBlock(block,color,quality != 0);
      } else
         mask = 0;

      // third step: refine
      if (stb__RefineBlock(quality ? dblock : block,&max16,&min16,mask)) {
         if (max16 != min16) {
            stb__EvalColors(color,max16,min16);
            mask = stb__MatchColorsBlock(block,color,quality != 0);
         } else
            mask = 0;
      }
  }

  // write the color block
  if(max16 < min16)
  {
     unsigned short t = min16;
     min16 = max16;
     max16 = t;
     mask ^= 0x55555555;
  }

  dest[0] = (u8) (max16);
  dest[1] = (u8) (max16 >> 8);
  dest[2] = (u8) (min16);
  dest[3] = (u8) (min16 >> 8);
  dest[4] = (u8) (mask);
  dest[5] = (u8) (mask >> 8);
  dest[6] = (u8) (mask >> 16);
  dest[7] = (u8) (mask >> 24);
}

// Alpha block compression (this is easy for a change)
static void stb__CompressAlphaBlock(u8 *dest,u8 *src,int quality)
{
   int i,dist,bias,dist4,dist2,bits,mask;

   // find min/max color
   int mn,mx;
   mn = mx = src[3];

   for (i=1;i<16;i++)
   {
      if (src[i*4+3] < mn) mn = src[i*4+3];
      else if (src[i*4+3] > mx) mx = src[i*4+3];
   }

   // encode them
   ((u8 *)dest)[0] = mx;
   ((u8 *)dest)[1] = mn;
   dest += 2;

   // determine bias and emit color indices
   dist = mx-mn;
   bias = mn*7 - (dist >> 1);
   dist4 = dist*4;
   dist2 = dist*2;
   bits = 0,mask=0;
   
   for (i=0;i<16;i++) {
      int a = src[i*4+3]*7 - bias;
      int ind,t;

      // select index (hooray for bit magic)
      t = (dist4 - a) >> 31;  ind =  t & 4; a -= dist4 & t;
      t = (dist2 - a) >> 31;  ind += t & 2; a -= dist2 & t;
      t = (dist - a) >> 31;   ind += t & 1;

      ind = -ind & 7;
      ind ^= (2 > ind);

      // write index
      mask |= ind << bits;
      if((bits += 3) >= 8) {
         *dest++ = mask;
         mask >>= 8;
         bits -= 8;
      }
   }
}

static void stb__InitDXT()
{
   int i;
   for(i=0;i<32;i++)
      stb__Expand5[i] = (i<<3)|(i>>2);

   for(i=0;i<64;i++)
      stb__Expand6[i] = (i<<2)|(i>>4);

   for(i=0;i<256+16;i++)
   {
      int v = i-8 < 0 ? 0 : i-8 > 255 ? 255 : i-8;
      stb__QuantRBTab[i] = stb__Expand5[stb__Mul8Bit(v,31)];
      stb__QuantGTab[i] = stb__Expand6[stb__Mul8Bit(v,63)];
   }

   stb__PrepareOptTable(&stb__OMatch5[0][0],stb__Expand5,32);
   stb__PrepareOptTable(&stb__OMatch6[0][0],stb__Expand6,64);
}

void stb_compress_dxt_block(u8 *dest, const u8 *src, int alpha, int quality)
{
   static int init=1;
   if (init) {
      stb__InitDXT();
      init=0;
   }

   if (alpha) {
      stb__CompressAlphaBlock(dest,(u8*) src,quality);
      dest += 8;
   }

   stb__CompressColorBlock(dest,(u8*) src,quality);
}

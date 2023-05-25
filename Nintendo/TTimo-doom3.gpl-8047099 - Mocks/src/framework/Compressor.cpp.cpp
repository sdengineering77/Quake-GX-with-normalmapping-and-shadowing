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
#include "../idlib/precompiled.h"
#pragma hdrstop


/*
=================================================================================

	idCompressor_None

=================================================================================
*/

class idCompressor_None : public idCompressor {
public:
					idCompressor_None( void );

	void			Init( idFile *f, bool compress, int wordLength );
	void			FinishCompress( void );
	float			GetCompressionRatio( void ) const;

	const char *	GetName( void );
	const char *	GetFullPath( void );
	int				Read( void *outData, int outLength );
	int				Write( const void *inData, int inLength );
	int				Length( void );
	ID_TIME_T			Timestamp( void );
	int				Tell( void );
	void			ForceFlush( void );
	void			Flush( void );
	int				Seek( long offset, fsOrigin_t origin );

protected:
	idFile *		file;
	bool			compress;
};

/*
================
idCompressor_None::idCompressor_None
================
*/
idCompressor_None::idCompressor_None( void ) {
	file = NULL;
	compress = true;
}

/*
================
idCompressor_None::Init
================
*/
void idCompressor_None::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_None::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_None::FinishCompress
================
*/
void idCompressor_None::FinishCompress( void ) {
    Sys_Printf("void idCompressor_None::FinishCompress( void )\r\n");
}


/*
================
idCompressor_None::GetCompressionRatio
================
*/
float idCompressor_None::GetCompressionRatio( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idCompressor_None::GetCompressionRatio( void )\r\n");
    return retVal;
}


/*
================
idCompressor_None::GetName
================
*/
const char *idCompressor_None::GetName( void ) {
    Sys_Printf("char *idCompressor_None::GetName( void )\r\n");
    return NULL;
}


/*
================
idCompressor_None::GetFullPath
================
*/
const char *idCompressor_None::GetFullPath( void ) {
    Sys_Printf("char *idCompressor_None::GetFullPath( void )\r\n");
    return NULL;
}


/*
================
idCompressor_None::Write
================
*/
int idCompressor_None::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_None::Write( const void *inData, int inLength )\r\n");
    return retVal;
}


/*
================
idCompressor_None::Read
================
*/
int idCompressor_None::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_None::Read( void *outData, int outLength )\r\n");
    return retVal;
}


/*
================
idCompressor_None::Length
================
*/
int idCompressor_None::Length( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_None::Length( void )\r\n");
    return retVal;
}


/*
================
idCompressor_None::Timestamp
================
*/
ID_TIME_T idCompressor_None::Timestamp( void ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T idCompressor_None::Timestamp( void )\r\n");
    return retVal;
}


/*
================
idCompressor_None::Tell
================
*/
int idCompressor_None::Tell( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_None::Tell( void )\r\n");
    return retVal;
}


/*
================
idCompressor_None::ForceFlush
================
*/
void idCompressor_None::ForceFlush( void ) {
    Sys_Printf("void idCompressor_None::ForceFlush( void )\r\n");
}


/*
================
idCompressor_None::Flush
================
*/
void idCompressor_None::Flush( void ) {
    Sys_Printf("void idCompressor_None::Flush( void )\r\n");
}


/*
================
idCompressor_None::Seek
================
*/
int idCompressor_None::Seek( long offset, fsOrigin_t origin ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_None::Seek( long offset, fsOrigin_t origin )\r\n");
    return retVal;
}



/*
=================================================================================

	idCompressor_BitStream

	Base class for bit stream compression.

=================================================================================
*/

class idCompressor_BitStream : public idCompressor_None {
public:
					idCompressor_BitStream( void ) {}

	void			Init( idFile *f, bool compress, int wordLength );
	void			FinishCompress( void );
	float			GetCompressionRatio( void ) const;

	int				Write( const void *inData, int inLength );
	int				Read( void *outData, int outLength );

protected:
	byte			buffer[65536];
	int				wordLength;

	int				readTotalBytes;
	int				readLength;
	int				readByte;
	int				readBit;
	const byte *	readData;

	int				writeTotalBytes;
	int				writeLength;
	int				writeByte;
	int				writeBit;
	byte *			writeData;

protected:
	void			InitCompress( const void *inData, const int inLength );
	void			InitDecompress( void *outData, int outLength );
	void			WriteBits( int value, int numBits );
	int				ReadBits( int numBits );
	void			UnreadBits( int numBits );
	int				Compare( const byte *src1, int bitPtr1, const byte *src2, int bitPtr2, int maxBits ) const;
};

/*
================
idCompressor_BitStream::Init
================
*/
void idCompressor_BitStream::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_BitStream::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_BitStream::InitCompress
================
*/
ID_INLINE void idCompressor_BitStream::InitCompress( const void *inData, const int inLength ) {
    Sys_Printf("void idCompressor_BitStream::InitCompress( const void *inData, const int inLength )\r\n");
}


/*
================
idCompressor_BitStream::InitDecompress
================
*/
ID_INLINE void idCompressor_BitStream::InitDecompress( void *outData, int outLength ) {
    Sys_Printf("void idCompressor_BitStream::InitDecompress( void *outData, int outLength )\r\n");
}


/*
================
idCompressor_BitStream::WriteBits
================
*/
void idCompressor_BitStream::WriteBits( int value, int numBits ) {
    Sys_Printf("void idCompressor_BitStream::WriteBits( int value, int numBits )\r\n");
}


/*
================
idCompressor_BitStream::ReadBits
================
*/
int idCompressor_BitStream::ReadBits( int numBits ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_BitStream::ReadBits( int numBits )\r\n");
    return retVal;
}


/*
================
idCompressor_BitStream::UnreadBits
================
*/
void idCompressor_BitStream::UnreadBits( int numBits ) {
    Sys_Printf("void idCompressor_BitStream::UnreadBits( int numBits )\r\n");
}


/*
================
idCompressor_BitStream::Compare
================
*/
int idCompressor_BitStream::Compare( const byte *src1, int bitPtr1, const byte *src2, int bitPtr2, int maxBits ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_BitStream::Compare( const byte *src1, int bitPtr1, const byte *src2, int bitPtr2, int maxBits )\r\n");
    return retVal;
}


/*
================
idCompressor_BitStream::Write
================
*/
int idCompressor_BitStream::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_BitStream::Write( const void *inData, int inLength )\r\n");
    return retVal;
}


/*
================
idCompressor_BitStream::FinishCompress
================
*/
void idCompressor_BitStream::FinishCompress( void ) {
    Sys_Printf("void idCompressor_BitStream::FinishCompress( void )\r\n");
}


/*
================
idCompressor_BitStream::Read
================
*/
int idCompressor_BitStream::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_BitStream::Read( void *outData, int outLength )\r\n");
    return retVal;
}


/*
================
idCompressor_BitStream::GetCompressionRatio
================
*/
float idCompressor_BitStream::GetCompressionRatio( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idCompressor_BitStream::GetCompressionRatio( void )\r\n");
    return retVal;
}



/*
=================================================================================

	idCompressor_RunLength

	The following algorithm implements run length compression with an arbitrary
	word size.

=================================================================================
*/

class idCompressor_RunLength : public idCompressor_BitStream {
public:
					idCompressor_RunLength( void ) {}

	void			Init( idFile *f, bool compress, int wordLength );

	int				Write( const void *inData, int inLength );
	int				Read( void *outData, int outLength );

private:
	int				runLengthCode;
};

/*
================
idCompressor_RunLength::Init
================
*/
void idCompressor_RunLength::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_RunLength::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_RunLength::Write
================
*/
int idCompressor_RunLength::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_RunLength::Write( const void *inData, int inLength )\r\n");
    return retVal;
}


/*
================
idCompressor_RunLength::Read
================
*/
int idCompressor_RunLength::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_RunLength::Read( void *outData, int outLength )\r\n");
    return retVal;
}



/*
=================================================================================

	idCompressor_RunLength_ZeroBased

	The following algorithm implements run length compression with an arbitrary
	word size for data with a lot of zero bits.

=================================================================================
*/

class idCompressor_RunLength_ZeroBased : public idCompressor_BitStream {
public:
					idCompressor_RunLength_ZeroBased( void ) {}

	int				Write( const void *inData, int inLength );
	int				Read( void *outData, int outLength );

private:
};

/*
================
idCompressor_RunLength_ZeroBased::Write
================
*/
int idCompressor_RunLength_ZeroBased::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_RunLength_ZeroBased::Write( const void *inData, int inLength )\r\n");
    return retVal;
}


/*
================
idCompressor_RunLength_ZeroBased::Read
================
*/
int idCompressor_RunLength_ZeroBased::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_RunLength_ZeroBased::Read( void *outData, int outLength )\r\n");
    return retVal;
}



/*
=================================================================================

	idCompressor_Huffman

	The following algorithm is based on the adaptive Huffman algorithm described
	in Sayood's Data Compression book. The ranks are not actually stored, but
	implicitly defined by the location of a node within a doubly-linked list

=================================================================================
*/

const int HMAX			= 256;				// Maximum symbol
const int NYT			= HMAX;				// NYT = Not Yet Transmitted
const int INTERNAL_NODE	= HMAX + 1;			// internal node

typedef struct nodetype {
	struct nodetype *left, *right, *parent; // tree structure
	struct nodetype *next, *prev;			// doubly-linked list
	struct nodetype **head;					// highest ranked node in block
	int				weight;
	int				symbol; 
} huffmanNode_t;

class idCompressor_Huffman : public idCompressor_None {
public:
					idCompressor_Huffman( void ) {}

	void			Init( idFile *f, bool compress, int wordLength );
	void			FinishCompress( void );
	float			GetCompressionRatio( void ) const;

	int				Write( const void *inData, int inLength );
	int				Read( void *outData, int outLength );

private:
	byte			seq[65536];
	int				bloc;
	int				blocMax;
	int				blocIn;
	int				blocNode;
	int				blocPtrs;

	int				compressedSize;
	int				unCompressedSize;

	huffmanNode_t *	tree;
	huffmanNode_t *	lhead;
	huffmanNode_t *	ltail;
	huffmanNode_t *	loc[HMAX+1];
	huffmanNode_t **freelist;

	huffmanNode_t	nodeList[768];
	huffmanNode_t *	nodePtrs[768];

private:
	void			AddRef( byte ch );
	int				Receive( huffmanNode_t *node, int *ch );
	void			Transmit( int ch, byte *fout );
	void			PutBit( int bit, byte *fout, int *offset );
	int				GetBit( byte *fout, int *offset );

	void			Add_bit( char bit, byte *fout );
	int				Get_bit();
	huffmanNode_t **Get_ppnode();
	void			Free_ppnode( huffmanNode_t **ppnode );
	void			Swap( huffmanNode_t *node1, huffmanNode_t *node2 );
	void			Swaplist( huffmanNode_t *node1, huffmanNode_t *node2 );
	void			Increment( huffmanNode_t *node );
	void			Send( huffmanNode_t *node, huffmanNode_t *child, byte *fout );
};

/*
================
idCompressor_Huffman::Init
================
*/
void idCompressor_Huffman::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_Huffman::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_Huffman::PutBit
================
*/
void idCompressor_Huffman::PutBit( int bit, byte *fout, int *offset) {
    Sys_Printf("void idCompressor_Huffman::PutBit( int bit, byte *fout, int *offset)\r\n");
}


/*
================
idCompressor_Huffman::GetBit
================
*/
int idCompressor_Huffman::GetBit( byte *fin, int *offset) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Huffman::GetBit( byte *fin, int *offset)\r\n");
    return retVal;
}


/*
================
idCompressor_Huffman::Add_bit

  Add a bit to the output file (buffered)
================
*/
void idCompressor_Huffman::Add_bit( char bit, byte *fout ) {
    Sys_Printf("void idCompressor_Huffman::Add_bit( char bit, byte *fout )\r\n");
}


/*
================
idCompressor_Huffman::Get_bit

  Get one bit from the input file (buffered)
================
*/
int idCompressor_Huffman::Get_bit() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Huffman::Get_bit()\r\n");
    return retVal;
}


/*
================
idCompressor_Huffman::Get_ppnode
================
*/
huffmanNode_t **idCompressor_Huffman::Get_ppnode() {
    Sys_Printf("huffmanNode_t **idCompressor_Huffman::Get_ppnode()\r\n");
    return NULL;
}


/*
================
idCompressor_Huffman::Free_ppnode
================
*/
void idCompressor_Huffman::Free_ppnode( huffmanNode_t **ppnode ) {
    Sys_Printf("void idCompressor_Huffman::Free_ppnode( huffmanNode_t **ppnode )\r\n");
}


/*
================
idCompressor_Huffman::Swap

  Swap the location of the given two nodes in the tree.
================
*/
void idCompressor_Huffman::Swap( huffmanNode_t *node1, huffmanNode_t *node2 ) {
    Sys_Printf("void idCompressor_Huffman::Swap( huffmanNode_t *node1, huffmanNode_t *node2 )\r\n");
}


/*
================
idCompressor_Huffman::Swaplist

  Swap the given two nodes in the linked list (update ranks)
================
*/
void idCompressor_Huffman::Swaplist( huffmanNode_t *node1, huffmanNode_t *node2 ) {
    Sys_Printf("void idCompressor_Huffman::Swaplist( huffmanNode_t *node1, huffmanNode_t *node2 )\r\n");
}


/*
================
idCompressor_Huffman::Increment
================
*/
void idCompressor_Huffman::Increment( huffmanNode_t *node ) {
    Sys_Printf("void idCompressor_Huffman::Increment( huffmanNode_t *node )\r\n");
}


/*
================
idCompressor_Huffman::AddRef
================
*/
void idCompressor_Huffman::AddRef( byte ch ) {
    Sys_Printf("void idCompressor_Huffman::AddRef( byte ch )\r\n");
}


/*
================
idCompressor_Huffman::Receive

  Get a symbol.
================
*/
int idCompressor_Huffman::Receive( huffmanNode_t *node, int *ch ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Huffman::Receive( huffmanNode_t *node, int *ch )\r\n");
    return retVal;
}


/*
================
idCompressor_Huffman::Send

  Send the prefix code for this node.
================
*/
void idCompressor_Huffman::Send( huffmanNode_t *node, huffmanNode_t *child, byte *fout ) {
    Sys_Printf("void idCompressor_Huffman::Send( huffmanNode_t *node, huffmanNode_t *child, byte *fout )\r\n");
}


/*
================
idCompressor_Huffman::Transmit

  Send a symbol.
================
*/
void idCompressor_Huffman::Transmit( int ch, byte *fout ) {
    Sys_Printf("void idCompressor_Huffman::Transmit( int ch, byte *fout )\r\n");
}


/*
================
idCompressor_Huffman::Write
================
*/
int idCompressor_Huffman::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Huffman::Write( const void *inData, int inLength )\r\n");
    return retVal;
}


/*
================
idCompressor_Huffman::FinishCompress
================
*/
void idCompressor_Huffman::FinishCompress( void ) {
    Sys_Printf("void idCompressor_Huffman::FinishCompress( void )\r\n");
}


/*
================
idCompressor_Huffman::Read
================
*/
int idCompressor_Huffman::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Huffman::Read( void *outData, int outLength )\r\n");
    return retVal;
}


/*
================
idCompressor_Huffman::GetCompressionRatio
================
*/
float idCompressor_Huffman::GetCompressionRatio( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idCompressor_Huffman::GetCompressionRatio( void )\r\n");
    return retVal;
}



/*
=================================================================================

	idCompressor_Arithmetic

	The following algorithm is based on the Arithmetic Coding methods described
	by Mark Nelson. The probability table is implicitly stored.

=================================================================================
*/

const int AC_WORD_LENGTH	= 8;
const int AC_NUM_BITS		= 16;
const int AC_MSB_SHIFT		= 15;
const int AC_MSB2_SHIFT		= 14;
const int AC_MSB_MASK		= 0x8000;
const int AC_MSB2_MASK		= 0x4000;
const int AC_HIGH_INIT		= 0xffff;
const int AC_LOW_INIT		= 0x0000;

class idCompressor_Arithmetic : public idCompressor_BitStream {
public:
					idCompressor_Arithmetic( void ) {}

	void			Init( idFile *f, bool compress, int wordLength );
	void			FinishCompress( void );

	int				Write( const void *inData, int inLength );
	int				Read( void *outData, int outLength );
	
private:
					typedef struct acProbs_s {
						unsigned int	low;
						unsigned int	high;
					} acProbs_t;
				
					typedef struct acSymbol_s {
						unsigned int	low;
						unsigned int	high;
						int				position;
					} acSymbol_t;

	acProbs_t		probabilities[1<<AC_WORD_LENGTH];

	int				symbolBuffer;
	int				symbolBit;

	unsigned short	low;
	unsigned short	high;
	unsigned short	code;
	unsigned int	underflowBits;
	unsigned int	scale;

private:
	void			InitProbabilities( void );
	void			UpdateProbabilities( acSymbol_t* symbol );
	int				ProbabilityForCount( unsigned int count );

	void			CharToSymbol( byte c, acSymbol_t* symbol );
	void			EncodeSymbol( acSymbol_t* symbol );

	int				SymbolFromCount( unsigned int count, acSymbol_t* symbol );
	int				GetCurrentCount( void );
	void			RemoveSymbolFromStream( acSymbol_t* symbol );

	void			PutBit( int bit );
	int				GetBit( void );

	void			WriteOverflowBits( void );
};

/*
================
idCompressor_Arithmetic::Init
================
*/
void idCompressor_Arithmetic::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_Arithmetic::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_Arithmetic::InitProbabilities
================
*/
void idCompressor_Arithmetic::InitProbabilities( void ) {
    Sys_Printf("void idCompressor_Arithmetic::InitProbabilities( void )\r\n");
}


/*
================
idCompressor_Arithmetic::UpdateProbabilities
================
*/
void idCompressor_Arithmetic::UpdateProbabilities( acSymbol_t* symbol ) {
    Sys_Printf("void idCompressor_Arithmetic::UpdateProbabilities( acSymbol_t* symbol )\r\n");
}


/*
================
idCompressor_Arithmetic::GetCurrentCount
================
*/
int idCompressor_Arithmetic::GetCurrentCount( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Arithmetic::GetCurrentCount( void )\r\n");
    return retVal;
}


/*
================
idCompressor_Arithmetic::ProbabilityForCount
================
*/
int idCompressor_Arithmetic::ProbabilityForCount( unsigned int count ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Arithmetic::ProbabilityForCount( unsigned int count )\r\n");
    return retVal;
}


/*
================
idCompressor_Arithmetic::SymbolFromCount
================
*/
int idCompressor_Arithmetic::SymbolFromCount( unsigned int count, acSymbol_t* symbol ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Arithmetic::SymbolFromCount( unsigned int count, acSymbol_t* symbol )\r\n");
    return retVal;
}


/*
================
idCompressor_Arithmetic::RemoveSymbolFromStream
================
*/
void idCompressor_Arithmetic::RemoveSymbolFromStream( acSymbol_t* symbol ) {
    Sys_Printf("void idCompressor_Arithmetic::RemoveSymbolFromStream( acSymbol_t* symbol )\r\n");
}


/*
================
idCompressor_Arithmetic::GetBit
================
*/
int idCompressor_Arithmetic::GetBit( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Arithmetic::GetBit( void )\r\n");
    return retVal;
}


/*
================
idCompressor_Arithmetic::EncodeSymbol
================
*/
void idCompressor_Arithmetic::EncodeSymbol( acSymbol_t* symbol ) {
    Sys_Printf("void idCompressor_Arithmetic::EncodeSymbol( acSymbol_t* symbol )\r\n");
}


/*
================
idCompressor_Arithmetic::CharToSymbol
================
*/
void idCompressor_Arithmetic::CharToSymbol( byte c, acSymbol_t* symbol ) {
    Sys_Printf("void idCompressor_Arithmetic::CharToSymbol( byte c, acSymbol_t* symbol )\r\n");
}


/*
================
idCompressor_Arithmetic::PutBit
================
*/
void idCompressor_Arithmetic::PutBit( int putbit ) {
    Sys_Printf("void idCompressor_Arithmetic::PutBit( int putbit )\r\n");
}


/*
================
idCompressor_Arithmetic::WriteOverflowBits
================
*/
void idCompressor_Arithmetic::WriteOverflowBits( void ) {
    Sys_Printf("void idCompressor_Arithmetic::WriteOverflowBits( void )\r\n");
}


/*
================
idCompressor_Arithmetic::Write
================
*/
int idCompressor_Arithmetic::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Arithmetic::Write( const void *inData, int inLength )\r\n");
    return retVal;
}


/*
================
idCompressor_Arithmetic::FinishCompress
================
*/
void idCompressor_Arithmetic::FinishCompress( void ) {
    Sys_Printf("void idCompressor_Arithmetic::FinishCompress( void )\r\n");
}


/*
================
idCompressor_Arithmetic::Read
================
*/
int idCompressor_Arithmetic::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_Arithmetic::Read( void *outData, int outLength )\r\n");
    return retVal;
}



/*
=================================================================================

	idCompressor_LZSS

	In 1977 Abraham Lempel and Jacob Ziv presented a dictionary based scheme for
	text compression called LZ77. For any new text LZ77 outputs an offset/length
	pair to previously seen text and the next new byte after the previously seen
	text.

	In 1982 James Storer and Thomas Szymanski presented a modification on the work
	of Lempel and Ziv called LZSS. LZ77 always outputs an offset/length pair, even
	if a match is only one byte long. An offset/length pair usually takes more than
	a single byte to store and the compression is not optimal for small match sizes.
	LZSS uses a bit flag which tells whether the following data is a literal (byte)
	or an offset/length pair.

	The following algorithm is an implementation of LZSS with arbitrary word size.

=================================================================================
*/

const int LZSS_BLOCK_SIZE		= 65535;
const int LZSS_HASH_BITS		= 10;
const int LZSS_HASH_SIZE		= ( 1 << LZSS_HASH_BITS );
const int LZSS_HASH_MASK		= ( 1 << LZSS_HASH_BITS ) - 1;
const int LZSS_OFFSET_BITS		= 11;
const int LZSS_LENGTH_BITS		= 5;

class idCompressor_LZSS : public idCompressor_BitStream {
public:
					idCompressor_LZSS( void ) {}

	void			Init( idFile *f, bool compress, int wordLength );
	void			FinishCompress( void );

	int				Write( const void *inData, int inLength );
	int				Read( void *outData, int outLength );

protected:
	int				offsetBits;
	int				lengthBits;
	int				minMatchWords;

	byte			block[LZSS_BLOCK_SIZE];
	int				blockSize;
	int				blockIndex;

	int				hashTable[LZSS_HASH_SIZE];
	int				hashNext[LZSS_BLOCK_SIZE * 8];

protected:
	bool			FindMatch( int startWord, int startValue, int &wordOffset, int &numWords );
	void			AddToHash( int index, int hash );
	int				GetWordFromBlock( int wordOffset ) const;
	virtual void	CompressBlock( void );
	virtual void	DecompressBlock( void );
};

/*
================
idCompressor_LZSS::Init
================
*/
void idCompressor_LZSS::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_LZSS::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_LZSS::FindMatch
================
*/
bool idCompressor_LZSS::FindMatch( int startWord, int startValue, int &wordOffset, int &numWords ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCompressor_LZSS::FindMatch( int startWord, int startValue, int &wordOffset, int &numWords )\r\n");
    return retVal;
}


/*
================
idCompressor_LZSS::AddToHash
================
*/
void idCompressor_LZSS::AddToHash( int index, int hash ) {
    Sys_Printf("void idCompressor_LZSS::AddToHash( int index, int hash )\r\n");
}


/*
================
idCompressor_LZSS::GetWordFromBlock
================
*/
int idCompressor_LZSS::GetWordFromBlock( int wordOffset ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZSS::GetWordFromBlock( int wordOffset )\r\n");
    return retVal;
}


/*
================
idCompressor_LZSS::CompressBlock
================
*/
void idCompressor_LZSS::CompressBlock( void ) {
    Sys_Printf("void idCompressor_LZSS::CompressBlock( void )\r\n");
}


/*
================
idCompressor_LZSS::DecompressBlock
================
*/
void idCompressor_LZSS::DecompressBlock( void ) {
    Sys_Printf("void idCompressor_LZSS::DecompressBlock( void )\r\n");
}


/*
================
idCompressor_LZSS::Write
================
*/
int idCompressor_LZSS::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZSS::Write( const void *inData, int inLength )\r\n");
    return retVal;
}


/*
================
idCompressor_LZSS::FinishCompress
================
*/
void idCompressor_LZSS::FinishCompress( void ) {
    Sys_Printf("void idCompressor_LZSS::FinishCompress( void )\r\n");
}


/*
================
idCompressor_LZSS::Read
================
*/
int idCompressor_LZSS::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZSS::Read( void *outData, int outLength )\r\n");
    return retVal;
}


/*
=================================================================================

	idCompressor_LZSS_WordAligned

	Outputs word aligned compressed data.

=================================================================================
*/

class idCompressor_LZSS_WordAligned : public idCompressor_LZSS {
public:
					idCompressor_LZSS_WordAligned( void ) {}

	void			Init( idFile *f, bool compress, int wordLength );
private:
	virtual void	CompressBlock( void );
	virtual void	DecompressBlock( void );
};

/*
================
idCompressor_LZSS_WordAligned::Init
================
*/
void idCompressor_LZSS_WordAligned::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_LZSS_WordAligned::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_LZSS_WordAligned::CompressBlock
================
*/
void idCompressor_LZSS_WordAligned::CompressBlock( void ) {
    Sys_Printf("void idCompressor_LZSS_WordAligned::CompressBlock( void )\r\n");
}


/*
================
idCompressor_LZSS_WordAligned::DecompressBlock
================
*/
void idCompressor_LZSS_WordAligned::DecompressBlock( void ) {
    Sys_Printf("void idCompressor_LZSS_WordAligned::DecompressBlock( void )\r\n");
}


/*
=================================================================================

	idCompressor_LZW

	http://www.unisys.com/about__unisys/lzw
	http://www.dogma.net/markn/articles/lzw/lzw.htm
	http://www.cs.cf.ac.uk/Dave/Multimedia/node214.html
	http://www.cs.duke.edu/csed/curious/compression/lzw.html
	http://oldwww.rasip.fer.hr/research/compress/algorithms/fund/lz/lzw.html

	This is the same compression scheme used by GIF with the exception that
	the EOI and clear codes are not explicitly stored.  Instead EOI happens
	when the input stream runs dry and CC happens when the table gets to big.

	This is a derivation of LZ78, but the dictionary starts with all single
	character values so only code words are output.  It is similar in theory
	to LZ77, but instead of using the previous X bytes as a lookup table, a table
	is built as the stream is read.  The	compressor and decompressor use the
	same formula, so the tables should be exactly alike.  The only catch is the
	decompressor is always one step behind the compressor and may get a code not
	yet in the table.  In this case, it is easy to determine what the next code
	is going to be (it will be the previous string plus the first byte of the
	previous string).

	The dictionary can be any size, but 12 bits seems to produce best results for
	most sample data.  The code size is variable.  It starts with the minimum
	number of bits required to store the dictionary and automatically increases
	as the dictionary gets bigger (it starts at 9 bits and grows to 10 bits when
	item 512 is added, 11 bits when 1024 is added, etc...) once the the dictionary
	is filled (4096 items for a 12 bit dictionary), the whole thing is cleared and
	the process starts over again.

	The compressor increases the bit size after it adds the item, while the
	decompressor does before it adds the item.  The difference is subtle, but
	it's because decompressor being one step behind.  Otherwise, the decompressor
	would read 512 with only 9 bits.

	If "Hello" is in the dictionary, then "Hell", "Hel", "He" and "H" will be too.
	We use this to our advantage by storing the index of the previous code, and
	the value of the last character.  This means when we traverse through the
	dictionary, we get the characters in reverse.

	Dictionary entries 0-255 are always going to have the values 0-255

=================================================================================
*/

class idCompressor_LZW : public idCompressor_BitStream {
public:
					idCompressor_LZW( void ) {}

	void			Init( idFile *f, bool compress, int wordLength );
	void			FinishCompress( void );

	int				Write( const void *inData, int inLength );
	int				Read( void *outData, int outLength );

protected:
	int				AddToDict( int w, int k );
	int				Lookup( int w, int k );

	bool			BumpBits();

	int				WriteChain( int code );
	void			DecompressBlock();

	static const int LZW_BLOCK_SIZE = 32767;
	static const int LZW_START_BITS = 9;
	static const int LZW_FIRST_CODE = (1 << (LZW_START_BITS-1));
	static const int LZW_DICT_BITS = 12;
	static const int LZW_DICT_SIZE = 1 << LZW_DICT_BITS;

	// Dictionary data
	struct {
		int k;
		int w;
	}				dictionary[LZW_DICT_SIZE];
	idHashIndex		index;

	int				nextCode;
	int				codeBits;

	// Block data
	byte			block[LZW_BLOCK_SIZE];
	int				blockSize;
	int				blockIndex;

	// Used by the compressor
	int				w;

	// Used by the decompressor
	int				oldCode;
};

/*
================
idCompressor_LZW::Init
================
*/
void idCompressor_LZW::Init( idFile *f, bool compress, int wordLength ) {
    Sys_Printf("void idCompressor_LZW::Init( idFile *f, bool compress, int wordLength )\r\n");
}


/*
================
idCompressor_LZW::Read
================
*/
int idCompressor_LZW::Read( void *outData, int outLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZW::Read( void *outData, int outLength )\r\n");
    return retVal;
}


/*
================
idCompressor_LZW::Lookup
================
*/
int idCompressor_LZW::Lookup( int w, int k ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZW::Lookup( int w, int k )\r\n");
    return retVal;
}


/*
================
idCompressor_LZW::AddToDict
================
*/
int idCompressor_LZW::AddToDict( int w, int k ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZW::AddToDict( int w, int k )\r\n");
    return retVal;
}


/*
================
idCompressor_LZW::BumpBits

Possibly increments codeBits
Returns true if the dictionary was cleared
================
*/
bool idCompressor_LZW::BumpBits() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCompressor_LZW::BumpBits()\r\n");
    return retVal;
}


/*
================
idCompressor_LZW::FinishCompress
================
*/
void idCompressor_LZW::FinishCompress( void ) {
    Sys_Printf("void idCompressor_LZW::FinishCompress( void )\r\n");
}


/*
================
idCompressor_LZW::Write
================
*/
int idCompressor_LZW::Write( const void *inData, int inLength ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZW::Write( const void *inData, int inLength )\r\n");
    return retVal;
}



/*
================
idCompressor_LZW::WriteChain
The chain is stored backwards, so we have to write it to a buffer then output the buffer in reverse
================
*/
int idCompressor_LZW::WriteChain( int code ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCompressor_LZW::WriteChain( int code )\r\n");
    return retVal;
}


/*
================
idCompressor_LZW::DecompressBlock
================
*/
void idCompressor_LZW::DecompressBlock() {
    Sys_Printf("void idCompressor_LZW::DecompressBlock()\r\n");
}


/*
=================================================================================

	idCompressor

=================================================================================
*/

/*
================
idCompressor::AllocNoCompression
================
*/
idCompressor * idCompressor::AllocNoCompression( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocNoCompression( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocBitStream
================
*/
idCompressor * idCompressor::AllocBitStream( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocBitStream( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocRunLength
================
*/
idCompressor * idCompressor::AllocRunLength( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocRunLength( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocRunLength_ZeroBased
================
*/
idCompressor * idCompressor::AllocRunLength_ZeroBased( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocRunLength_ZeroBased( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocHuffman
================
*/
idCompressor * idCompressor::AllocHuffman( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocHuffman( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocArithmetic
================
*/
idCompressor * idCompressor::AllocArithmetic( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocArithmetic( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocLZSS
================
*/
idCompressor * idCompressor::AllocLZSS( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocLZSS( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocLZSS_WordAligned
================
*/
idCompressor * idCompressor::AllocLZSS_WordAligned( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocLZSS_WordAligned( void )\r\n");
    return NULL;
}


/*
================
idCompressor::AllocLZW
================
*/
idCompressor * idCompressor::AllocLZW( void ) {
    Sys_Printf("idCompressor * idCompressor::AllocLZW( void )\r\n");
    return NULL;
}


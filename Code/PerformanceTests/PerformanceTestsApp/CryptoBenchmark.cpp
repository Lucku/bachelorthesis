#include "stdafx.h"
#include "CryptoBenchmark.h"
#include "AESCBCCryptoSystem.h"

void CryptoBenchmark::preprocessData(uint64_t *data, int length)
{
	RAND_bytes((BYTE*) data, length * 8);
}

void CryptoBenchmark::preprocessData(uint32_t *data, int length)
{
	RAND_bytes((BYTE*) data, length * 4);
}

void CryptoBenchmark::preprocessData(uint8_t *data, int length)
{
	RAND_bytes((BYTE*) data, length);
}

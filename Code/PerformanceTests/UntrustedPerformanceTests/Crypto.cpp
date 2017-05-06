#include "stdafx.h"
#include "Crypto.h"

int Crypto::encryptBytes(uint8_t *input, size_t length, uint8_t *output, const uint8_t *key, const size_t keyLength, uint8_t *iv) {

	int ctxSize;
	ippsAESGetSize(&ctxSize);
	IppsAESSpec* pAES = (IppsAESSpec*)(new Ipp8u[ctxSize]);
	
	ippsAESInit(key, keyLength, pAES, ctxSize);

	IppStatus status = ippsAESEncryptCTR(input, output, length, pAES, iv, 64);

	delete[](Ipp8u*) pAES;

	return status;
}

int Crypto::decryptBytes(uint8_t *input, size_t length, uint8_t *output, const uint8_t *key, const size_t keyLength, uint8_t *iv) {

	int ctxSize;
	ippsAESGetSize(&ctxSize);
	IppsAESSpec* pAES = (IppsAESSpec*)(new Ipp8u[ctxSize]);

	ippsAESInit(key, keyLength, pAES, ctxSize);

	IppStatus status = ippsAESDecryptCTR(input, output, length, pAES, iv, 64);

	delete[](Ipp8u*) pAES;

	return status;
}
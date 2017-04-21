#include "stdafx.h"
#include "AESCBCCryptoEngine.h"

void AESCBCCryptoEngine::encrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char * iv)
{
	AES_KEY encKey;

	AES_set_encrypt_key(key, keyLength * 8, &encKey);
	AES_cbc_encrypt(input, output, length, &encKey, iv, AES_ENCRYPT);
}

void AESCBCCryptoEngine::decrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char * iv)
{
	AES_KEY decKey;

	AES_set_decrypt_key(key, keyLength * 8, &decKey);
	AES_cbc_encrypt(input, output, length, &decKey, iv, AES_DECRYPT);
}

void AESCBCCryptoEngine::generateParams(unsigned char *key, int keyLength, unsigned char *iv)
{
	int rc = RAND_bytes(key, keyLength);
	if (rc != 1)
		throw std::runtime_error("RAND_bytes key failed");

	rc = RAND_bytes(iv, 16);
	if (rc != 1)
		throw std::runtime_error("RAND_bytes for iv failed");
}

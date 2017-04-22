#include "stdafx.h"
#include "AESCBCCryptoSystem.h"

void AESCBCCryptoSystem::encrypt(BYTE *input, BYTE *output, int length, const BYTE *key, const int keyLength, BYTE *iv)
{
	AES_KEY encKey;

	AES_set_encrypt_key(key, keyLength * 8, &encKey);
	AES_cbc_encrypt(input, output, length, &encKey, iv, AES_ENCRYPT);
}

void AESCBCCryptoSystem::decrypt(BYTE *input, BYTE *output, int length, const BYTE *key, const int keyLength, BYTE *iv)
{
	AES_KEY decKey;

	AES_set_decrypt_key(key, keyLength * 8, &decKey);
	AES_cbc_encrypt(input, output, length, &decKey, iv, AES_DECRYPT);
}

void AESCBCCryptoSystem::generateParams(BYTE *key, const int keyLength, BYTE *iv)
{
	int rc = RAND_bytes(key, keyLength);
	if (rc != 1)
		throw std::runtime_error("RAND_bytes key failed");

	rc = RAND_bytes(iv, AES_BLOCK_SIZE);
	if (rc != 1)
		throw std::runtime_error("RAND_bytes for iv failed");
}

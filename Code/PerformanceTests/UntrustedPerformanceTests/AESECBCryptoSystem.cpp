#include "stdafx.h"
#include "AESECBCryptoSystem.h"

int AESECBCryptoSystem::encrypt(uint8_t *input, uint8_t *output, int length, const uint8_t *key, const int keyLength, uint8_t *iv)
{
	int outLength;

	int ciphertextLength;

	OpenSSL_add_all_algorithms();

	EVP_CIPHER_CTX ctx;

	EVP_CIPHER_CTX_init(&ctx);

	EVP_CipherInit_ex(&ctx, EVP_aes_128_ecb(), NULL, key, iv, TRUE);

	EVP_CipherUpdate(&ctx, output, &outLength, input, length);

	ciphertextLength = outLength;

	EVP_CipherFinal_ex(&ctx, output + outLength, &outLength);

	ciphertextLength += outLength;

	return ciphertextLength;
}

int AESECBCryptoSystem::decrypt(uint8_t *input, uint8_t *output, int length, const uint8_t *key, const int keyLength, uint8_t *iv)
{
	int outLength;

	int plaintextLength;

	OpenSSL_add_all_algorithms();

	EVP_CIPHER_CTX ctx;
	
	EVP_CIPHER_CTX_init(&ctx);

	EVP_CipherInit_ex(&ctx, EVP_aes_128_ecb(), NULL, key, iv, FALSE);

	EVP_CipherUpdate(&ctx, output, &outLength, input, length);

	plaintextLength = outLength;

	EVP_CipherFinal_ex(&ctx, output + outLength, &outLength);

	plaintextLength += outLength;

	return plaintextLength;
}


void AESECBCryptoSystem::generateParams(uint8_t *key, const int keyLength, uint8_t *iv)
{
	int rc = RAND_bytes(key, keyLength);
	if (rc != 1)
	throw std::runtime_error("RAND_uint8_ts key failed");

	rc = RAND_bytes(iv, AES_BLOCK_SIZE);
	if (rc != 1)
	throw std::runtime_error("RAND_uint8_ts for iv failed");
}

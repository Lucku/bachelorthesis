#include "PerformanceTests_t.h"

#include <windows.h>
#include <openssl\evp.h>
#include <openssl\conf.h>

int encryptBytes(uint8_t *input, size_t inLength, uint8_t *output, size_t outLength, const uint8_t *key, const size_t keyLength, uint8_t *iv) {

	int cipherOutLength;

	int ciphertextLength;

	OpenSSL_add_all_algorithms();

	EVP_CIPHER_CTX ctx;

	EVP_CIPHER_CTX_init(&ctx);

	EVP_CipherInit_ex(&ctx, EVP_aes_128_ecb(), NULL, key, iv, TRUE);

	EVP_CipherUpdate(&ctx, output, &cipherOutLength, input, inLength);

	ciphertextLength = cipherOutLength;

	EVP_CipherFinal_ex(&ctx, output + cipherOutLength, &cipherOutLength);

	ciphertextLength += cipherOutLength;

	return ciphertextLength;
}

int decryptBytes(uint8_t *input, size_t inLength, uint8_t *output, size_t outLength, const uint8_t *key, const size_t keyLength, uint8_t *iv) {

	int cipherOutLength;

	int plaintextLength;

	OpenSSL_add_all_algorithms();

	EVP_CIPHER_CTX ctx;

	EVP_CIPHER_CTX_init(&ctx);

	EVP_CipherInit_ex(&ctx, EVP_aes_128_ecb(), NULL, key, iv, FALSE);

	EVP_CipherUpdate(&ctx, output, &cipherOutLength, input, inLength);

	plaintextLength = cipherOutLength;

	EVP_CipherFinal_ex(&ctx, output + cipherOutLength, &cipherOutLength);

	plaintextLength += cipherOutLength;

	return plaintextLength;
}


#include "PerformanceTests_t.h"

#include <windows.h>
#include <openssl\evp.h>
#include <openssl\conf.h>
#include <cstdint>

#include "sgx_trts.h"

#define AES_BLOCK_SIZE 16
#define AES_KEY_SIZE 16

void enclaveIterate(uint64_t *data, size_t length) {

	uint64_t current;

	for (unsigned int i = 0; i < length; i++) {
		current = data[i];
	}
}

void enclaveVByteEncode(uint32_t *in, size_t inLength, uint8_t *out, size_t outLength) {

	const uint8_t *initout = out;
	size_t k;

	for (k = 0; k < inLength; ++k) {

		const uint32_t val = in[k];

		if (val < (1U << 7)) {
			*out = val & 0x7F;
			++out;
		}
		else if (val < (1U << 14)) {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 7);
			++out;
		}
		else if (val < (1U << 21)) {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 7) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 14);
			++out;
		}
		else if (val < (1U << 28)) {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 7) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 14) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 21);
			++out;
		}
		else {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 7) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 14) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 21) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 28);
			++out;
		}
	}
}

void enclaveVByteDecode(uint8_t *in, size_t inLength, uint32_t *out, size_t outLength) {

	const uint32_t *initout = out;
	size_t k = 0;

	while (k < inLength) {

		if (in[k] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F);
			k += 1;
		}
		else if (in[k + 1] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7);
			k += 2;
		}
		else if (in[k + 2] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14);
			k += 3;
		}
		else if (in[k + 3] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14) | ((uint32_t)(in[k + 2] & 0x7F) << 21);
			k += 4;
		}
		else {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14) | ((uint32_t)(in[k + 2] & 0x7F) << 21) | ((uint32_t)(in[k + 2] & 0x7F) << 28);
			k += 5;
		}
		out++;
	}
}

void enclaveVByteEncodeEncrypted(uint32_t *in, size_t inLength, uint8_t *out, size_t outLength)
{
	uint8_t *data = new uint8_t[inLength * 4];
	uint8_t *encoded = new uint8_t[inLength * 5];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	decryptBytes((uint8_t*) in, inLength * 4, data, inLength * 4, key, AES_KEY_SIZE, iv);

	enclaveVByteEncode((uint32_t*)data, inLength, encoded, inLength * 5);

	delete[] data;

	encryptBytes(encoded, inLength * 5, out, inLength * 5 + AES_BLOCK_SIZE, key, AES_KEY_SIZE, iv);

	delete[] encoded;
}

void enclaveVByteDecodeEncrypted(uint8_t *in, size_t inLength, uint32_t *out, size_t outLength)
{
	uint8_t *data = new uint8_t[inLength];
	uint32_t *decoded = new uint32_t[inLength];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	decryptBytes(in, inLength, data, inLength, key, AES_KEY_SIZE, iv);

	enclaveVByteDecode(data, inLength, decoded, inLength);

	delete[] data;

	encryptBytes((uint8_t*) decoded, inLength * 4, (uint8_t*) out, inLength * 4 + AES_BLOCK_SIZE, key, AES_KEY_SIZE, iv);

	delete[] decoded;
}

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
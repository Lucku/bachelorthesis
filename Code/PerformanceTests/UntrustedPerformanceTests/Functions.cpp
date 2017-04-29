#include "stdafx.h"
#include "AESECBCryptoSystem.h"

void iterate(uint64_t *data, size_t length) {

	uint64_t current;

	for (unsigned int i = 0; i < length; i++) {

		current = data[i];
	}
}

void vByteEncode(uint32_t *in, size_t length, uint8_t *out) {

	const uint8_t *initout = out;
	size_t k;

	for (k = 0; k < length; ++k) {

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

void vByteDecode(uint8_t *in, size_t length, uint32_t *out) {

	const uint32_t *initout = out;
	size_t k = 0;

	while (k < length) {

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

void vByteEncodeEncrypted(uint32_t *in, size_t length, uint8_t *out)
{
	AESECBCryptoSystem *aes = new AESECBCryptoSystem();

	uint8_t *data = new uint8_t[length * 4];
	uint8_t *encoded = new uint8_t[length * 5];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	//DEBUG
	//aes->printData("Original", (uint8_t*) in, length * 4);

	// we can't generate key and iv because it is not possible via openSSL in enclave, 
	// and we want the same consitions on both sides
	// aes->generateParams(key, AES_KEY_SIZE, iv);

	aes->decrypt((uint8_t*) in, data, length * 4, key, AES_KEY_SIZE, iv);

	//aes->printData("Decrypted", data, length * 4);

	vByteEncode((uint32_t*)data, length, encoded);

	delete[] data;

	aes->encrypt(encoded, out, length * 5, key, AES_KEY_SIZE, iv);

	//aes->printData("Encrypted", out, length * 5);

	delete[] encoded;
}

void vByteDecodeEncrypted(uint8_t *in, size_t length, uint32_t *out)
{
	AESECBCryptoSystem *aes = new AESECBCryptoSystem();

	uint8_t *data = new uint8_t[length];
	uint32_t *decoded = new uint32_t[length];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	//aes->generateParams(key, AES_KEY_SIZE, iv);

	aes->decrypt(in, data, length, key, AES_KEY_SIZE, iv);

	vByteDecode(data, length, decoded);

	delete[] data;

	aes->encrypt((uint8_t*) decoded, (uint8_t*) out, length * 4, key, AES_KEY_SIZE, iv);

	delete[] decoded;
}
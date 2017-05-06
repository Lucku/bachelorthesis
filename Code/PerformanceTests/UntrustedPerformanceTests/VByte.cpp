#include "stdafx.h"
#include "VByte.h"
#include "Crypto.h"
#include "CryptoDebug.h"

size_t vByteEncode(uint8_t *in, size_t length, uint8_t *out) {

	const uint32_t *in32 = reinterpret_cast<const uint32_t*>(in);
	const size_t length32 = length / sizeof(uint32_t);

	const uint8_t *initOut = out;
	size_t k;

	for (k = 0; k < length32; ++k) {

		const uint32_t val = in32[k];

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

	return out - initOut;
}

size_t vByteDecode(uint8_t *in, size_t length, uint8_t *out) {

	uint32_t *out32 = reinterpret_cast<uint32_t*>(out);

	const uint32_t *initOut = out32;
	size_t k = 0;

	while (k < length) {

		if (in[k] < 1U << 7) {
			*out32 = (uint32_t)(in[k] & 0x7F);
			k += 1;
		}
		else if (in[k + 1] < 1U << 7) {
			*out32 = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7);
			k += 2;
		}
		else if (in[k + 2] < 1U << 7) {
			*out32 = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14);
			k += 3;
		}
		else if (in[k + 3] < 1U << 7) {
			*out32 = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14) | ((uint32_t)(in[k + 2] & 0x7F) << 21);
			k += 4;
		}
		else {
			*out32 = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14) | ((uint32_t)(in[k + 2] & 0x7F) << 21) | ((uint32_t)(in[k + 2] & 0x7F) << 28);
			k += 5;
		}
		out32++;
	}

	return (out32 - initOut) * sizeof(uint32_t);
}

size_t vByteEncodeEncrypted(uint8_t *in, size_t length, uint8_t *out)
{

	size_t encodedLength = (length / sizeof(uint32_t)) * 5;

	uint8_t *data = new uint8_t[length];
	uint8_t *encoded = new uint8_t[encodedLength];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	//Crypto::printData("Original", (uint8_t*) in, length * 4);

	// we can't generate key and iv because it is not possible via openSSL in enclave, 
	// and we want the same consitions on both sides
	// aes->generateParams(key, AES_KEY_SIZE, iv);

	Crypto::decryptBytes(in, length, data, key, AES_KEY_SIZE, iv);

	//Crypto::printData("Decrypted", data, length * 4);

	size_t resLength = vByteEncode(data, length, encoded);
	
	//aes->encrypt(encoded, out, length * 5, key, AES_KEY_SIZE, iv);
	Crypto::encryptBytes(encoded, resLength, out, key, AES_KEY_SIZE, iv);

	//Crypto::printData("Encrypted", out, length * 5);

	delete[] data;
	delete[] encoded;

	return resLength + AES_BLOCK_SIZE;
}

size_t vByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out)
{
	size_t decodedLength = length * sizeof(uint32_t);

	uint8_t *data = new uint8_t[length];
	uint8_t *decoded = new uint8_t[decodedLength];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	Crypto::decryptBytes(in, length, data, key, AES_KEY_SIZE, iv);

	size_t resLength = vByteDecode(data, length, decoded);

	Crypto::encryptBytes(decoded, resLength, out, key, AES_KEY_SIZE, iv);

	delete[] data;
	delete[] decoded;

	return resLength + AES_BLOCK_SIZE;
}
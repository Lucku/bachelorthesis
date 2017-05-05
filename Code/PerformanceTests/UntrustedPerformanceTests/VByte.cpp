#include "stdafx.h"
#include "VByte.h"

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
	//AESECBCryptoSystem *aes = new AESECBCryptoSystem();

	size_t encodedLength = (length / sizeof(uint32_t)) * 5;

	uint8_t *data = new uint8_t[length];
	uint8_t *encoded = new uint8_t[encodedLength];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	//DEBUG
	//aes->printData("Original", (uint8_t*) in, length * 4);

	// we can't generate key and iv because it is not possible via openSSL in enclave, 
	// and we want the same consitions on both sides
	// aes->generateParams(key, AES_KEY_SIZE, iv);

	//aes->decrypt(in, data, length * 4, key, AES_KEY_SIZE, iv);
	decryptBytes(in, length, data, length, key, AES_KEY_SIZE, iv);

	//aes->printData("Decrypted", data, length * 4);

	size_t resLength = vByteEncode(data, length, encoded);
	
	//aes->encrypt(encoded, out, length * 5, key, AES_KEY_SIZE, iv);
	encryptBytes(encoded, resLength, out, resLength + AES_BLOCK_SIZE, key, AES_KEY_SIZE, iv);

	//aes->printData("Encrypted", out, length * 5);

	delete[] data;
	delete[] encoded;

	return resLength + AES_BLOCK_SIZE;
}

size_t vByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out)
{
	//AESECBCryptoSystem *aes = new AESECBCryptoSystem();

	size_t decodedLength = length * sizeof(uint32_t);

	uint8_t *data = new uint8_t[length];
	uint8_t *decoded = new uint8_t[decodedLength];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	//aes->generateParams(key, AES_KEY_SIZE, iv);

	//aes->decrypt(in, data, length, key, AES_KEY_SIZE, iv);
	decryptBytes(in, length, data, length, key, AES_KEY_SIZE, iv);

	size_t resLength = vByteDecode(data, length, decoded);

	delete[] data;

	//aes->encrypt((uint8_t*) decoded, (uint8_t*) out, length * 4, key, AES_KEY_SIZE, iv);
	encryptBytes(decoded, resLength, out, resLength + AES_BLOCK_SIZE, key, AES_KEY_SIZE, iv);

	delete[] decoded;

	return resLength + AES_BLOCK_SIZE;
}
#include "PerformanceTests_t.h"

#include <cstdint>
#include <sgx_intrin.h>
#include "sgx_trts.h"

#define AES_BLOCK_SIZE 16
#define AES_KEY_SIZE 16

size_t enclaveIterate(uint8_t *in, size_t length, uint8_t *out) {

	for (unsigned int i = 0; i < length; i++) {

		out[i] = in[i];
	}

	/* TODO Test with real enclave
	
	float test = 0xFFFFFFFF;

	__m128 a = _mm_load_ps1(&test);

	__m128 b = _mm_load_ps1(&test);

	__m128 result = _mm_add_ps(a, b);
	*/

	return 0;
}

size_t enclaveVByteEncode(uint8_t *in, size_t inLength, uint8_t *out, size_t outLength) {

	const uint32_t *in32 = reinterpret_cast<const uint32_t*>(in);
	const size_t length32 = inLength / sizeof(uint32_t);

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

size_t enclaveVByteDecode(uint8_t *in, size_t inLength, uint8_t *out, size_t outLength) {

	uint32_t *out32 = reinterpret_cast<uint32_t*>(out);

	const uint32_t *initOut = out32;
	size_t k = 0;

	while (k < inLength) {

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

size_t enclaveVByteEncodeEncrypted(uint8_t *in, size_t length, uint8_t *out)
{
	size_t encodedLength = (length / sizeof(uint32_t)) * 5;

	uint8_t *data = new uint8_t[length];
	uint8_t *encoded = new uint8_t[encodedLength];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	decryptBytes(in, length, data, length, key, AES_KEY_SIZE, iv);

	size_t resLength = enclaveVByteEncode(data, length, encoded, encodedLength);

	encryptBytes(encoded, resLength, out, resLength + AES_BLOCK_SIZE, key, AES_KEY_SIZE, iv);

	delete[] data;
	delete[] encoded;

	return resLength + AES_BLOCK_SIZE;
}

size_t enclaveVByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out)
{
	size_t decodedLength = length * sizeof(uint32_t);

	uint8_t *data = new uint8_t[length];
	uint8_t *decoded = new uint8_t[decodedLength];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	decryptBytes(in, length, data, length, key, AES_KEY_SIZE, iv);

	size_t resLength = enclaveVByteDecode(data, length, decoded, decodedLength);

	encryptBytes(decoded, resLength, out, resLength + AES_BLOCK_SIZE, key, AES_KEY_SIZE, iv);

	delete[] data;
	delete[] decoded;

	return resLength + AES_BLOCK_SIZE;
}

size_t enclaveRunLengthEncode(uint8_t *in, size_t inLength, uint8_t *out, size_t outLength)
{
	const uint32_t* in32 = reinterpret_cast<const uint32_t*>(in);
	const size_t countIn32 = inLength / sizeof(uint32_t);

	if (countIn32 == 0) return 0;

	const uint32_t* current32 = in32 + 1;
	const uint32_t* const end32 = in32 + countIn32;
	uint32_t* out32 = reinterpret_cast<uint32_t*>(out);
	const uint32_t* const initOut32 = out32;

	uint32_t currentRunValue = *in32;
	const uint32_t* currentRunStart32 = in32;

	while (current32 != end32) {
		if (*current32 != currentRunValue) {

			*out32++ = currentRunValue;
			*out32++ = static_cast<uint32_t>(in32 - currentRunStart32);
			currentRunStart32 = current32;
			currentRunValue = *currentRunStart32;
		}
		current32++;
	}

	*out32++ = currentRunValue;
	*out32++ = static_cast<uint32_t>(in32 - currentRunStart32);
	currentRunStart32 = current32;
	currentRunValue = *currentRunStart32;

	return (out32 - initOut32) * sizeof(uint32_t);
}

/* !WARNING! Decode won't work without encoded data */
size_t enclaveRunLengthDecode(uint8_t *in, size_t inLength, uint8_t *out, size_t outLength)
{
	uint32_t* out32 = reinterpret_cast<uint32_t*>(out);
	const size_t countIn32 = inLength / sizeof(uint32_t);

	if (countIn32 == 0) return 0;

	const uint32_t* const initOut32 = out32;
	const uint32_t* in32 = reinterpret_cast<const uint32_t*>(in);
	for (size_t i = 0; i < countIn32; i += 2) {
		const uint32_t value = in32[i];
		const uint32_t runlength = in32[i + 1];
		for (size_t k = 0; k < runlength; k++)
			*out32++ = value;
	}

	return (out32 - initOut32) * sizeof(uint32_t);
}

size_t enclaveRunLengthEncodeAndSum(uint8_t *in, size_t length, uint8_t *out) {

	uint8_t *encoded = new uint8_t[length << 1];

	size_t encSize = enclaveRunLengthEncode(in, length, encoded, length << 1);

	uint64_t sum64 = 0;

	const uint32_t* in32 = reinterpret_cast<const uint32_t*>(encoded);
	const size_t countIn32 = encSize >> 2;
	for (size_t i = 0; i < countIn32; i += 2) {
		const uint32_t value = in32[i];
		const uint32_t runlength = in32[i + 1];
		sum64 += static_cast<uint64_t>(value) * static_cast<uint64_t>(runlength);
	}

	*reinterpret_cast<uint64_t*>(out) = sum64;

	delete[] encoded;

	return sizeof(uint64_t);
}
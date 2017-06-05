#include "PerformanceTests_t.h"
#include "Crypto.h"

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
	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	size_t encodedLength = (length / sizeof(uint32_t)) * 5;
	uint8_t *encoded = new uint8_t[encodedLength];

	size_t encLength = enclaveVByteEncode(in, length, encoded, encodedLength);

	encryptBytes(encoded, encLength, out, key, AES_KEY_SIZE, iv);

	delete[] encoded;

	return encLength + AES_BLOCK_SIZE;
}

size_t enclaveVByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out)
{
	size_t decodedLength = length * sizeof(uint32_t);

	uint8_t *data = new uint8_t[length];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	decryptBytes(in, length, data, key, AES_KEY_SIZE, iv);

	size_t resLength = enclaveVByteDecode(data, length, out, decodedLength);

	delete[] data;

	return resLength;
}

size_t enclaveVByte(uint8_t *in, size_t inLength, uint8_t *out, size_t outLength) {

	size_t decodedLength = inLength * sizeof(uint32_t);

	uint8_t *decoded = new uint8_t[decodedLength];

	size_t decSize = enclaveVByteDecode(in, inLength, decoded, decodedLength);

	// * processing on the data *

	size_t outSize = enclaveVByteEncode(decoded, decSize, out, outLength);

	delete[] decoded;

	return outSize;
}
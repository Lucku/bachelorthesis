#include "PerformanceTests_t.h"

#include <cstdint>
//#include <sgx_intrin.h>
#include "sgx_trts.h"

#define AES_BLOCK_SIZE 16
#define AES_KEY_SIZE 16

size_t enclaveIterate(uint8_t *in, size_t length, uint8_t *out) {

	for (unsigned int i = 0; i < length; i++) {

		out[i] = in[i];
	}

	return 0;
}

size_t enclaveJustCopy(uint8_t *in, size_t length, uint8_t *out) {

	return 0;
}

size_t enclaveNoCopy(uint8_t *in, size_t length, uint8_t *out) {

	return 0;
}

size_t enclaveCompleteProcess(uint8_t * in, size_t length, uint8_t *out) {

	// prepare key and iv
	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";
	// ********

	// decrypt (length -> length)
	uint8_t *data = new uint8_t[length];
	decryptBytes(in, length, data, key, AES_KEY_SIZE, iv);
	// ********

	// decompress (length -> 4 * length)
	size_t decodedLength = length * sizeof(uint32_t);
	uint8_t *decoded = new uint8_t[decodedLength];
	size_t decLength = enclaveVByteDecode(data, length, decoded, decodedLength);
	delete[] data;
	// ********

	// operate (4 * length -> 8 * length)
	size_t processLength = decLength * 2;
	uint8_t *processed = new uint8_t[processLength];
	size_t rleLength = enclaveRunLengthEncode(decoded, decLength, processed, processLength);
	delete[] decoded;
	// ********

	// compress (8 * length -> 10 * length)
	size_t encodedLength = (rleLength / sizeof(uint32_t)) * 5;
	uint8_t *encoded = new uint8_t[encodedLength];
	size_t encLength = enclaveVByteEncode(processed, rleLength, encoded, encodedLength);
	delete[] processed;
	// ********

	// encrypt (8 * length -> 8 * length + AES_BLOCK_SIZE)
	decryptBytes(encoded, encLength, out, key, AES_KEY_SIZE, iv);
	delete[] encoded;
	// ********

	return encLength + AES_BLOCK_SIZE;
}
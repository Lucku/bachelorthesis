#include "stdafx.h"
#include "Crypto.h"
#include "VByte.h"
#include "RLESum.h"

size_t iterate(uint8_t *in, size_t length, uint8_t *out) {

	for (unsigned int i = 0; i < length; i++) {

		out[i] = in[i];
	}

	return 0;
}

size_t completeProcess(uint8_t * in, size_t length, uint8_t *out) {

	// prepare key and iv
	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";
	// ********

	// decrypt (length -> length)
	uint8_t *data = new uint8_t[length];
	Crypto::decryptBytes(in, length, data, key, AES_KEY_SIZE, iv);
	// ********

	// decompress (length -> 4 * length)
	size_t decodedLength = length * sizeof(uint32_t);
	uint8_t *decoded = new uint8_t[decodedLength];
	size_t decLength = vByteDecode(data, length, decoded);
	delete[] data;
	// ********

	// operate (4 * length -> 8 * length)
	size_t processedLength = decLength * 2;
	uint8_t *processed = new uint8_t[processedLength];
	size_t rleLength = runLengthEncode(decoded, decLength, processed);
	delete[] decoded;
	// ********
	
	// compress (8 * length -> 10 * length)
	size_t encodedLength = (rleLength / sizeof(uint32_t)) * 5;
	uint8_t *encoded = new uint8_t[encodedLength];
	size_t encLength = vByteEncode(processed, rleLength, encoded);
	delete[] processed;
	// ********

	// encrypt (8 * length -> 8 * length + AES_BLOCK_SIZE)
	Crypto::encryptBytes(encoded, encLength, out, key, AES_KEY_SIZE, iv);
	delete[] encoded;
	// ********

	return encLength + AES_BLOCK_SIZE;
}

size_t crypto(uint8_t *in, size_t length, uint8_t *out) {

	uint8_t *data = new uint8_t[length];

	uint8_t key[AES_KEY_SIZE] = "123456789012345";
	uint8_t iv[AES_BLOCK_SIZE] = "123456789012345";

	Crypto::decryptBytes(in, length, data, key, AES_KEY_SIZE, iv);

	// * processing on the data *

	Crypto::encryptBytes(data, length, out, key, AES_KEY_SIZE, iv);

	delete[] data;

	return length + AES_BLOCK_SIZE;
}
#include "stdafx.h"

namespace Crypto {

	int encryptBytes(uint8_t *input, size_t length, uint8_t *output, const uint8_t *key, const size_t keyLength, uint8_t *iv);
	int decryptBytes(uint8_t *input, size_t length, uint8_t *output, const uint8_t *key, const size_t keyLength, uint8_t *iv);

	inline void printData(const char *title, const uint8_t *data, int len)
	{
		printf("%s : ", title);

		for (int i = 0; i<len; ++i)
			printf("%02X ", *(data + i));

		printf("\n");
	}
}
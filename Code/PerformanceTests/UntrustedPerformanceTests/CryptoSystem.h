#include "stdafx.h"

class CryptoSystem {

public:
	virtual int encrypt(uint8_t *input, uint8_t *output, int length, const uint8_t *key, const int keyLength, uint8_t *iv) = 0;
	virtual int decrypt(uint8_t *input, uint8_t *output, int length, const uint8_t *key, const int keyLength, uint8_t *iv) = 0;
	virtual void generateParams(uint8_t *key, const int keyLength, uint8_t *iv) = 0;

	inline void printData(const char *title, const uint8_t *data, int len)
	{
		printf("%s : ", title);

		for (int i = 0; i<len; ++i)
			printf("%02X ", *(data + i));

		printf("\n");
	}
};
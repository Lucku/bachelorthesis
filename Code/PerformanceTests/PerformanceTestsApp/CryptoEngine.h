#include "stdafx.h"

class CryptoEngine {

public:
	virtual void encrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char *iv) = 0;
	virtual void decrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char *iv) = 0;
	virtual void generateParams(unsigned char *key, int keyLength, unsigned char *iv) = 0;

	inline void printData(const char *title, const unsigned char *data, int len)
	{
		printf("%s : ", title);

		for (int i = 0; i<len; ++i)
			printf("%02X ", *data++);

		printf("\n");
	}
};
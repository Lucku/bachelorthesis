#include "stdafx.h"
#include "CryptoEngine.h"

class AESCBCCryptoEngine : public CryptoEngine {

public:
	void encrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char *iv);
	void decrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char *iv);
	void generateParams(unsigned char *key, int keyLength, unsigned char *iv);
};



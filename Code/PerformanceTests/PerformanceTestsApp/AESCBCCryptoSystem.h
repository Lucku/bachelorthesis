#include "stdafx.h"
#include "CryptoSystem.h"

class AESCBCCryptoSystem : public CryptoSystem {

public:
	void encrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char *iv);
	void decrypt(unsigned char *input, unsigned char *output, int length, const unsigned char *key, int keyLength, unsigned char *iv);
	void generateParams(unsigned char *key, int keyLength, unsigned char *iv);
};



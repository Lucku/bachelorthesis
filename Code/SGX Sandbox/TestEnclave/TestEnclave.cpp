#include "TestEnclave_t.h"
#include "sgx_trts.h"
#include <string.h>

#define MAX_BUFFER_SIZE 50

char* secretString = "Secret data";
int secretInt = 42;

char* errorString = "error";

void enclaveSaveString(char * input, size_t len)
{
	if (strlen(input) + 1 < MAX_BUFFER_SIZE) {
		memcpy(secretString, input, len);
	}
	else {
		memcpy(secretString, errorString, strlen(errorString));
	}
}

void enclaveLoadString(char * output, size_t len)
{
	if (len > strlen(secretString)) {
		memcpy(output, secretString, len);
	}
	else {
		memcpy(secretString, errorString, strlen(errorString));
	}
}

void enclaveSaveInt(int input) {
	secretInt = input;
}

int enclaveLoadInt() {
	return secretInt;
}

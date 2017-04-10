#include "TestApp.h"

int main(int argc, char* argv)
{
	sgx_enclave_id_t eid;
	sgx_launch_token_t token = { 0 };
	int updated = 0;

	// Create enclave "TestEnclave.signed.dll"
	sgx_status_t ret = sgx_create_enclave(ENCLAVE_FILE, SGX_DEBUG_FLAG, &token, &updated, &eid, NULL);

	if (ret != SGX_SUCCESS) {
		printf("Something went terribly wrong: %#x!\n", ret);
		return -1;
	}

	testLoadAndStoreString(eid);
	testLoadAndStoreInt(eid);

	// Destroy the enclave when all enclave calls finished
	if(sgx_destroy_enclave(eid) != SGX_SUCCESS)
	{
		return -1;
	}

	getchar();

	return 0;
}

void testLoadAndStoreString(const sgx_enclave_id_t eid)
{
	// Load string
	char buffer[MAX_BUF_LEN];
	enclaveLoadString(eid, buffer, MAX_BUF_LEN);
	printf("enclaveLoadString: %s\n", buffer);

	assert(strcmp(buffer, "Secret data") == 0);

	// Store string and load again
	char secret[MAX_BUF_LEN] = "another secret string";
	enclaveSaveString(eid, secret, strlen(secret) + 1);
	enclaveLoadString(eid, buffer, MAX_BUF_LEN);

	printf("enclaveSaveString: %s\n", secret);
	printf("enclaveLoadString: %s\n", buffer);

	assert(strcmp(secret, buffer) == 0);
}

void testLoadAndStoreInt(const sgx_enclave_id_t eid)
{
	//Load int
	int res;
	enclaveLoadInt(eid, &res);

	printf("enclaveLoadInt: %d\n", res);

	assert(res == 42);

	// Store int and load again
	int anotherInt = 7;
	enclaveSaveInt(eid, anotherInt);
	enclaveLoadInt(eid, &res);

	printf("enclaveSaveInt: %d\n", anotherInt);
	printf("enclaveLoadInt: %d\n", res);

	assert(res == anotherInt);
}

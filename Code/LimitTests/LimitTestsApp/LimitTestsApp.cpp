#include "stdafx.h"

#define HEAP_SIZE 65440 // 96 Bytes are on the (Simulator's) Heap initially

int main()
{
	// Initialize both enclaves
	sgx_launch_token_t token[2] = { { 0 }, { 0 } };
	int updated[2] = {0, 0};

	sgx_enclave_id_t eidExampleEncl = initializeEnclave(ENCLAVE_FILE_1, SGX_DEBUG_FLAG, &token[0], &updated[0]);
	sgx_enclave_id_t eidCompressionEncl = initializeEnclave(ENCLAVE_FILE_2, SGX_DEBUG_FLAG, &token[1], &updated[1]);
	
	// 1st: Allocate Heap Memory
	enclaveAllocateHeapMemory(eidExampleEncl, HEAP_SIZE);

	// 2nd: Allocate Stack Memory
	enclaveAllocateStackMemory(eidExampleEncl);

	// 3rd: Execute ECALL with wrong EID -> nothing happens
	enclaveAllocateHeapMemory(eidCompressionEncl, HEAP_SIZE);

	// 4th: Test Compression
	uint32_t value = 175000;
	uint8_t encoded[4] = {0};
	uint32_t decoded;
	size_t bytesEncoded;
	size_t bytesDecoded;

	vByteEncode(eidCompressionEncl, &bytesEncoded, &value, 1, encoded);
	cout << endl << "Encoded " << value << ": (" << bytesEncoded << " Byte(s)) " << "\t";

	for (int i = 0; i <= bytesEncoded / 4; i++) {
		int2Bin(((uint32_t*) encoded)[i], 32);
	}

	vByteDecode(eidCompressionEncl, &bytesDecoded, encoded, bytesEncoded, &decoded);
	
	cout << endl << "Decoded back to: " << "\t\t";
	int2Bin(decoded, 32);
	cout << endl;

	getchar();

    return 0;
}

void ocallLogProgress(const char *message, size_t len) {
	
	cout << message << endl;
}

sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int * updated)
{
	sgx_enclave_id_t eid;

	sgx_status_t ret = sgx_create_enclave(file, SGX_DEBUG_FLAG, token, updated, &eid, NULL);

	if (ret != SGX_SUCCESS) {
		cout << "Something went terribly wrong: " << ret << endl;
	}

	return eid;
}

void int2Bin(uint64_t n, int l) {

	for (int c = l - 1; c >= 0; c--) {
		uint32_t k = n >> c;
		if (k & 1)
			cout << "1";
		else
			cout << "0";
		if (c % 8 == 0) cout << " ";
	}
	cout << " ";

	return;
}
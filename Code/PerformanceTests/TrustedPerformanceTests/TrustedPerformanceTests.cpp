#include "stdafx.h"
#include "BenchmarkSuite.h"
#include "Functions.h"

sgx_enclave_id_t eid;

int main()
{
	sgx_device_status_t enableDevice;

	sgx_enable_device(&enableDevice);

	if (enableDevice != SGX_ENABLED) {
		std::cout << "Error! Intel SGX could not be enabled" << std::endl;
		getchar();
	}

	sgx_launch_token_t token = { 0 };
	int updated = 0;
	eid = initializeEnclave(ENCLAVE_FILE, SGX_DEBUG_FLAG, &token, &updated);
	
	BenchmarkSuite *b = new BenchmarkSuite('t');
	b->registerFunction(ecall(eid, enclaveIterate), BenchmarkSuite::IDENT, "iterate", 1);
	b->registerFunction(ecall(eid, enclaveVByteEncode, ((float) 5) / 4), [](size_t in) {return (in / 4) * 5; }, "compression", 4);
	//b->registerFunctionWithPreprocessing(ecallVByteDecode, [](size_t in) {return 4 * in; }, ecallVByteEncodePreproc, [](size_t in) {return (in / 4) * 5; }, "decompression", 1);
	b->registerFunction(ecall(eid, enclaveVByteEncodeEncrypted), [](size_t in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, "compression_enc", 4);
	b->registerFunction(ecall(eid, enclaveVByteDecodeEncrypted), [](size_t in) {return 4 * in + AES_BLOCK_SIZE; }, "decompression_enc", 1);
	b->registerFunction(ecall(eid, enclaveRunLengthEncode, 2), [](size_t in) {return 2 * in; }, "runlengthencode", 4);
	//b->registerFunctionWithPreprocessing(ecallRunLengthDecode, [](size_t in) {return 6 * in; }, ecallRunLengthEncodePreproc, [](size_t in) {return 2 * in; }, "runlengthdecode", 8);
	b->registerFunction(ecall(eid, enclaveRunLengthEncodeAndSum), [](size_t in) {return (size_t) 8; }, "rlesum", 4);

	b->start();

	return 0;
}

sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t* token, int * updated)
{
	sgx_enclave_id_t eid;

	sgx_status_t ret = sgx_create_enclave(file, debug, token, updated, &eid, NULL);

	if (ret != SGX_SUCCESS) {
		std::cout << "Something went terribly wrong: " << ret << std::endl;
	}
	else {
		std::cout << "Created enclave..." << std::endl;
	}

	return eid;
}
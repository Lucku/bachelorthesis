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
	b->registerFunction(ecallIterate, BenchmarkSuite::IDENT, "iterate", 1);
	b->registerFunction(ecallVByteEncode, [](size_t in) {return (in / 4) * 5; }, "compression", 4);
	b->registerFunctionWithPreprocessing(ecallVByteDecode, [](size_t in) {return 4 * in; }, ecallVByteEncodePreproc, [](size_t in) {return (in / 4) * 5; }, "decompression", 1);
	b->registerFunction(ecallVByteEncodeEncrypted, [](size_t in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, "compression_enc", 4);
	b->registerFunction(ecallVByteDecodeEncrypted, [](size_t in) {return 4 * in + AES_BLOCK_SIZE; }, "decompression_enc", 1);
	b->registerFunction(ecallRunLengthEncode, [](size_t in) {return 2 * in; }, "runlengthencode", 4);
	b->registerFunctionWithPreprocessing(ecallRunLengthDecode, [](size_t in) {return 6 * in; }, ecallRunLengthEncodePreproc, [](size_t in) {return 2 * in; }, "runlengthdecode", 8);
	b->registerFunction(ecallRunLengthEncodeAndSum, [](size_t in) {return (size_t) 8; }, "rlesum", 4);

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

size_t ecallIterate(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveIterate(eid, &ret, in, length, out);

	return ret;
}

size_t ecallVByteEncode(uint8_t *in, size_t length, uint8_t *out) {
	
	size_t ret;

	enclaveVByteEncode(eid, &ret, in, length, out, (length / sizeof(uint32_t)) * 5);

	return ret;
}

size_t ecallVByteEncodePreproc(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveVByteEncode(eid, &ret, in, length, out, length * 5);

	return ret;
}

size_t ecallVByteDecode(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveVByteDecode(eid, &ret, in, length, out, length * sizeof(uint32_t));

	return ret;
}

size_t ecallVByteEncodeEncrypted(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveVByteEncodeEncrypted(eid, &ret, in, length, out);

	return ret;
}

size_t ecallVByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	return enclaveVByteDecodeEncrypted(eid, &ret, in, length, out);

	return ret;
}

size_t ecallRunLengthEncode(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveRunLengthEncode(eid, &ret, in, length, out, length * 2);

	return ret;
}

size_t ecallRunLengthEncodePreproc(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveRunLengthEncode(eid, &ret, in, length, out, length * 2 * 6);

	return ret;
}

size_t ecallRunLengthDecode(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;
	
	enclaveRunLengthDecode(eid, &ret, in, length, out, length * 6);

	return ret;
}

size_t ecallRunLengthEncodeAndSum(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;
	
	enclaveRunLengthEncodeAndSum(eid, &ret, in, length, out);

	return ret;
}
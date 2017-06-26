#include "stdafx.h"
#include "BenchmarkSuite.h"
#include "Funs.h"
#include "Functions.h"

using namespace Funs;

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
	sgx_enclave_id_t eid = initializeEnclave(ENCLAVE_FILE, SGX_DEBUG_FLAG, &token, &updated);
	
	BenchmarkSuite *b = new BenchmarkSuite('t');
	b->registerFunction(ecall(eid, enclaveIterate), IDENT, "iterate", 1);
	b->registerFunction(ecall(eid, enclaveVByteEncode, DIVMULT(4, 5)), DIVMULT(4, 5), "compression", 4);
	b->registerFunctionWithPreprocessing(ecall(eid, enclaveVByteDecode, MULT(4)), MULT(4), ecall(eid, enclaveVByteEncode, MULT(5)), MULT(5), "decompression", 1);
	b->registerFunction(ecall(eid, enclaveVByteEncodeEncrypted), DIVMULTADD(4, 5, AES_BLOCK_SIZE), "compression_enc", 16);
	b->registerFunctionWithPreprocessing(ecall(eid, enclaveVByteDecodeEncrypted), MULT(4), ecall(eid, enclaveVByteEncodeEncryptedPreproc), MULTADD(5, AES_BLOCK_SIZE), "decompression_enc", 16);
	b->registerFunction(ecall(eid, enclaveRunLengthEncode, MULT(2)), MULT(2), "runlengthencode", 4);
	b->registerFunctionWithPreprocessing(ecall(eid, enclaveRunLengthDecode, MULT(6)), MULT(6), ecall(eid, enclaveRunLengthEncode, MULT(2)), MULT(2), "runlengthdecode", 8);
	b->registerFunction(ecall(eid, enclaveRunLengthEncodeAndSum), CONSTANT(8), "rlesum", 4);
	b->registerFunction(ecall(eid, enclaveJustCopy), IDENT, "just_copy", 1);
	b->registerFunction(ecall(eid, enclaveNoCopy), IDENT, "no_copy", 1);
	b->registerFunctionWithPreprocessing(ecall(eid, enclaveVByte, DIVMULT(4, 5)), DIVMULT(4, 5), ecall(eid, enclaveVByteEncode, MULT(5)), MULT(5), "vbyte", 4);
	b->registerFunctionWithPreprocessing(ecall(eid, enclaveCompleteProcess), MULTADD(8, AES_BLOCK_SIZE), ecall(eid, enclaveVByteEncodeEncryptedPreproc), MULTADD(5, AES_BLOCK_SIZE), "complete", 16);
	b->registerFunction(ecall(eid, enclaveCrypto, MULTADD(1, AES_BLOCK_SIZE)), MULTADD(1, AES_BLOCK_SIZE), "crypto", 16);
	b->registerFunction(ecall(eid, enclaveCryptoNoCopy), MULTADD(1, AES_BLOCK_SIZE), "crypto_no_copy", 16);
	
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
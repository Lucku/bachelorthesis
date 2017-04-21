#include "stdafx.h"
#include "BasicBenchmark.h"
#include "AESCBCCryptoEngine.h"

#define NUM_REPS 100
#define NUM_VALUES 50000

sgx_enclave_id_t eid;

int main()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

	sgx_launch_token_t token = { 0 };
	int updated = 0;
	eid = initializeEnclave(ENCLAVE_FILE, 0, &token, &updated);
	
	CryptoEngine *c = new AESCBCCryptoEngine();

	unsigned char input[32] = "This is a test encryption";
	unsigned char output[32] = "";
	unsigned char restored[32] = "";

	unsigned char key[256] = "";
	unsigned char iv[128] = "";

	c->generateParams(key, 16, iv);

	unsigned char iv2[128] = "";
	memcpy(iv2, iv, 128);

	c->encrypt(input, output, sizeof(input), key, 32, iv);
	c->decrypt(output, restored, sizeof(output), key, 32, iv2);

	c->printData("\nOriginal\t", input, 32);
	c->printData("\nEncrypted\t", output, 32);
	c->printData("\nDecrypted\t", restored, 32);

	/*
	Benchmark *bm1 = new BasicBenchmark("Iteration Benchmark untrusted", NUM_REPS);
	const char *file = "iterate_u.csv";
	bm1->benchmark(file, iterate, NUM_VALUES);

	Benchmark *bm2 = new BasicBenchmark("Compression Benchmark untrusted", NUM_REPS);
	const char * file2 = "compression_u.csv";
	bm2->benchmark(file2, vByteEncode, [](int in) { return in * 5; }, NUM_VALUES);
	
	Benchmark *bm3 = new BasicBenchmark("Decompression Benchmark untrusted", NUM_REPS);
	const char * file3 = "decompression_u.csv";
	bm3->benchmark(file3, vByteDecode, [](int in) { return in; }, NUM_VALUES);
	
	Benchmark *bm4 = new Benchmark("Iteration Benchmark trusted", NUM_REPS);
	const char *file4 = "iterate_t.csv";
	bm4->benchmark(file4, ecallIterate, NUM_VALUES);
	
	Benchmark *bm5 = new Benchmark("Compression Benchmark trusted", NUM_REPS);
	const char *file5 = "compression_t.csv";
	bm5->benchmark(file5, ecallVByteEncode, [](int in) { return 5 * in; }, NUM_VALUES);
	
	Benchmark *bm6 = new Benchmark("Decompression Benchmark trusted", NUM_REPS);
	const char *file6 = "decompression_t.csv";
	bm6->benchmark(file6, ecallVByteDecode, [](int in) { return in; }, NUM_VALUES);
	*/

	getchar();

    return 0;
}

sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int * updated)
{
	sgx_enclave_id_t eid;

	sgx_status_t ret = sgx_create_enclave(file, SGX_DEBUG_FLAG, token, updated, &eid, NULL);

	if (ret != SGX_SUCCESS) {
		std::cout << "Something went terribly wrong: " << ret << std::endl;
	}

	return eid;
}

int ecallIterate(uint64_t *data, size_t length) {

	int ret;

	enclaveIterate(eid, &ret, data, length);

	return ret;
}

int ecallVByteEncode(uint32_t *in, size_t length, uint8_t *out) {

	int ret;

	enclaveVByteEncode(eid, &ret, in, length, out, 5 * length);

	return ret;
}

int ecallVByteDecode(uint8_t *in, size_t length, uint32_t *out) {

	int ret;

	enclaveVByteDecode(eid, &ret, in, length, out, length);

	return ret;
}
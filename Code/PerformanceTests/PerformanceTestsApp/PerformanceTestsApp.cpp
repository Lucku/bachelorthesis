#include "stdafx.h"
#include "Benchmark.h"
#include "Functions.h"
#include "Windows.h"

#define NUM_REPS 1000
#define NUM_VALUES 50000

sgx_enclave_id_t eid;

int main()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

	sgx_launch_token_t token = { 0 };
	int updated = 0;
	eid = initializeEnclave(ENCLAVE_FILE, 0, &token, &updated);
	
	/*
	Benchmark *bm1 = new Benchmark("Iteration Benchmark untrusted", NUM_REPS);
	const char *file = "iterate_u.csv";
	bm1->benchmark(file, iterate, NUM_VALUES);

	Benchmark *bm2 = new Benchmark("Compression Benchmark untrusted", NUM_REPS);
	const char * file2 = "compression_u.csv";
	bm2->benchmark(file2, vByteEncode, [](int in) { return in * 5; }, NUM_VALUES);
	
	Benchmark *bm3 = new Benchmark("Decompression Benchmark untrusted", NUM_REPS);
	const char * file3 = "decompression_u.csv";
	bm3->benchmark(file3, vByteDecode, [](int in) { return in; }, NUM_VALUES);
	*/
	/*
	Benchmark *bm4 = new Benchmark("Iteration Benchmark trusted", NUM_REPS);
	const char *file4 = "iterate_t.csv";
	bm4->benchmark(file4, ecallIterate, NUM_VALUES);
	*/
	
	Benchmark *bm5 = new Benchmark("Compression Benchmark trusted", NUM_REPS);
	const char *file5 = "compression_t.csv";
	bm5->benchmark(file5, ecallVByteEncode, [](int in) { return 5 * NUM_VALUES; }, NUM_VALUES);

	/*
	Benchmark *bm6 = new Benchmark("Decompression Benchmark trusted", NUM_REPS);
	const char * file6 = "decompression_t.csv";
	bm4->benchmark(file6, ecallVByteDecode,  [](int in) { return NUM_VALUES; }, NUM_VALUES);
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

void ecallIterate(uint64_t *data, size_t length) {
	enclaveIterate(eid, data, length);
}

void ecallVByteEncode(uint32_t *in, size_t length, uint8_t *out) {
	enclaveVByteEncode(eid, in, length, out, 5 * NUM_VALUES);
}

void ecallVByteDecode(uint8_t *in, size_t length, uint32_t *out) {
	enclaveVByteDecode(eid, in, length, out, NUM_VALUES);
}
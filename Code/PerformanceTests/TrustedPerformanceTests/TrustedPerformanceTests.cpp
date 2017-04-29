#include "stdafx.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"

#define NUM_REPS 50
#define NUM_VALUES 10000

sgx_enclave_id_t eid;

int main()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

	sgx_launch_token_t token = { 0 };
	int updated = 0;
	eid = initializeEnclave(ENCLAVE_FILE, 0, &token, &updated);

	/*
	Benchmark *bulk1 = new BulkBenchmark("Iteration Benchmark trusted bulk", NUM_REPS, 10000, Benchmark::MeasurementMode::TIME);
	bulk1->benchmark("iterate_t_b.csv", ecallIterate, NUM_VALUES);

	Benchmark *basic1 = new BasicBenchmark("Iteration Benchmark trusted single", NUM_REPS, 10000, Benchmark::MeasurementMode::TIME);
	basic1->benchmark("iterate_t_s.csv", ecallIterate, NUM_VALUES);

	Benchmark *bulk2 = new BulkBenchmark("Compression Benchmark trusted bulk", NUM_REPS);
	bulk2->benchmark("compression_t_b.csv", ecallVByteEncode, [](int in) { return 5 * in; }, NUM_VALUES);

	Benchmark *basic2 = new BasicBenchmark("Compression Benchmark trusted single", NUM_REPS);
	basic2->benchmark("compression_t_s.csv", ecallVByteEncode, [](int in) { return 5 * in; }, NUM_VALUES);
	
	Benchmark *bulk3 = new BulkBenchmark("Decompression Benchmark trusted bulk", NUM_REPS);
	bulk3->benchmark("decompression_t_b.csv", ecallVByteDecode, [](int in) { return in; }, NUM_VALUES);

	Benchmark *basic4 = new BasicBenchmark("Decompression Benchmark trusted single", NUM_REPS);
	basic4->benchmark("decompression_t_s.csv", ecallVByteDecode, [](int in) { return in; }, NUM_VALUES);
	*/

	// TODO see if memory is sufficient in real (non-debug) environment (or if delete still doesn't delete)
	//Benchmark *bulk5 = new BulkBenchmark("Compression Benchmark encrypted trusted bulk", 40);
	//bulk5->benchmark("compression_enc_t_b.csv", ecallVByteEncodeEncrypted, [](int in) { return 5 * in + AES_BLOCK_SIZE; }, NUM_VALUES);

	Benchmark *bulk6 = new BulkBenchmark("Decompression Benchmark encrypted trusted bulk", 40);
	bulk6->benchmark("decompression_enc_t_b.csv", ecallVByteDecodeEncrypted, [](int in) {return in + AES_BLOCK_SIZE / 4; }, NUM_VALUES);

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
	
	enclaveVByteEncode(eid, in, length, out, length * 5);
}

void ecallVByteDecode(uint8_t *in, size_t length, uint32_t *out) {

	enclaveVByteDecode(eid, in, length, out, length);
}

void ecallVByteEncodeEncrypted(uint32_t *in, size_t length, uint8_t *out) {

	enclaveVByteEncodeEncrypted(eid, in, length, out, length * 5 + AES_BLOCK_SIZE);
}

void ecallVByteDecodeEncrypted(uint8_t *in, size_t length, uint32_t *out) {

	enclaveVByteDecodeEncrypted(eid, in, length, out, length + AES_BLOCK_SIZE / 4);
}
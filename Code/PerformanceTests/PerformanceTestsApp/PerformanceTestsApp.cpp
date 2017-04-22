#include "stdafx.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"
#include "AESCBCCryptoSystem.h"

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
	CryptoSystem *c = new AESCBCCryptoSystem();

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

	*/
	
	Benchmark *bulk1 = new BulkBenchmark("Iteration Benchmark untrusted bulk", NUM_REPS, 10000, Benchmark::MeasurementMode::TIME);
	bulk1->benchmark("iterate_u_b.csv", iterate, NUM_VALUES);
	
	Benchmark *basic1 = new BasicBenchmark("Iteration Benchmark untrusted single", NUM_REPS, 10000, Benchmark::MeasurementMode::TIME);
	basic1->benchmark("iterate_u_s.csv", iterate, NUM_VALUES);

	Benchmark *bulk2 = new BulkBenchmark("Compression Benchmark untrusted bulk", NUM_REPS);
	bulk2->benchmark("compression_u_b.csv", vByteEncode, [](int in) { return in * 5; }, NUM_VALUES);

	Benchmark *basic2 = new BasicBenchmark("Compression Benchmark untrusted single", NUM_REPS);
	basic2->benchmark("compression_u_s.csv", vByteEncode, [](int in) { return in * 5; }, NUM_VALUES);
	
	Benchmark *bulk3 = new BulkBenchmark("Decompression Benchmark untrusted bulk", NUM_REPS);
	bulk3->benchmark("decompression_u_b.csv", vByteDecode, [](int in) { return in; }, NUM_VALUES);
	
	Benchmark *basic3 = new BasicBenchmark("Decompression Benchmark untrusted single", NUM_REPS);
	basic3->benchmark("decompression_u_s.csv", vByteDecode, [](int in) { return in; }, NUM_VALUES);
	
	Benchmark *bulk4 = new BulkBenchmark("Iteration Benchmark trusted bulk", NUM_REPS, 10000, Benchmark::MeasurementMode::TIME);
	bulk4->benchmark("iterate_t_b.csv", ecallIterate, NUM_VALUES);

	Benchmark *basic4 = new BasicBenchmark("Iteration Benchmark trusted single", NUM_REPS, 10000, Benchmark::MeasurementMode::TIME);
	basic4->benchmark("iterate_t_s.csv", ecallIterate, NUM_VALUES);

	Benchmark *bulk5 = new BulkBenchmark("Compression Benchmark trusted bulk", NUM_REPS);
	bulk5->benchmark("compression_t_b.csv", ecallVByteEncode, [](int in) { return 5 * in; }, NUM_VALUES);

	Benchmark *basic5 = new BasicBenchmark("Compression Benchmark trusted single", NUM_REPS);
	basic5->benchmark("compression_t_s.csv", ecallVByteEncode, [](int in) { return 5 * in; }, NUM_VALUES);
	
	Benchmark *bulk6 = new BulkBenchmark("Decompression Benchmark trusted bulk", NUM_REPS);
	bulk6->benchmark("decompression_t_b.csv", ecallVByteDecode, [](int in) { return in; }, NUM_VALUES);

	Benchmark *basic6 = new BasicBenchmark("Decompression Benchmark trusted single", NUM_REPS);
	basic6->benchmark("decompression_t_s.csv", ecallVByteDecode, [](int in) { return in; }, NUM_VALUES);
	
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
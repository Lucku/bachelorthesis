#include "stdafx.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"

#define NUM_REPS 40
#define NUM_VALUES 10000

sgx_enclave_id_t eid;

int main()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

	sgx_launch_token_t token = { 0 };
	int updated = 0;
	eid = initializeEnclave(ENCLAVE_FILE, 0, &token, &updated);

	Benchmark *b;

	std::cout << "Choose benchmark method:\n(1) Bulk data processing\n(2) Single data processing\n[default: 1]" << std::endl;
	int method;
	std::cin >> method;

	std::cout << "Choose benchmark unit:\n(1) Time\n(2) IOPS\n(3) MIOPS\n[default: 2]" << std::endl;
	int unit;
	std::cin >> unit;

	Benchmark::MeasurementMode mode = Benchmark::MeasurementMode::IOPS;

	switch (unit) {
	case 1: mode = Benchmark::MeasurementMode::TIME; break;
	case 3: mode = Benchmark::MeasurementMode::MIOPS;
	}

	if (method == 2) b = new BasicBenchmark("", NUM_REPS, NUM_VALUES, mode);
	else b = new BulkBenchmark("", NUM_REPS, NUM_VALUES, mode);

	std::string options[5] = { "iterate", "compress", "decompress", "compress encrypted", "decompress encrypted" };

	std::cout << "Choose function to test\n(1) " << options[0]
		<< "\n(2) " << options[1]
		<< "\n(3) " << options[2]
		<< "\n(4) " << options[3]
		<< "\n(5) " << options[4] << "\n[default: 2]" << std::endl;

	int func;
	std::cin >> func;

	switch (func) {
	case 1: b->benchmark("iterate_t.csv", ecallIterate, NUM_VALUES); break;
	case 3: b->benchmark("decompress_t.csv", ecallVByteDecode, [](int in) {return in; }, NUM_VALUES); break;
	case 4: b->benchmark("compress_enc_t.csv", ecallVByteEncodeEncrypted, [](int in) {return 5 * in + AES_BLOCK_SIZE; }, NUM_VALUES); break;
	case 5: b->benchmark("decompress_enc_t.csv", ecallVByteDecodeEncrypted, [](int in) {return in + AES_BLOCK_SIZE / 4; }, NUM_VALUES); break;
	default: b->benchmark("compress_t.csv", ecallVByteEncode, [](int in) {return in * 5; }, NUM_VALUES);
	}

	std::cout << "Done" << std::endl;

	system("pause");

	return 0;
}

sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int * updated)
{
	sgx_enclave_id_t eid;

	sgx_status_t ret = sgx_create_enclave(file, SGX_DEBUG_FLAG, token, updated, &eid, NULL);

	if (ret != SGX_SUCCESS) {
		std::cout << "Something went terribly wrong: " << ret << std::endl;
	}
	else {
		std::cout << "Created enclave..." << std::endl;
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
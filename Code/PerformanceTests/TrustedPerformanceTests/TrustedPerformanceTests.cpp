#include "stdafx.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"
#include "Functions.h"

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

	if (method == 2) b = new BasicBenchmark("", DEFAULT_NUM_REPS, mode);
	else b = new BulkBenchmark("", DEFAULT_NUM_REPS, mode);

	std::string options[7] = { "iterate",
		"compress",
		"decompress",
		"compress encrypted",
		"decompress encrypted",
		"run length encode",
		"RLE aggregation" };

	std::cout << "Choose function to test:\n(1) " << options[0]
		<< "\n(2) " << options[1]
		<< "\n(3) " << options[2]
		<< "\n(4) " << options[3]
		<< "\n(5) " << options[4]
		<< "\n(6) " << options[5]
		<< "\n(7) " << options[6]
		<< "\n[default: 2]" << std::endl;

	int func;
	std::cin >> func;

	const char *filename;

	switch (func) {
	case 1: filename = "iterate_t.csv";
		b->benchmark(filename, ecallIterate); break;
	case 3: filename = "decompress_t.csv";
		b->benchmark(filename, ecallVByteDecode, [](int in) {return 4 * in; }, DEFAULT_BM_SMALL); break;
	case 4: filename = "compress_enc_t.csv";
		b->benchmark(filename, ecallVByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t)); break;
	case 5: filename = "decompress_enc_t.csv";
		b->benchmark(filename, ecallVByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, DEFAULT_BM_SMALL); break;
	case 6: filename = "runlengthencode_t.csv";
		b->benchmark(filename, ecallRunLengthEncode, [](int in) {return 2 * in; }, DEFAULT_BM_BIG, sizeof(uint32_t)); break;
	case 7: filename = "rlesum_t.csv";
		b->benchmark(filename, ecallRunLengthEncodeAndSum, [](int in) {return 8; }, DEFAULT_BM_BIG, sizeof(uint32_t)); break;
	default: filename = "compress_u.csv";
		b->benchmark(filename, ecallVByteEncode, [](int in) {return (in / 4) * 5; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));
	}

	std::cout << "Done" << std::endl;
	std::cout << "Results saved to " << filename << std::endl;

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

size_t ecallIterate(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveIterate(eid, &ret, in, length, out);

	return ret;
}

size_t ecallVByteEncode(uint8_t *in, size_t length, uint8_t *out) {
	
	size_t ret;

	return enclaveVByteEncode(eid, &ret, in, length, out, (length / sizeof(uint32_t)) * 5);

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

size_t ecallRunLengthDecode(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;
	
	enclaveRunLengthDecode(eid, &ret, in, length, out, length);

	return ret;
}

size_t ecallRunLengthEncodeAndSum(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;
	
	enclaveRunLengthEncodeAndSum(eid, &ret, in, length, out);

	return ret;
}
#include "stdafx.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"
#include "Functions.h"

sgx_enclave_id_t eid;

int main()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

	sgx_device_status_t enableDevice;

	sgx_enable_device(&enableDevice);

	if (enableDevice != SGX_ENABLED) {
		std::cout << "Error! Intel SGX could not be enabled" << std::endl;
		getchar();
	}

	sgx_launch_token_t token = { 0 };
	int updated = 0;
	eid = initializeEnclave(ENCLAVE_FILE, SGX_DEBUG_FLAG, &token, &updated);

	Benchmark *b;

	std::cout << "Choose benchmark method:\n(1) Bulk data processing\n(2) Single data processing\n(3) All benchmarks\n(4) Only bulk benchmarks\n(5) Only basic benchmarks\n[default: 1]" << std::endl;
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
	else if (method == 1) b = new BulkBenchmark("", DEFAULT_NUM_REPS, mode);

	else {
		const char *filename;

		if (method == 3 || method == 4) {
			b = new BulkBenchmark("", DEFAULT_NUM_REPS, mode);
			filename = "iterate_t_b.csv";
			b->benchmark(filename, ecallIterate);
			filename = "decompress_t_b.csv";
			b->benchmark(filename, ecallVByteDecode, [](int in) {return 4 * in; }, DEFAULT_BM_SMALL);
			filename = "compress_enc_t_b.csv";
			b->benchmark(filename, ecallVByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));
			filename = "decompress_enc_t_b.csv";
			b->benchmark(filename, ecallVByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, DEFAULT_BM_SMALL);
			filename = "runlengthencode_t_b.csv";
			b->benchmark(filename, ecallRunLengthEncode, [](int in) {return 2 * in; }, DEFAULT_BM_BIG, sizeof(uint32_t));
			filename = "rlesum_t_b.csv";
			b->benchmark(filename, ecallRunLengthEncodeAndSum, [](int in) {return 8; }, DEFAULT_BM_BIG, sizeof(uint32_t));
			filename = "compress_t_b.csv";
			b->benchmark(filename, ecallVByteEncode, [](int in) {return (in / 4) * 5; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));

			if (method == 4) {
				getchar();
				return 0;
			}
		}

		b = new BasicBenchmark("", SINGLE_REP, mode);
		filename = "iterate_t_s.csv";
		b->benchmark(filename, ecallIterate);
		filename = "decompress_t_s.csv";
		b->benchmark(filename, ecallVByteDecode, [](int in) {return 4 * in; }, DEFAULT_BM_SMALL);
		filename = "compress_enc_t_s.csv";
		b->benchmark(filename, ecallVByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));
		filename = "decompress_enc_t_s.csv";
		b->benchmark(filename, ecallVByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, DEFAULT_BM_SMALL);
		filename = "runlengthencode_t_s.csv";
		b->benchmark(filename, ecallRunLengthEncode, [](int in) {return 2 * in; }, DEFAULT_BM_BIG, sizeof(uint32_t));
		filename = "compress_t_s.csv";
		b->benchmark(filename, ecallVByteEncode, [](int in) {return (in / 4) * 5; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));

		getchar();

		return 0;
	}

	std::string options[8] = { "iterate",
		"compress",
		"decompress",
		"compress encrypted",
		"decompress encrypted",
		"run length encode",
		"RLE aggregation",
		"run length decode" };

	std::cout << "Choose function to test:\n(1) " << options[0]
		<< "\n(2) " << options[1]
		<< "\n(3) " << options[2]
		<< "\n(4) " << options[3]
		<< "\n(5) " << options[4]
		<< "\n(6) " << options[5]
		<< "\n(7) " << options[6]
		<< "\n(8) " << options[7]
		<< "\n[default: 2]" << std::endl;

	int func;
	std::cin >> func;

	const char *filename;

	switch (func) {
	case 1: filename = "iterate_t.csv";
		b->benchmark(filename, ecallIterate); break;
	case 3: filename = "decompress_t.csv";
		b->benchmark(filename, ecallVByteDecode, [](int in) {return 4 * in; }, DEFAULT_BM_MEDIUM, 1, ecallVByteEncodePreproc, [](int in) {return (in / 4) * 5; }); break;
	case 4: filename = "compress_enc_t.csv";
		b->benchmark(filename, ecallVByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t)); break;
	case 5: filename = "decompress_enc_t.csv";
		b->benchmark(filename, ecallVByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, DEFAULT_BM_SMALL); break;
	case 6: filename = "runlengthencode_t.csv";
		b->benchmark(filename, ecallRunLengthEncode, [](int in) {return 2 * in; }, DEFAULT_BM_BIG, sizeof(uint32_t)); break;
	case 7: filename = "rlesum_t.csv";
		b->benchmark(filename, ecallRunLengthEncodeAndSum, [](int in) {return 8; }, DEFAULT_BM_BIG, sizeof(uint32_t)); break;
	case 8: filename = "runlengthdecode_u.csv";
		b->benchmark(filename, ecallRunLengthDecode, [](int in) {return 6 * in; }, DEFAULT_BM_BIG, 2 * sizeof(uint32_t), ecallRunLengthEncodePreproc, [](int in) {return 2 * in; }); break;
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
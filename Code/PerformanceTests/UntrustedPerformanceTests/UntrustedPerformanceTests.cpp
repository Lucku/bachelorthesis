#include "stdafx.h"
#include "Functions.h"
#include "VByte.h"
#include "RLESum.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"

/* Performance Tests without using an Intel SGX enclave */
int main()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

	Benchmark *b;

	std::cout << "Choose benchmark method:\n(1) Bulk data processing\n(2) Single data processing\n(3) All benchmarks [default: 1]" << std::endl;
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
	else if(method == 1) b = new BulkBenchmark("", DEFAULT_NUM_REPS, mode);

	else {
		const char *filename;

		b = new BasicBenchmark("", DEFAULT_NUM_REPS, mode);
		
		filename = "iterate_u_s.csv";
		b->benchmark(filename, iterate);
		filename = "decompress_u_s.csv";
		b->benchmark(filename, vByteDecode, [](int in) {return 4 * in; }, DEFAULT_BM_SMALL);
		filename = "compress_enc_u_s.csv";
		b->benchmark(filename, vByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));
		filename = "decompress_enc_u_s.csv";
		b->benchmark(filename, vByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, DEFAULT_BM_SMALL);
		filename = "runlengthencode_u_s.csv";
		b->benchmark(filename, runLengthEncode, [](int in) {return 2 * in; }, DEFAULT_BM_BIG, sizeof(uint32_t));
		filename = "compress_u_s.csv";
		b->benchmark(filename, vByteEncode, [](int in) {return (in / 4) * 5; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));

		b = new BulkBenchmark("", DEFAULT_NUM_REPS, mode);
		filename = "iterate_u_b.csv";
		b->benchmark(filename, iterate);
		filename = "decompress_u_b.csv";
		b->benchmark(filename, vByteDecode, [](int in) {return 4 * in; }, DEFAULT_BM_SMALL);
		filename = "compress_enc_u_b.csv";
		b->benchmark(filename, vByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));
		filename = "decompress_enc_u_b.csv";
		b->benchmark(filename, vByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, DEFAULT_BM_SMALL);
		filename = "runlengthencode_u_b.csv";
		b->benchmark(filename, runLengthEncode, [](int in) {return 2 * in; }, DEFAULT_BM_BIG, sizeof(uint32_t));
		filename = "rlesum_u_b.csv";
		b->benchmark(filename, runLengthEncodeAndSum, [](int in) {return 8; }, DEFAULT_BM_BIG, sizeof(uint32_t));
		filename = "compress_u_b.csv";
		b->benchmark(filename, vByteEncode, [](int in) {return (in / 4) * 5; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));

		return 0;
	}

	std::string options[8] = { "iterate", 
		"compress", 
		"decompress", 
		"compress encrypted", 
		"decompress encrypted",
		"run length encode",
		"RLE aggregation",
		"All benchmarks" };

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
	case 1: filename = "iterate_u.csv";
		b->benchmark(filename, iterate); break;
	case 3: filename = "decompress_u.csv";
		b->benchmark(filename, vByteDecode, [](int in) {return 4 * in; }, DEFAULT_BM_SMALL); break;
	case 4: filename = "compress_enc_u.csv";
		b->benchmark(filename, vByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t)); break;
	case 5: filename = "decompress_enc_u.csv";
		b->benchmark(filename, vByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, DEFAULT_BM_SMALL); break;
	case 6: filename = "runlengthencode_u.csv";
		b->benchmark(filename, runLengthEncode, [](int in) {return 2 * in; }, DEFAULT_BM_BIG, sizeof(uint32_t)); break;
	case 7: filename = "rlesum_u.csv";
		b->benchmark(filename, runLengthEncodeAndSum, [](int in) {return 8; }, DEFAULT_BM_BIG, sizeof(uint32_t)); break;
	default: filename = "compress_u.csv";
		b->benchmark(filename, vByteEncode, [](int in) {return (in / 4) * 5; }, DEFAULT_BM_MEDIUM, sizeof(uint32_t));
	}

	std::cout << "Done" << std::endl;
	std::cout << "Results saved to " << filename << std::endl;

	system("pause");

    return 0;
}


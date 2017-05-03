#include "stdafx.h"
#include "Functions.h"
#include "VByte.h"
#include "RunLengthEncoding.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"

#define NUM_REPS 40
#define NUM_VALUES 40000

/* Performance Tests without using an Intel SGX enclave */
int main()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

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

	if (method == 2) b = new BasicBenchmark("", NUM_REPS, mode);
	else b = new BulkBenchmark("", NUM_REPS, mode);

	std::string options[7] = { "iterate", 
		"compress", 
		"decompress", 
		"compress encrypted", 
		"decompress encrypted",
		"run length encode",
		"run length decode" };

	std::cout << "Choose function to test\n(1) " << options[0] 
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
		b->benchmark(filename, iterate, [](int in) {return in; }, NUM_VALUES); break;
	case 3: filename = "decompress_u.csv";
		b->benchmark(filename, vByteDecode, [](int in) {return 4 * in; }, NUM_VALUES); break;
	case 4: filename = "compress_enc_u.csv";
		b->benchmark(filename, vByteEncodeEncrypted, [](int in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, NUM_VALUES, 4); break;
	case 5: filename = "decompress_enc_u.csv";
		b->benchmark(filename, vByteDecodeEncrypted, [](int in) {return 4 * in + AES_BLOCK_SIZE; }, NUM_VALUES); break;
	case 6: filename = "runlengthencode_u.csv";
		b->benchmark(filename, runLengthEncode, [](int in) {return 2 * in; }, NUM_VALUES, 4); break;
	case 7: //filename = "runlengthdecode_u.csv";
		//b->benchmark(filename, runLengthDecode, [](int in) {return 2 * in; }, NUM_VALUES, 4); break;
		std::cout << "Run length decode doesn't work standalone, as it needs run length encoded input data" << std::endl; break;
	default: filename = "compress_u.csv";
		b->benchmark(filename, vByteEncode, [](int in) {return (in / 4) * 5; }, NUM_VALUES, 4);
	}

	std::cout << "Done" << std::endl;
	std::cout << "Results saved to " << filename << std::endl;

	system("pause");

    return 0;
}


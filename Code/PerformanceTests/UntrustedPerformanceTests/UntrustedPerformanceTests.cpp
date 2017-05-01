#include "stdafx.h"
#include "Functions.h"
#include "BasicBenchmark.h"
#include "BulkBenchmark.h"

#define NUM_REPS 40
#define NUM_VALUES 10000

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
	case 1: b->benchmark("iterate_u.csv", iterate, NUM_VALUES); break;
	case 3: b->benchmark("decompress_u.csv", vByteDecode, [](int in) {return in; }, NUM_VALUES); break;
	case 4: b->benchmark("compress_enc_u.csv", vByteEncodeEncrypted, [](int in) {return 5 * in + AES_BLOCK_SIZE; }, NUM_VALUES); break;
	case 5: b->benchmark("decompress_enc_u.csv", vByteDecodeEncrypted, [](int in) {return in + AES_BLOCK_SIZE / 4; }, NUM_VALUES); break;
	default: b->benchmark("compress_u.csv", vByteEncode, [](int in) {return in * 5; }, NUM_VALUES);
	}

	std::cout << "Done" << std::endl;

	system("pause");

    return 0;
}


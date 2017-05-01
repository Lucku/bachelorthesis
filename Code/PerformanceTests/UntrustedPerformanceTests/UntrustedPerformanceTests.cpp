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

	//Benchmark *bulkCompress = new BulkBenchmark("Compression Benchmark untrusted bulk", NUM_REPS);
	//bulkCompress->benchmark("compression_u_b_new.csv", vByteEncode, [](int in) {return 5 * in}, NUM_VALUES);

	Benchmark *bulkEnc1 = new BulkBenchmark("Compression Benchmark encrypted untrusted bulk", NUM_REPS);
	bulkEnc1->benchmark("compression_enc_u_b.csv", vByteEncodeEncrypted, [](int in) { return 5 * in + AES_BLOCK_SIZE; }, NUM_VALUES);

	//Benchmark *bulkEnc2 = new BulkBenchmark("Decompression Benchmark encrypted untrusted bulk", NUM_REPS);
	//bulkEnc2->benchmark("decompression_enc_u_b.csv", vByteDecodeEncrypted, [](int in) { return in + AES_BLOCK_SIZE / 4; }, NUM_VALUES);

	getchar();

    return 0;
}


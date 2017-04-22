#include "stdafx.h"
#include "Benchmark.h"

class BulkBenchmark : public Benchmark {

	using Benchmark::Benchmark;

protected:
	BMResult singleBenchmark(int(*f) (uint64_t *data, size_t length), uint64_t *data, size_t length);
	BMResult singleBenchmark(int(*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out);
	BMResult singleBenchmark(int(*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out);
};
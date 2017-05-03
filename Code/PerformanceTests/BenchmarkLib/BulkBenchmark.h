#include "stdafx.h"
#include "Benchmark.h"

class BulkBenchmark : public Benchmark {

	using Benchmark::Benchmark;

protected:
	uint64_t singleBenchmark(size_t(*f) (uint8_t *in, size_t length, uint8_t *out), uint8_t *in, size_t length, uint8_t *out);
};
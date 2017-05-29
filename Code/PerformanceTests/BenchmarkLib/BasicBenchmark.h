#include "stdafx.h"
#include "Benchmark.h"

class BasicBenchmark : public Benchmark {

	using Benchmark::Benchmark;

protected:
	uint64_t singleBenchmark(bytefunc f, uint8_t *in, size_t length, uint8_t *out);
};
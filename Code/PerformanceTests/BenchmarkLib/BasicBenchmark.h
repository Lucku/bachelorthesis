#include "stdafx.h"
#include "Benchmark.h"
#include "Timer.h"

class BasicBenchmark : public Benchmark {

	using Benchmark::Benchmark;

protected:
	uint64_t singleBenchmark(void(*f) (uint64_t *data, size_t length), uint64_t *data, size_t length);
	uint64_t singleBenchmark(void(*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out);
	uint64_t singleBenchmark(void(*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out);
};
#include "stdafx.h"
#include "Benchmark.h"

class CryptoBenchmark : public Benchmark {

	using Benchmark::Benchmark;

public:
	void benchmark(const char *file, int(*f) (uint64_t *data, size_t length), int testRange);
	void benchmark(const char *file, int(*f) (uint32_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange);
	void benchmark(const char *file, int(*f) (uint8_t *in, size_t length, uint32_t *out), int(*sizefunc) (int inSize), int testRange);
};
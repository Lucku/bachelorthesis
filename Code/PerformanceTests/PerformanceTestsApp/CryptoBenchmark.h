#include "stdafx.h"
#include "Benchmark.h"

class CryptoBenchmark : public Benchmark {

	using Benchmark::Benchmark;

protected:
	void preprocessData(uint64_t *data, int length);
	void preprocessData(uint32_t *data, int length);
	void preprocessData(uint8_t *data, int length);
};
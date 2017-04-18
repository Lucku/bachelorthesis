#include "stdafx.h"
#include "Timer.h"

class Benchmark {

public:
	Benchmark(std::string name, int numRepetitions, int numValues);
	Benchmark(std::string name, int numRepetitions);
	Benchmark(std::string name);
	Benchmark();
	~Benchmark();
	BM_RESULT singleBenchmark(int (*f) (uint64_t *data, size_t length), uint64_t *data, size_t length);
	BM_RESULT singleBenchmark(int (*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out);
	BM_RESULT singleBenchmark(int (*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out);
	void benchmark(const char *file, int (*f) (uint64_t *data, size_t length), int testRange);
	void benchmark(const char *file, int (*f) (uint32_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange);
	void benchmark(const char *file, int (*f) (uint8_t *in, size_t length, uint32_t *out), int(*sizefunc) (int inSize), int testRange);

protected:
	int numRepetitions;
	int TEST_SIZE = 1000;
	int numValues;
	Timer *timer;
	std::string name;

	void initializeRandomData(uint8_t *in, size_t length);
	void initializeRandomData(uint16_t *in, size_t length);
	void initializeRandomData(uint32_t *in, size_t length);
	void initializeRandomData(uint64_t *in, size_t length);
};
#include "stdafx.h"
#include "Timer.h"

class Benchmark {

public:
	Benchmark(std::string name, int numRepetitions);
	Benchmark(std::string name);
	Benchmark();
	~Benchmark();
	BM_RESULT singleBenchmark(void (*f) (int testSize), int testSize);
	BM_RESULT singleBenchmark(void (*f) (uint64_t *data, size_t length), uint64_t *data, size_t length);
	void benchmark(const char *file, void (*f) (int testSize), int testRange);
	void benchmark(const char *file, void(*f) (uint64_t *data, size_t length), int testRange);

protected:
	int numRepetitions;
	int TEST_SIZE = 1000;
	Timer *timer;
	std::string name;
};
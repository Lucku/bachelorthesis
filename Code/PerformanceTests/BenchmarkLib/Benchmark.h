#pragma once
#include "stdafx.h"
#include "Timer.h"

#define DEFAULT_BM_SMALL 10000
#define DEFAULT_BM_MEDIUM 40000
#define DEFAULT_BM_BIG 100000
#define DEFAULT_NUM_REPS 40
#define DEFAULT_NUM_REPS_PREC 1000

class Benchmark {

public:
	enum MeasurementMode { IOPS, MIOPS, TIME } mode;
	explicit Benchmark(std::string name, int numRepetitions, MeasurementMode mode);
	explicit Benchmark(std::string name, int numRepetitions);
	explicit Benchmark(std::string name);
	explicit Benchmark();
	void benchmark(const char *file, 
		size_t(*f) (uint8_t *in, size_t length, uint8_t *out), 
		int(*sizefunc) (int inSize) = [](int in) {return in; }, 
		int testRange = DEFAULT_BM_MEDIUM, 
		int stepSize = 1);

protected:
	int numRepetitions;
	Timer timer;
	std::string name;

	virtual uint64_t singleBenchmark(size_t(*f) (uint8_t *in, size_t length, uint8_t *out), uint8_t *in, size_t length, uint8_t *out) = 0;

	virtual void initializeRandomData(uint8_t *in, size_t length);
};
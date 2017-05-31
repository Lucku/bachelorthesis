#pragma once
#include "stdafx.h"
#include "Timer.h"

#define DEFAULT_BM_SMALL 10000
#define DEFAULT_BM_MEDIUM 40000
#define DEFAULT_BM_BIG 100000
#define DEFAULT_NUM_REPS 200
#define DEFAULT_NUM_REPS_PREC 1000
#define SINGLE_REP 1

typedef std::function<size_t(uint8_t*, size_t, uint8_t*)> bytefunc;
typedef size_t(*sizefunc) (size_t inSize);

class Benchmark {

public:

	enum MeasurementMode { IOPS, MIOPS, TIME } mode;
	explicit Benchmark(std::string name, int numRepetitions, MeasurementMode mode);
	explicit Benchmark(std::string name, int numRepetitions);
	explicit Benchmark(std::string name);
	explicit Benchmark();
	void benchmark(const char *file,
		bytefunc f,
		sizefunc s = [](size_t in) {return in; },
		int testRange = DEFAULT_BM_MEDIUM,
		int stepSize = 1,
		bytefunc preproc = nullptr,
		sizefunc preprocS = [](size_t in) {return in; });

	void setNumRepetitions(int numRepetitions);
	void setMode(MeasurementMode mode);
	std::string getName();
	void setName(std::string name);

protected:

	int numRepetitions;
	Timer timer;
	std::string name;

	virtual uint64_t singleBenchmark(bytefunc f, uint8_t *in, size_t length, uint8_t *out) = 0;

	virtual void initializeRandomData(uint8_t *in, size_t length);
};
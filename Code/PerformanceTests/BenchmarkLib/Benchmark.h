#pragma once
#include "stdafx.h"
#include "Timer.h"

class Benchmark {

public:
	enum MeasurementMode { IOPS, MIOPS, TIME } mode;
	Benchmark(std::string name, int numRepetitions, MeasurementMode mode);
	Benchmark(std::string name, int numRepetitions);
	Benchmark(std::string name);
	Benchmark();
	~Benchmark();
	void benchmark(const char *file, size_t(*f) (uint8_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange, int stepSize = 1);

protected:
	int numRepetitions;
	Timer *timer;
	std::string name;

	virtual uint64_t singleBenchmark(size_t(*f) (uint8_t *in, size_t length, uint8_t *out), uint8_t *in, size_t length, uint8_t *out) = 0;

	virtual void initializeRandomData(uint8_t *in, size_t length);
};
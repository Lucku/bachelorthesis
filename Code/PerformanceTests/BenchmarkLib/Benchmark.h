#pragma once
#include "stdafx.h"
#include "Timer.h"

class Benchmark {

public:
	enum MeasurementMode { IOPS, MIOPS, TIME } mode;
	Benchmark(std::string name, int numRepetitions, int numValues, MeasurementMode mode);
	Benchmark(std::string name, int numRepetitions, int numValues);
	Benchmark(std::string name, int numRepetitions);
	Benchmark(std::string name);
	Benchmark();
	~Benchmark();
	void benchmark(const char *file, void(*f) (uint64_t *data, size_t length), int testRange);
	void benchmark(const char *file, void(*f) (uint32_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange);
	void benchmark(const char *file, void(*f) (uint8_t *in, size_t length, uint32_t *out), int(*sizefunc) (int inSize), int testRange);

protected:

	int numRepetitions;
	int TEST_SIZE = 1000;
	int numValues;
	Timer *timer;
	std::string name;

	virtual int64_t singleBenchmark(void(*f) (uint64_t *data, size_t length), uint64_t *data, size_t length) = 0;
	virtual int64_t singleBenchmark(void(*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out) = 0;
	virtual int64_t singleBenchmark(void(*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out) = 0;

	virtual void initializeRandomData(uint8_t *in, size_t length);
	virtual void initializeRandomData(uint16_t *in, size_t length);
	virtual void initializeRandomData(uint32_t *in, size_t length);
	virtual void initializeRandomData(uint64_t *in, size_t length);
};
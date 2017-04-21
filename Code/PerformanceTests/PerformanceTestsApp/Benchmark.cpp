#include "stdafx.h"
#include "Timer.h"
#include "Benchmark.h"

Benchmark::Benchmark(std::string name, int numRepetitions, int numValues) {

	this->name = name;
	this->numRepetitions = numRepetitions;
	this->numValues = numValues;

	timer = new Timer();
}

Benchmark::Benchmark(std::string name, int numRepetitions) : Benchmark(name, numRepetitions, 10000) {}

Benchmark::Benchmark(std::string name) : Benchmark(name, 1) {}

Benchmark::Benchmark() : Benchmark("()") {};

Benchmark::~Benchmark() {
	delete timer;
}

BM_RESULT Benchmark::singleBenchmark(int (*f) (uint64_t *data, size_t length), uint64_t *data, size_t length) {

	long long time = 0;
	int iops = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		iops += f(data, length);
		timer->stop();

		time += timer->duration();
	}

	BM_RESULT result = ((double) iops) / (time * 1000);

	return result;
}

BM_RESULT Benchmark::singleBenchmark(int (*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out) {

	long long time = 0;
	int iops = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		iops += f(in, length, out);
		timer->stop();

		time += timer->duration();
	}

	BM_RESULT result = ((double) iops) / (time * 1000);

	return result;
}

BM_RESULT Benchmark::singleBenchmark(int (*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out) {

	long long time = 0;
	int iops = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		iops += f(in, length, out);
		timer->stop();

		time += timer->duration();
	}

	BM_RESULT result = ((double) iops) / (time * 1000);

	return result;
}

void Benchmark::initializeRandomData(uint8_t *in, size_t length) {

	srand(unsigned(time(NULL)));

	for (unsigned int i = 0; i < length; i++) {
		in[i] = rand() >> rand() % 8;
	}
}

void Benchmark::initializeRandomData(uint16_t *in, size_t length) {

	srand(unsigned(time(NULL)));

	for (unsigned int i = 0; i < length; i++) {
		in[i] = rand() >> rand() % 16;
	}
}

void Benchmark::initializeRandomData(uint32_t *in, size_t length) {

	srand(unsigned(time(NULL)));

	for (unsigned int i = 0; i < length; i++) {
		in[i] = rand() >> rand() % 32;
	}
}

void Benchmark::initializeRandomData(uint64_t *in, size_t length) {

	srand(unsigned(time(NULL)));

	for (unsigned int i = 0; i < length; i++) {
		in[i] = rand() >> rand() % 64;
	}
}
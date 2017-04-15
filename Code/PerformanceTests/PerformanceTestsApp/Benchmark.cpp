#include "stdafx.h"
#include "Timer.h"
#include "Benchmark.h"

Benchmark::Benchmark(std::string name, int numRepetitions) {

	this->name = name;
	this->numRepetitions = numRepetitions;

	timer = new Timer();
}

Benchmark::Benchmark(std::string name) : Benchmark(name, 1) {}

Benchmark::Benchmark() : Benchmark("()") {};

Benchmark::~Benchmark() {
	delete timer;
}

BM_RESULT Benchmark::singleBenchmark(void (*f) (uint64_t *data, size_t length), uint64_t *data, size_t length) {

	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(data, length);
		timer->stop();

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}

BM_RESULT Benchmark::singleBenchmark(void (*f) (int testSize), int testSize) {

	int _testSize = testSize > 0 ? testSize : TEST_SIZE;
	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(_testSize);
		timer->stop();

		//TODO some kind of outlier detection mechanism, e.g. distance checking of neighboring values

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}

void Benchmark::benchmark(const char * file, void(*f)(int testSize), int testRange)
{
	std::cout << "Starting benchmark " << name << ": ";

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	int stepSize = testRange / 1000;

	for (int i = 0; i < testRange; i += stepSize) {
		fileToWrite << i << "," << singleBenchmark(f, i) << std::endl;

		if (i % (testRange / 10) == 0) std::cout << ".";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void Benchmark::benchmark(const char * file, void (*f) (uint64_t *data, size_t length), int testRange)
{
	std::cout << "Starting benchmark " << name << ": ";

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Iterations,Time" << std::endl;

	int stepSize = testRange / 1000;

	for (int i = 0; i < testRange; i += stepSize) {

		uint64_t *data = new uint64_t[i];

		fileToWrite << i << "," << singleBenchmark(f, data, i) << std::endl;

		delete data;

		if (i % (testRange / 10) == 0) std::cout << ".";
	}
	std::cout << std::endl;

	fileToWrite.close();
}
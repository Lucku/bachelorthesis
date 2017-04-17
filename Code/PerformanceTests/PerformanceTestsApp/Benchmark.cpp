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

BM_RESULT Benchmark::singleBenchmark(void(*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out) {

	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(in, length, out);
		timer->stop();

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}

BM_RESULT Benchmark::singleBenchmark(void(*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out) {

	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(in, length, out);
		timer->stop();

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

	fileToWrite << "Data,Time" << std::endl;

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {
		fileToWrite << i << "," << singleBenchmark(f, i) << std::endl;

		if (i % (testRange / 10) == 0) std::cout << ".";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void Benchmark::benchmark(const char * file, void (*f) (uint64_t *data, size_t length), int testRange)
{
	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,Time" << std::endl;

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {

		uint64_t *data = new uint64_t[i];

		fileToWrite << i << "," << singleBenchmark(f, data, i) << std::endl;

		delete data;

		std::cout << "\r" << (((float)i / testRange) * 100) << "%\t";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void Benchmark::benchmark(const char * file, void (*f) (uint32_t *in, size_t length, uint8_t *out), int (*sizefunc) (int inSize), int testRange)
{
	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,Time" << std::endl;

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {

		uint32_t *in = new uint32_t[i];
		initializeRandomData(in, i);
		uint8_t *out = new uint8_t[sizefunc(i)];

		fileToWrite << i << "," << singleBenchmark(f, in, i, out) << std::endl;

		delete in;
		delete out;

		std::cout << "\r" << (((float)i / testRange) * 100) << "%\t";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void Benchmark::benchmark(const char *file, void(*f) (uint8_t *in, size_t length, uint32_t *out), int(*sizefunc) (int inSize), int testRange) {

	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,Time" << std::endl;

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {

		uint8_t *in = new uint8_t[i];
		initializeRandomData(in, i);
		uint32_t *out = new uint32_t[sizefunc(i)];

		fileToWrite << i << "," << singleBenchmark(f, in, i, out) << std::endl;

		delete in;
		delete out;

		std::cout << "\r" << (((float) i / testRange) * 100) << "%\t";
	}
	std::cout << std::endl;

	fileToWrite.close();
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
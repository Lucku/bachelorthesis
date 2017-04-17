#include "stdafx.h"
#include "Timer.h"
#include "SGXBenchmark.h"

SGXBenchmark::SGXBenchmark(std::string name, sgx_enclave_id_t eid) {

	this->name = name;
	this->eid = eid;
}

SGXBenchmark::SGXBenchmark(std::string name, sgx_enclave_id_t eid, int numRepetitions) : SGXBenchmark(name, eid) {

	this->numRepetitions = numRepetitions;
}

SGXBenchmark::~SGXBenchmark() {
	Benchmark::~Benchmark();
}

BM_RESULT SGXBenchmark::singleBenchmark(void (*f) (sgx_enclave_id_t eid, uint64_t *data, size_t length), uint64_t *data, size_t length) {

	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(eid, data, length);
		timer->stop();

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}

BM_RESULT SGXBenchmark::singleBenchmark(void(*f) (sgx_enclave_id_t eid, int testSize), int testSize) {

	int _testSize = testSize > 0 ? testSize : TEST_SIZE;
	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(eid, _testSize);
		timer->stop();

		//TODO some kind of outlier detection mechanism, e.g. distance checking of neighboring values

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}

BM_RESULT SGXBenchmark::singleBenchmark(void(*f) (sgx_enclave_id_t eid, uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out) {

	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(eid, in, length, out);
		timer->stop();

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}

BM_RESULT SGXBenchmark::singleBenchmark(void(*f) (sgx_enclave_id_t eid, uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out) {

	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(eid, in, length, out);
		timer->stop();

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}


void SGXBenchmark::benchmark(const char * file, void (*f) (sgx_enclave_id_t eid, int testSize), int testRange)
{
	std::cout << "Starting benchmark " << name << ": ";

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,Time" << std::endl;

	int stepSize = testRange / 1000;

	for (int i = 0; i < testRange; i += stepSize) {
		fileToWrite << i << "," << singleBenchmark(f, i) << std::endl;

		if (i % (testRange / 10) == 0) std::cout << ".";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void Benchmark::benchmark(const char * file, void(*f) (uint64_t *data, size_t length), int testRange)
{
	std::cout << "Starting benchmark " << name << ": ";

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,Time" << std::endl;

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

void SGXBenchmark::benchmark(const char * file, void(*f) (sgx_enclave_id_t eid, uint32_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange)
{
	std::cout << "Starting benchmark " << name << ": ";

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,Time" << std::endl;

	int stepSize = testRange / 1000;

	for (int i = 0; i < testRange; i += stepSize) {

		uint32_t *in = new uint32_t[i];
		initializeRandomData(in, i);
		uint8_t *out = new uint8_t[sizefunc(i)];

		fileToWrite << i << "," << singleBenchmark(f, in, i, out) << std::endl;

		delete in;
		delete out;

		if (i % (testRange / 10) == 0) std::cout << ".";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void SGXBenchmark::benchmark(const char *file, void(*f) (sgx_enclave_id_t eid, uint8_t *in, size_t length, uint32_t *out), int(*sizefunc) (int inSize), int testRange) {

	std::cout << "Starting benchmark " << name << ": ";

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,Time" << std::endl;

	int stepSize = testRange / 1000;

	for (int i = 0; i < testRange; i += stepSize) {

		uint8_t *in = new uint8_t[i];
		initializeRandomData(in, i);
		uint32_t *out = new uint32_t[sizefunc(i)];

		fileToWrite << i << "," << singleBenchmark(f, in, i, out) << std::endl;

		delete in;
		delete out;

		if (i % (testRange / 10) == 0) std::cout << ".";
	}
	std::cout << std::endl;

	fileToWrite.close();
}
#include "stdafx.h"
#include "Timer.h"
#include "Benchmark.h"

Benchmark::Benchmark(std::string name, int numRepetitions, int numValues, MeasurementMode mode)
{
	this->name = name;
	this->numRepetitions = numRepetitions;
	this->numValues = numValues;
	this->mode = mode;

	timer = new Timer();
}

Benchmark::Benchmark(std::string name, int numRepetitions, int numValues) : Benchmark(name, numRepetitions, numValues, IOPS) {}

Benchmark::Benchmark(std::string name, int numRepetitions) : Benchmark(name, numRepetitions, 10000) {}

Benchmark::Benchmark(std::string name) : Benchmark(name, 1) {}

Benchmark::Benchmark() : Benchmark("()") {};

Benchmark::~Benchmark() {
	delete timer;
}

void Benchmark::benchmark(const char * file, void(*f) (uint64_t *data, size_t length), int testRange)
{
	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	switch (mode) {
	case TIME: 	fileToWrite << "Data,Time" << std::endl; break;
	case MIOPS: fileToWrite << "Data,MIOPS" << std::endl; break;
	default: 	fileToWrite << "Data,IOPS" << std::endl;
	}

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {

		uint64_t *data = new uint64_t[i];
		initializeRandomData(data, i);

		uint64_t time = singleBenchmark(f, data, i);

		switch (mode) {
		case TIME: fileToWrite << i << "," << time << std::endl; break;
		case MIOPS: fileToWrite << i << "," << (((double)i) * 1000) / time << std::endl; break;
		default: fileToWrite << i << "," << (((double)i) * 1000000000) / time << std::endl;
		}

		delete[] data;

		std::cout << "\r" << (((float)i / testRange) * 100) << "%\t";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void Benchmark::benchmark(const char * file, void(*f) (uint32_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange)
{
	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	switch (mode) {
	case TIME: 	fileToWrite << "Data,Time" << std::endl; break;
	case MIOPS: fileToWrite << "Data,MIOPS" << std::endl; break;
	default: 	fileToWrite << "Data,IOPS" << std::endl;
	}

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {

		uint32_t *in = new uint32_t[i];
		initializeRandomData(in, i);
		uint8_t *out = new uint8_t[sizefunc(i)];

		uint64_t time = singleBenchmark(f, in, i, out);

		switch (mode) {
		case TIME: fileToWrite << i << "," << time << std::endl; break;
		case MIOPS: fileToWrite << i << "," << (((double) i) * 1000) / time << std::endl; break;
		default: fileToWrite << i << "," << (((double) i) * 1000000000) / time << std::endl;
		}

		delete[] in;
		delete[] out;

		std::cout << "\r" << (((float)i / testRange) * 100) << "%\t";
	}
	std::cout << std::endl;

	fileToWrite.close();
}

void Benchmark::benchmark(const char *file, void(*f) (uint8_t *in, size_t length, uint32_t *out), int(*sizefunc) (int inSize), int testRange) {

	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	switch (mode) {
	case TIME: 	fileToWrite << "Data,Time" << std::endl; break;
	case MIOPS: fileToWrite << "Data,MIOPS" << std::endl; break;
	default: 	fileToWrite << "Data,IOPS" << std::endl;
	}

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {

		uint8_t *in = new uint8_t[i];
		initializeRandomData(in, i);
		uint32_t *out = new uint32_t[sizefunc(i)];

		uint64_t time = singleBenchmark(f, in, i, out);

		switch (mode) {
		case TIME: fileToWrite << i << "," << time << std::endl; break;
		case MIOPS: fileToWrite << i << "," << (((double)i) * 1000) / time << std::endl; break;
		default: fileToWrite << i << "," << (((double)i) * 1000000000) / time << std::endl;
		}

		delete[] in;
		delete[] out;

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
	

	//RAND_bytes((uint8_t*) in, length);
}

void Benchmark::initializeRandomData(uint16_t *in, size_t length) {

	srand(unsigned(time(NULL)));

	for (unsigned int i = 0; i < length; i++) {
		in[i] = rand() >> rand() % 16;
	}


	//RAND_bytes((uint8_t*) in, 2 * length);
}

void Benchmark::initializeRandomData(uint32_t *in, size_t length) {

	srand(unsigned(time(NULL)));

	for (unsigned int i = 0; i < length; i++) {
		in[i] = rand() >> rand() % 32;
	}
	

	//RAND_bytes((uint8_t*) in, 4 * length);
}

void Benchmark::initializeRandomData(uint64_t *in, size_t length) {
	
	srand(unsigned(time(NULL)));

	for (unsigned int i = 0; i < length; i++) {
		in[i] = rand() >> rand() % 64;
	}

	//RAND_bytes((uint8_t*) in, 8 * length);
}
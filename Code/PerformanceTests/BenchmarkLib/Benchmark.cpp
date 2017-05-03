#include "stdafx.h"
#include "Timer.h"
#include "Benchmark.h"

Benchmark::Benchmark(std::string name, int numRepetitions, MeasurementMode mode)
	: name(name), numRepetitions(numRepetitions), mode(mode)
{
	timer = new Timer();
}

Benchmark::Benchmark(std::string name, int numRepetitions) : Benchmark(name, numRepetitions, IOPS) {}

Benchmark::Benchmark(std::string name) : Benchmark(name, 1) {}

Benchmark::Benchmark() : Benchmark("()") {};

Benchmark::~Benchmark() {
	delete timer;
}

void Benchmark::benchmark(const char *file, size_t(*f) (uint8_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange, int stepSize) {

	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	switch (mode) {
	case TIME: 	fileToWrite << "Data,Time" << std::endl; break;
	case MIOPS: fileToWrite << "Data,MIOPS" << std::endl; break;
	default: 	fileToWrite << "Data,IOPS" << std::endl;
	}

	for (int i = 0; i <= testRange; i += stepSize) {

		uint8_t *in = new uint8_t[i];
		initializeRandomData(in, i);
		uint8_t *out = new uint8_t[sizefunc(i)];
		int debug = sizefunc(i);
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
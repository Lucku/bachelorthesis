#include "stdafx.h"
#include "Timer.h"
#include "Benchmark.h"

Benchmark::Benchmark(std::string name, int numRepetitions, MeasurementMode mode)
	: name(name), numRepetitions(numRepetitions), mode(mode)
{
}

Benchmark::Benchmark(std::string name, int numRepetitions) : Benchmark(name, numRepetitions, IOPS) {}

Benchmark::Benchmark(std::string name) : Benchmark(name, DEFAULT_NUM_REPS) {}

Benchmark::Benchmark() : Benchmark("()") {};

void Benchmark::benchmark(const char *file, bytefunc f, sizefunc s, int testRange, int stepSize, bytefunc preproc, sizefunc preprocS) {

	std::cout << "Starting benchmark " << name << " (" << "reps: " << numRepetitions << " range: " << testRange << " stepSize: " << stepSize << "): " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	switch (mode) {
	case TIME: 	fileToWrite << "Data,Time" << std::endl; break;
	case MIOPS: fileToWrite << "Data,MIOPS" << std::endl; break;
	default: 	fileToWrite << "Data,IOPS" << std::endl;
	}

	for (int i = 0; i <= testRange; i += stepSize) {

		uint8_t *in = new uint8_t[i];

		if (preproc == nullptr) {
			initializeRandomData(in, i);
		}
		else {
			// s(i) is the size so that you get the amount of values, even in best case compression
			uint8_t *pre = new uint8_t[s(i)];
			// preprocS(s(i)) to handle the worst case compression
			uint8_t *preOut = new uint8_t[preprocS(s(i))];
			initializeRandomData(pre, s(i));
			preproc(pre, s(i), preOut);
			std::memcpy(in, preOut, i);
			delete[] pre;
			delete[] preOut;
		}

		uint8_t *out = new uint8_t[s(i)];
		uint64_t time = singleBenchmark(f, in, i, out);

		switch (mode) {
		case TIME:	fileToWrite	<< i / stepSize << "," << time << std::endl; break;
		case MIOPS: fileToWrite << i / stepSize << "," << (((double)i) * 1000)			/ (time * stepSize) << std::endl; break;
		default:	fileToWrite	<< i / stepSize << "," << (((double)i) * 1000000000)	/ (time * stepSize) << std::endl;
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
		in[i] = rand() % 256;
	}
}
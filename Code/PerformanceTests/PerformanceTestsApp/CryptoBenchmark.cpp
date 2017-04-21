#include "stdafx.h"
#include "CryptoBenchmark.h"

void CryptoBenchmark::benchmark(const char * file, int(*f) (uint64_t *data, size_t length), int testRange)
{
	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,MIPS" << std::endl;

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

void CryptoBenchmark::benchmark(const char * file, int(*f) (uint32_t *in, size_t length, uint8_t *out), int(*sizefunc) (int inSize), int testRange)
{
	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,MIPS" << std::endl;

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

void CryptoBenchmark::benchmark(const char *file, int(*f) (uint8_t *in, size_t length, uint32_t *out), int(*sizefunc) (int inSize), int testRange) {

	std::cout << "Starting benchmark " << name << ": " << std::endl;

	std::ofstream fileToWrite;
	fileToWrite.open(file, std::ios::out);

	fileToWrite << "Data,MIPS" << std::endl;

	int stepSize = testRange / numValues;

	for (int i = 0; i <= testRange; i += stepSize) {

		uint8_t *in = new uint8_t[i];
		initializeRandomData(in, i);
		uint32_t *out = new uint32_t[sizefunc(i)];

		fileToWrite << i << "," << singleBenchmark(f, in, i, out) << std::endl;

		delete in;
		delete out;

		std::cout << "\r" << (((float)i / testRange) * 100) << "%\t";
	}
	std::cout << std::endl;

	fileToWrite.close();
}
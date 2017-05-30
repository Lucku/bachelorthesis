#pragma once
#include "stdafx.h"
#include "BulkBenchmark.h"
#include "BasicBenchmark.h"

/*
General purpose benchmark solutíon correctly setting up all benchmarks and printing a user interface
*/
class BenchmarkSuite {

public:

	static sizefunc IDENT;

	struct Function {
		std::string name;
		bytefunc b;
		sizefunc s;
		size_t valueSize;
		bytefunc preFunc;
		sizefunc preSize;

		Function(std::string name, bytefunc b, sizefunc s, size_t valueSize, bytefunc preFunc, sizefunc preSize) : name(name), b(b), s(s), valueSize(valueSize), preFunc(preFunc), preSize(preSize) {};
		Function(std::string name, bytefunc b, sizefunc s, size_t valueSize) : Function(name, b, s, valueSize, nullptr, nullptr) {};
	};

	explicit BenchmarkSuite();
	explicit BenchmarkSuite(char fileSuffix);

	void registerFunction(bytefunc b, sizefunc s, std::string name, size_t valueSize);
	void registerFunctionWithPreprocessing(bytefunc b, sizefunc s, bytefunc preFunc, sizefunc preSize, std::string name, size_t valueSize);
	void start();

private:

	char fileSuffix;

	std::vector<Function> *functions;

	BulkBenchmark *bulk;
	BasicBenchmark *basic;
};
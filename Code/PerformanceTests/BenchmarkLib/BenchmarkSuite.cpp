#include "stdafx.h"
#include "BenchmarkSuite.h"

sizefunc BenchmarkSuite::IDENT = [](size_t in) {return in; };

BenchmarkSuite::BenchmarkSuite(char fileSuffix) : fileSuffix(fileSuffix)
{
	bulk = new BulkBenchmark();
	basic = new BasicBenchmark();
	functions = new std::vector<Function>();
}

BenchmarkSuite::BenchmarkSuite() : BenchmarkSuite('u') {};

void BenchmarkSuite::registerFunction(bytefunc b, sizefunc s, std::string name, size_t valueSize)
{
	Function *func = new Function(name, b, s, valueSize);
	functions->push_back(*func);
}

void BenchmarkSuite::registerFunctionWithPreprocessing(bytefunc b, sizefunc s, bytefunc preFunc, sizefunc preSize, std::string name, size_t valueSize)
{
	Function *func = new Function(name, b, s, valueSize, preFunc, preSize);
	functions->push_back(*func);
}

int readIntFromConsole(int defaultValue) {
	std::string s;
	int i = -1;

	std::getline(std::cin, s);
	std::stringstream ss(s);
	ss >> i;

	if (i == -1) {
		i = defaultValue;
	}

	return i;
}

void BenchmarkSuite::start()
{
	SetThreadPriority(GetCurrentThread(), THREAD_PRIORITY_TIME_CRITICAL);
	SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);

	std::string name;

	std::cout << "Choose benchmark unit: [default: 2]" << std::endl
		<< "(1) Time" << std::endl 
		<< "(2) IOPS" << std::endl
		<< "(3) MIOPS" << std::endl;

	int unit = readIntFromConsole(2);

	if (unit < 1 || unit > 3) goto error;

	Benchmark::MeasurementMode mode;

	switch (unit) {
	case 1: mode = Benchmark::MeasurementMode::TIME; break;
	case 2: mode = Benchmark::MeasurementMode::IOPS; break;
	case 3: mode = Benchmark::MeasurementMode::MIOPS;
	}

	bulk->setMode(mode);
	basic->setMode(mode);

	std::cout << "Choose number of repetitions per value (the bigger the more precise): [default: 200]" << std::endl;
	int numReps = readIntFromConsole(DEFAULT_NUM_REPS);

	if (numReps < 1 || numReps > 10000000) goto error;

	bulk->setNumRepetitions(numReps);
	basic->setNumRepetitions(numReps);

	std::cout << "Choose a name for the benchmark (just for display purposes) [default: MyBenchmark]" << std::endl;
	std::getline(std::cin, name);
	
	if (name == "") name = "MyBenchmark";

	bulk->setName(name);
	basic->setName(name);

	std::cout << "Choose benchmark method: [default: 1]" << std::endl
		<< "(1) Bulk data processing" << std::endl
		<< "(2) Single data processing" << std::endl;

	int method = readIntFromConsole(1);

	char suffix = 'b';

	if (method < 1 || method > 2) goto error;

	Benchmark *b;

	if (method == 1) {
		b = bulk;
	}
	else {
		b = basic;
		suffix = 's';
	}

	std::cout << "Choose function to test: [default: 1]" << std::endl;

	int size = functions->size();

	for (int i = 0; i < size; i++) {
		std::cout << "(" << (i + 1) << ") " << functions->at(i).name << std::endl;
	}

	std::cout << "(" << (size + 1) << ") All of them" << std::endl;

	int func = readIntFromConsole(1);

	if (func < 1 || func > size + 1) goto error;

	std::cout << "Choose test range maximum of bytes: [default: 100000]" << std::endl;
	int testRange = readIntFromConsole(DEFAULT_BM_BIG);

	if (testRange < 1 || testRange > 1000000) goto error;

	if (func == size + 1) {

		for (int i = 0; i < size; i++) {

			Function f = functions->at(i);

			b->setName(b->getName() + " (" + std::to_string(i + 1) + "/" + std::to_string(size) + ") ");
			b->benchmark((f.name + "_" + fileSuffix + "_" + suffix + ".csv").c_str(), f.b, f.s, testRange / f.valueSize, f.valueSize, f.preFunc, f.preSize);
			std::cout << "Results saved to " << f.name.c_str() << std::endl;
		}

		std::cout << "Done" << std::endl;
	}
	else {
		Function f = functions->at(func - 1);
		b->benchmark((f.name + "_" + fileSuffix + "_" + suffix + ".csv").c_str(), f.b, f.s, testRange / f.valueSize, f.valueSize, f.preFunc, f.preSize);

		std::cout << "Done" << std::endl;
		std::cout << "Results saved to " << f.name.c_str() << std::endl;
	}

	system("pause");
	return;

error:
	std::cout << "Something went wrong! Please read the instructions clearly!" << std::endl;
	getchar();
}
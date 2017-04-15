#include "stdafx.h"
#include "Benchmark.h"
#include "Functions.h"

int main()
{
	Benchmark *bm = new Benchmark("ExampleBenchmark", 10000);

	const char *file = "example.csv";

	bm->benchmark(file, iterate, 10000);
	
	getchar();

    return 0;
}


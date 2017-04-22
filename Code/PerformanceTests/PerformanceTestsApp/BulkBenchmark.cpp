#include "stdafx.h"
#include "BulkBenchmark.h"

BMResult BulkBenchmark::singleBenchmark(int(*f) (uint64_t *data, size_t length), uint64_t *data, size_t length) {

	long long time = 0;
	int iop = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		iop += f(data, length);
		timer->stop();

		time += timer->duration();
	}

	return { time, iop };
}

BMResult BulkBenchmark::singleBenchmark(int(*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out) {

	long long time = 0;
	int iop = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		iop += f(in, length, out);
		timer->stop();

		time += timer->duration();
	}

	return { time, iop };
}

BMResult BulkBenchmark::singleBenchmark(int(*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out) {

	long long time = 0;
	int iop = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		iop += f(in, length, out);
		timer->stop();

		time += timer->duration();
	}

	return{ time, iop };
}

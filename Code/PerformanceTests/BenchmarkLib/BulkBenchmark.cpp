#include "stdafx.h"
#include "BulkBenchmark.h"

uint64_t BulkBenchmark::singleBenchmark(void(*f) (uint64_t *data, size_t length), uint64_t *data, size_t length) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(data, length);
		timer->stop();

		time += timer->duration();
	}

	return time / numRepetitions;
}

uint64_t BulkBenchmark::singleBenchmark(void(*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(in, length, out);
		timer->stop();

		time += timer->duration();
	}

	return time / numRepetitions;
}

uint64_t BulkBenchmark::singleBenchmark(void(*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(in, length, out);
		timer->stop();

		time += timer->duration();
	}

	return time / numRepetitions;
}

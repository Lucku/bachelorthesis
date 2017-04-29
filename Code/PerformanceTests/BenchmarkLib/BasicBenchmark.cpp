#include "stdafx.h"
#include "BasicBenchmark.h"

int64_t BasicBenchmark::singleBenchmark(void(*f) (uint64_t *data, size_t length), uint64_t *data, size_t length) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		for (unsigned int j = 0; j < length; j++) {
			f(&(data[j]), 1);
		}
		timer->stop();

		time += timer->duration();
	}

	return time;
}

int64_t BasicBenchmark::singleBenchmark(void(*f) (uint32_t *in, size_t length, uint8_t *out), uint32_t *in, size_t length, uint8_t *out) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		for (unsigned int j = 0; j < length; j++) {
			f(&(in[j]), 1, &(out[j]));
		}
		timer->stop();

		time += timer->duration();
	}

	return time;
}

int64_t BasicBenchmark::singleBenchmark(void(*f) (uint8_t *in, size_t length, uint32_t *out), uint8_t *in, size_t length, uint32_t *out) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		for (unsigned int j = 0; j < length; j++) {
			f(&(in[j]), 1, &(out[j]));
		}
		timer->stop();

		time += timer->duration();
	}

	return time;
}

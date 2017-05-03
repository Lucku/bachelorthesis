#include "stdafx.h"
#include "BasicBenchmark.h"

/* One byte at a time processing doesn't make sense with most algorithms here */
uint64_t BasicBenchmark::singleBenchmark(size_t(*f) (uint8_t *in, size_t length, uint8_t *out), uint8_t *in, size_t length, uint8_t *out) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		for (unsigned int j = 0; j < length; j++) {
			f(&(in[j]), 1, &(out[j]));
		}
		timer->stop();

		time += timer->duration();
	}

	return time / numRepetitions;
}

#include "stdafx.h"
#include "BulkBenchmark.h"

uint64_t BulkBenchmark::singleBenchmark(size_t(*f) (uint8_t *in, size_t length, uint8_t *out), uint8_t *in, size_t length, uint8_t *out) {

	uint64_t time = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer.start();
		f(in, length, out);
		timer.stop();

		time += timer.duration();
	}

	return time / numRepetitions;
}

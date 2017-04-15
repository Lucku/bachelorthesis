#include "PerformanceTests_t.h"

#include "sgx_trts.h"
#include <time.h>
#include <stdint.h>

void enclaveIterate([in, size = length] uint64_t *dataSet, size_t length) {

	uint64_t current;

	for (int i = 0; i < length; i++) {
		current = dataSet[i];
	}
}

void testCompress(int numCompressions) {
	//TODO
}

void testDecompress(int numDecompressions) {
	//TODO
}
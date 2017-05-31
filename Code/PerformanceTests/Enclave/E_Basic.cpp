#include "PerformanceTests_t.h"

#include <cstdint>
//#include <sgx_intrin.h>
#include "sgx_trts.h"

size_t enclaveIterate(uint8_t *in, size_t length, uint8_t *out) {

	for (unsigned int i = 0; i < length; i++) {

		out[i] = in[i];
	}

	/* TODO Test with real enclave */
	/*
	float test = 0xFFFFFFFFf;

	__m128 a = _mm_load_ps1(&test);

	__m128 b = _mm_load_ps1(&test);

	__m128 result = _mm_add_ps(a, b);

	double testD = 0xFFFFFFFFFFFFFFFF;

	//__m256 d = _mm_load_pd1(&testD);
	*/
	return 0;
}

size_t justCopy(uint8_t *in, size_t length, uint8_t *out) {

	return 0;
}

size_t noCopy(uint8_t *in, size_t length, uint8_t *out) {

	return 0;
}
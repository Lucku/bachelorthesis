#include "ExampleEnclave_t.h"

#include <stdlib.h>
#include <stdio.h>

#include "sgx_trts.h"

#define STACK_SIZE 64000

void enclaveAllocateHeapMemory(int numBytes) {
		
	char* alloc = new char[numBytes];
	
	char log[100];
	snprintf(log, sizeof(log), "Successfully allocated %d Bytes of memory on the enclave's heap", numBytes);

	ocallLogProgress(log, sizeof(log));
	
	free(alloc);
}

void enclaveAllocateStackMemory() {

	char hiddenArray[STACK_SIZE];

	for (char c : hiddenArray) {
		c = 'x';
	}

	char log[100];
	snprintf(log, sizeof(log), "Successfully allocated %d Bytes of memory on the enclave's stack", STACK_SIZE);

	ocallLogProgress(log, sizeof(log));
}

void enclaveVectorization(float * __restrict a, float * __restrict b, float * __restrict c, float * __restrict d, float* __restrict e, int n) {
	int i;
#pragma simd
#pragma vector aligned
	for (int i = 0; i<n; i++) {
		a[i] = b[i] + c[i] + d[i] + e[i];
	}
}
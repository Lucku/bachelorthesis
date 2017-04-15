#include "stdafx.h"
#include "SGXBenchmark.h"

SGXBenchmark::SGXBenchmark(std::string name, sgx_enclave_id_t eid) {

	this->name = name;
	this->eid = eid;
}

SGXBenchmark::SGXBenchmark(std::string name, sgx_enclave_id_t eid, int numRepetitions) : SGXBenchmark(name, eid) {

	this->numRepetitions = numRepetitions;
}

BM_RESULT SGXBenchmark::singleBenchmark(void(*f) (sgx_enclave_id_t eid, uint64_t *data, size_t length), uint64_t * data, size_t length) {

	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(eid, data, length);
		timer->stop();

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}

BM_RESULT SGXBenchmark::singleBenchmark(void (*f) (sgx_enclave_id_t eid, int testSize), int testSize) {

	int _testSize = testSize > 0 ? testSize : TEST_SIZE;
	long long sum = 0;

	for (int i = 0; i < numRepetitions; i++) {

		timer->start();
		f(eid, testSize);
		timer->stop();

		sum += timer->duration();
	}

	BM_RESULT result = sum / numRepetitions;

	return result;
}
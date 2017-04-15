#pragma once

#include "stdafx.h"
#include "Benchmark.h"

class SGXBenchmark : Benchmark {

public:
	SGXBenchmark(std::string name, sgx_enclave_id_t eid);
	SGXBenchmark(std::string name, sgx_enclave_id_t eid, int numRepetitions);
	BM_RESULT singleBenchmark(void (*f) (sgx_enclave_id_t eid, int testSize), int testSize);
	BM_RESULT singleBenchmark(void (*f) (sgx_enclave_id_t eid, uint64_t *data, size_t length), uint64_t * data, size_t length);

private:
	sgx_enclave_id_t eid;
};
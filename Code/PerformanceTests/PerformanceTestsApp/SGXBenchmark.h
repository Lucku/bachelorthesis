#pragma once

#include "stdafx.h"
#include "Benchmark.h"

class SGXBenchmark : Benchmark {

public:
	SGXBenchmark(std::string name, sgx_enclave_id_t eid);
	SGXBenchmark(std::string name, sgx_enclave_id_t eid, int numRepetitions);
	BM_RESULT singleBenchmark(void (*f) (sgx_enclave_id_t eid, int testSize), int testSize);
	BM_RESULT singleBenchmark(void(*f)(sgx_enclave_id_t eid, uint32_t *in, size_t length, uint8_t *out), uint32_t * in, size_t length, uint8_t * out);
	BM_RESULT singleBenchmark(void(*f)(sgx_enclave_id_t eid, uint8_t *in, size_t length, uint32_t *out), uint8_t * in, size_t length, uint32_t * out);
	BM_RESULT singleBenchmark(void (*f) (sgx_enclave_id_t eid, uint64_t *data, size_t length), uint64_t * data, size_t length);
	void benchmark(const char * file, void(*f)(sgx_enclave_id_t eid, uint32_t *in, size_t length, uint8_t *out), int(*sizefunc)(int inSize), int testRange);
	void benchmark(const char * file, void(*f)(sgx_enclave_id_t eid, uint8_t *in, size_t length, uint32_t *out), int(*sizefunc)(int inSize), int testRange);
	void benchmark(const char * file, void(*f)(sgx_enclave_id_t eid, int testSize), int testRange);

private:
	sgx_enclave_id_t eid;
};
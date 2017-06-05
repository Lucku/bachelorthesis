#pragma once

#include "stdafx.h"
#include "Benchmark.h"

typedef sgx_status_t(*ecallIOFunc) (sgx_enclave_id_t eid, size_t *ret, uint8_t *in, size_t inLength, uint8_t *out, size_t outLength);
typedef sgx_status_t(*ecallFunc)  (sgx_enclave_id_t eid, size_t *ret, uint8_t *in, size_t inLength, uint8_t *out);

/* Enclave initialisation and wrapper functions for ECALLs */
sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int *updated);

/* ECALL wrapper */
bytefunc ecall(const sgx_enclave_id_t eid, ecallIOFunc func, sizefunc outBufferSize);
bytefunc ecall(const sgx_enclave_id_t eid, ecallFunc func);
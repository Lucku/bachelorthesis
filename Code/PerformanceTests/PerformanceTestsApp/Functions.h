#pragma once

#include "stdafx.h"

int iterate(uint64_t *data, size_t length);
int vByteEncode(uint32_t *in, size_t length, uint8_t *out);
int vByteDecode(uint8_t *in, size_t length, uint32_t *out);

/* Enclave initialisation and wrapper functions for ECALLs */
sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int * updated);
int ecallIterate(uint64_t *data, size_t length);
int ecallVByteEncode(uint32_t *in, size_t length, uint8_t *out);
int ecallVByteDecode(uint8_t *in, size_t length, uint32_t *out);

void testOpenSSL();
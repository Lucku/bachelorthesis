#pragma once

#include "stdafx.h"

void iterate(uint64_t *data, size_t length);
void vByteEncode(uint32_t *in, size_t length, uint8_t *out);
void vByteDecode(uint8_t *in, size_t length, uint32_t *out);

/* Enclave initialisation and wrapper functions for ECALLs */
sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int * updated);
void ecallIterate(uint64_t *data, size_t length);
void ecallVByteEncode(uint32_t *in, size_t length, uint8_t *out);
void vByteDecode(uint8_t *in, size_t length, uint32_t *out);
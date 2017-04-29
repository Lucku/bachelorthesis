#pragma once

#include "stdafx.h"

/* Enclave initialisation and wrapper functions for ECALLs */
sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int * updated);
void ecallIterate(uint64_t *data, size_t length);
void ecallVByteEncode(uint32_t *in, size_t length, uint8_t *out);
void ecallVByteDecode(uint8_t *in, size_t length, uint32_t *out);
void ecallVByteEncodeEncrypted(uint32_t *in, size_t length, uint8_t *out);
void ecallVByteDecodeEncrypted(uint8_t *in, size_t length, uint32_t *out);
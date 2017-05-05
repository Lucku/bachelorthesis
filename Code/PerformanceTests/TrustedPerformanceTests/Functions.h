#pragma once

#include "stdafx.h"

/* Enclave initialisation and wrapper functions for ECALLs */
sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t * token, int *updated);
size_t ecallIterate(uint8_t *in, size_t length, uint8_t *out);
size_t ecallVByteEncode(uint8_t *in, size_t length, uint8_t *out);
size_t ecallVByteDecode(uint8_t *in, size_t length, uint8_t *out);
size_t ecallVByteEncodeEncrypted(uint8_t *in, size_t length, uint8_t *out);
size_t ecallVByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out);
size_t ecallRunLengthEncode(uint8_t *in, size_t length, uint8_t *out);
size_t ecallRunLengthDecode(uint8_t *in, size_t length, uint8_t *out);
size_t ecallRunLengthEncodeAndSum(uint8_t *in, size_t length, uint8_t *out);
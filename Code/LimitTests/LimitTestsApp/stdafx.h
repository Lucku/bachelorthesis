#pragma once

#include <iostream>

#include <tchar.h>

#include "targetver.h"
#include "sgx_urts.h"
#include "ExampleEnclave_u.h"
#include "Compression_u.h"

using namespace std;

#define ENCLAVE_FILE_1 _T("ExampleEnclave.signed.dll")
#define ENCLAVE_FILE_2 _T("Compression.signed.dll")

sgx_enclave_id_t initializeEnclave(LPCWSTR file, int debug, sgx_launch_token_t *token, int *updated);
void int2Bin(uint64_t n, int l);
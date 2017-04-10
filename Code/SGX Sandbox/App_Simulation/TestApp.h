#pragma once
#include <stdio.h>
#include <tchar.h>
#include <assert.h>

#include "sgx_urts.h"
#include "TestEnclave_u.h"

#define ENCLAVE_FILE _T("TestEnclave.signed.dll")
#define MAX_BUF_LEN 100

void testLoadAndStoreString(const sgx_enclave_id_t eid);
void testLoadAndStoreInt(const sgx_enclave_id_t eid);
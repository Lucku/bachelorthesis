#ifndef TESTENCLAVE_U_H__
#define TESTENCLAVE_U_H__

#include <stdint.h>
#include <wchar.h>
#include <stddef.h>
#include <string.h>
#include "sgx_edger8r.h" /* for sgx_status_t etc. */


#define SGX_CAST(type, item) ((type)(item))

#ifdef __cplusplus
extern "C" {
#endif


	sgx_status_t enclaveSaveString(sgx_enclave_id_t eid, char* input, size_t len);
	sgx_status_t enclaveLoadString(sgx_enclave_id_t eid, char* output, size_t len);
	sgx_status_t enclaveSaveInt(sgx_enclave_id_t eid, int input);
	sgx_status_t enclaveLoadInt(sgx_enclave_id_t eid, int* retval);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif

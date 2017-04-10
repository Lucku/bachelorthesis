#ifndef TESTENCLAVE_T_H__
#define TESTENCLAVE_T_H__

#include <stdint.h>
#include <wchar.h>
#include <stddef.h>
#include "sgx_edger8r.h" /* for sgx_ocall etc. */


#define SGX_CAST(type, item) ((type)(item))

#ifdef __cplusplus
extern "C" {
#endif


	void enclaveSaveString(char* input, size_t len);
	void enclaveLoadString(char* output, size_t len);
	void enclaveSaveInt(int input);
	int enclaveLoadInt();


#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif

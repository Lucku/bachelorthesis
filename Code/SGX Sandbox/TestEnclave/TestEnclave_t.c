#include "TestEnclave_t.h"

#include "sgx_trts.h" /* for sgx_ocalloc, sgx_is_outside_enclave */

#include <errno.h>
#include <string.h> /* for memcpy etc */
#include <stdlib.h> /* for malloc/free etc */

#define CHECK_REF_POINTER(ptr, siz) do {	\
	if (!(ptr) || ! sgx_is_outside_enclave((ptr), (siz)))	\
		return SGX_ERROR_INVALID_PARAMETER;\
} while (0)

#define CHECK_UNIQUE_POINTER(ptr, siz) do {	\
	if ((ptr) && ! sgx_is_outside_enclave((ptr), (siz)))	\
		return SGX_ERROR_INVALID_PARAMETER;\
} while (0)


typedef struct ms_enclaveSaveString_t {
	char* ms_input;
	size_t ms_len;
} ms_enclaveSaveString_t;

typedef struct ms_enclaveLoadString_t {
	char* ms_output;
	size_t ms_len;
} ms_enclaveLoadString_t;

typedef struct ms_enclaveSaveInt_t {
	int ms_input;
} ms_enclaveSaveInt_t;

typedef struct ms_enclaveLoadInt_t {
	int ms_retval;
} ms_enclaveLoadInt_t;

#ifdef _MSC_VER
#pragma warning(push)
#pragma warning(disable: 4127)
#pragma warning(disable: 4200)
#endif

static sgx_status_t SGX_CDECL sgx_enclaveSaveString(void* pms)
{
	ms_enclaveSaveString_t* ms = SGX_CAST(ms_enclaveSaveString_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	char* _tmp_input = ms->ms_input;
	size_t _tmp_len = ms->ms_len;
	size_t _len_input = _tmp_len;
	char* _in_input = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveSaveString_t));
	CHECK_UNIQUE_POINTER(_tmp_input, _len_input);

	if (_tmp_input != NULL) {
		_in_input = (char*)malloc(_len_input);
		if (_in_input == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_input, _tmp_input, _len_input);
	}
	enclaveSaveString(_in_input, _tmp_len);
err:
	if (_in_input) free(_in_input);

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveLoadString(void* pms)
{
	ms_enclaveLoadString_t* ms = SGX_CAST(ms_enclaveLoadString_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	char* _tmp_output = ms->ms_output;
	size_t _tmp_len = ms->ms_len;
	size_t _len_output = _tmp_len;
	char* _in_output = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveLoadString_t));
	CHECK_UNIQUE_POINTER(_tmp_output, _len_output);

	if (_tmp_output != NULL) {
		if ((_in_output = (char*)malloc(_len_output)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_output, 0, _len_output);
	}
	enclaveLoadString(_in_output, _tmp_len);
err:
	if (_in_output) {
		memcpy(_tmp_output, _in_output, _len_output);
		free(_in_output);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveSaveInt(void* pms)
{
	ms_enclaveSaveInt_t* ms = SGX_CAST(ms_enclaveSaveInt_t*, pms);
	sgx_status_t status = SGX_SUCCESS;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveSaveInt_t));

	enclaveSaveInt(ms->ms_input);


	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveLoadInt(void* pms)
{
	ms_enclaveLoadInt_t* ms = SGX_CAST(ms_enclaveLoadInt_t*, pms);
	sgx_status_t status = SGX_SUCCESS;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveLoadInt_t));

	ms->ms_retval = enclaveLoadInt();


	return status;
}

SGX_EXTERNC const struct {
	size_t nr_ecall;
	struct { void* call_addr; uint8_t is_priv; } ecall_table[4];
} g_ecall_table = {
	4,
	{
		{ (void*)(uintptr_t)sgx_enclaveSaveString, 0 },
		{ (void*)(uintptr_t)sgx_enclaveLoadString, 0 },
		{ (void*)(uintptr_t)sgx_enclaveSaveInt, 0 },
		{ (void*)(uintptr_t)sgx_enclaveLoadInt, 0 },
	}
};

SGX_EXTERNC const struct {
	size_t nr_ocall;
} g_dyn_entry_table = {
	0,
};


#ifdef _MSC_VER
#pragma warning(pop)
#endif

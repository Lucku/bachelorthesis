#include "PerformanceTests_t.h"

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


typedef struct ms_enclaveIterate_t {
	int ms_retval;
	uint64_t* ms_data;
	size_t ms_length;
} ms_enclaveIterate_t;

typedef struct ms_enclaveVByteEncode_t {
	int ms_retval;
	uint32_t* ms_in;
	size_t ms_inLength;
	uint8_t* ms_out;
	size_t ms_outLength;
} ms_enclaveVByteEncode_t;

typedef struct ms_enclaveVByteDecode_t {
	int ms_retval;
	uint8_t* ms_in;
	size_t ms_inLength;
	uint32_t* ms_out;
	size_t ms_outLength;
} ms_enclaveVByteDecode_t;

typedef struct ms_sgx_oc_cpuidex_t {
	int* ms_cpuinfo;
	int ms_leaf;
	int ms_subleaf;
} ms_sgx_oc_cpuidex_t;

typedef struct ms_sgx_thread_wait_untrusted_event_ocall_t {
	int ms_retval;
	void* ms_self;
} ms_sgx_thread_wait_untrusted_event_ocall_t;

typedef struct ms_sgx_thread_set_untrusted_event_ocall_t {
	int ms_retval;
	void* ms_waiter;
} ms_sgx_thread_set_untrusted_event_ocall_t;

typedef struct ms_sgx_thread_setwait_untrusted_events_ocall_t {
	int ms_retval;
	void* ms_waiter;
	void* ms_self;
} ms_sgx_thread_setwait_untrusted_events_ocall_t;

typedef struct ms_sgx_thread_set_multiple_untrusted_events_ocall_t {
	int ms_retval;
	void** ms_waiters;
	size_t ms_total;
} ms_sgx_thread_set_multiple_untrusted_events_ocall_t;

#ifdef _MSC_VER
#pragma warning(push)
#pragma warning(disable: 4127)
#pragma warning(disable: 4200)
#endif

static sgx_status_t SGX_CDECL sgx_enclaveIterate(void* pms)
{
	ms_enclaveIterate_t* ms = SGX_CAST(ms_enclaveIterate_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint64_t* _tmp_data = ms->ms_data;
	size_t _tmp_length = ms->ms_length;
	size_t _len_data = _tmp_length * sizeof(*_tmp_data);
	uint64_t* _in_data = NULL;

	if ((size_t)_tmp_length > (SIZE_MAX / sizeof(*_tmp_data))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveIterate_t));
	CHECK_UNIQUE_POINTER(_tmp_data, _len_data);

	if (_tmp_data != NULL) {
		_in_data = (uint64_t*)malloc(_len_data);
		if (_in_data == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_data, _tmp_data, _len_data);
	}
	ms->ms_retval = enclaveIterate(_in_data, _tmp_length);
err:
	if (_in_data) free(_in_data);

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveVByteEncode(void* pms)
{
	ms_enclaveVByteEncode_t* ms = SGX_CAST(ms_enclaveVByteEncode_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint32_t* _tmp_in = ms->ms_in;
	size_t _tmp_inLength = ms->ms_inLength;
	size_t _len_in = _tmp_inLength * sizeof(*_tmp_in);
	uint32_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength * sizeof(*_tmp_out);
	uint8_t* _in_out = NULL;

	if ((size_t)_tmp_inLength > (SIZE_MAX / sizeof(*_tmp_in))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	if ((size_t)_tmp_outLength > (SIZE_MAX / sizeof(*_tmp_out))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveVByteEncode_t));
	CHECK_UNIQUE_POINTER(_tmp_in, _len_in);
	CHECK_UNIQUE_POINTER(_tmp_out, _len_out);

	if (_tmp_in != NULL) {
		_in_in = (uint32_t*)malloc(_len_in);
		if (_in_in == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_in, _tmp_in, _len_in);
	}
	if (_tmp_out != NULL) {
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveVByteEncode(_in_in, _tmp_inLength, _in_out, _tmp_outLength);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveVByteDecode(void* pms)
{
	ms_enclaveVByteDecode_t* ms = SGX_CAST(ms_enclaveVByteDecode_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_inLength = ms->ms_inLength;
	size_t _len_in = _tmp_inLength * sizeof(*_tmp_in);
	uint8_t* _in_in = NULL;
	uint32_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength * sizeof(*_tmp_out);
	uint32_t* _in_out = NULL;

	if ((size_t)_tmp_inLength > (SIZE_MAX / sizeof(*_tmp_in))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	if ((size_t)_tmp_outLength > (SIZE_MAX / sizeof(*_tmp_out))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveVByteDecode_t));
	CHECK_UNIQUE_POINTER(_tmp_in, _len_in);
	CHECK_UNIQUE_POINTER(_tmp_out, _len_out);

	if (_tmp_in != NULL) {
		_in_in = (uint8_t*)malloc(_len_in);
		if (_in_in == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_in, _tmp_in, _len_in);
	}
	if (_tmp_out != NULL) {
		if ((_in_out = (uint32_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveVByteDecode(_in_in, _tmp_inLength, _in_out, _tmp_outLength);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

SGX_EXTERNC const struct {
	size_t nr_ecall;
	struct {void* call_addr; uint8_t is_priv;} ecall_table[3];
} g_ecall_table = {
	3,
	{
		{(void*)(uintptr_t)sgx_enclaveIterate, 0},
		{(void*)(uintptr_t)sgx_enclaveVByteEncode, 0},
		{(void*)(uintptr_t)sgx_enclaveVByteDecode, 0},
	}
};

SGX_EXTERNC const struct {
	size_t nr_ocall;
	uint8_t entry_table[5][3];
} g_dyn_entry_table = {
	5,
	{
		{0, 0, 0, },
		{0, 0, 0, },
		{0, 0, 0, },
		{0, 0, 0, },
		{0, 0, 0, },
	}
};


sgx_status_t SGX_CDECL sgx_oc_cpuidex(int cpuinfo[4], int leaf, int subleaf)
{
	sgx_status_t status = SGX_SUCCESS;
	size_t _len_cpuinfo = 4 * sizeof(*cpuinfo);

	ms_sgx_oc_cpuidex_t* ms = NULL;
	size_t ocalloc_size = sizeof(ms_sgx_oc_cpuidex_t);
	void *__tmp = NULL;

	ocalloc_size += (cpuinfo != NULL && sgx_is_within_enclave(cpuinfo, _len_cpuinfo)) ? _len_cpuinfo : 0;

	__tmp = sgx_ocalloc(ocalloc_size);
	if (__tmp == NULL) {
		sgx_ocfree();
		return SGX_ERROR_UNEXPECTED;
	}
	ms = (ms_sgx_oc_cpuidex_t*)__tmp;
	__tmp = (void *)((size_t)__tmp + sizeof(ms_sgx_oc_cpuidex_t));

	if (cpuinfo != NULL && sgx_is_within_enclave(cpuinfo, _len_cpuinfo)) {
		ms->ms_cpuinfo = (int*)__tmp;
		__tmp = (void *)((size_t)__tmp + _len_cpuinfo);
		memcpy(ms->ms_cpuinfo, cpuinfo, _len_cpuinfo);
	} else if (cpuinfo == NULL) {
		ms->ms_cpuinfo = NULL;
	} else {
		sgx_ocfree();
		return SGX_ERROR_INVALID_PARAMETER;
	}
	
	ms->ms_leaf = leaf;
	ms->ms_subleaf = subleaf;
	status = sgx_ocall(0, ms);

	if (cpuinfo) memcpy((void*)cpuinfo, ms->ms_cpuinfo, _len_cpuinfo);

	sgx_ocfree();
	return status;
}

sgx_status_t SGX_CDECL sgx_thread_wait_untrusted_event_ocall(int* retval, const void* self)
{
	sgx_status_t status = SGX_SUCCESS;

	ms_sgx_thread_wait_untrusted_event_ocall_t* ms = NULL;
	size_t ocalloc_size = sizeof(ms_sgx_thread_wait_untrusted_event_ocall_t);
	void *__tmp = NULL;


	__tmp = sgx_ocalloc(ocalloc_size);
	if (__tmp == NULL) {
		sgx_ocfree();
		return SGX_ERROR_UNEXPECTED;
	}
	ms = (ms_sgx_thread_wait_untrusted_event_ocall_t*)__tmp;
	__tmp = (void *)((size_t)__tmp + sizeof(ms_sgx_thread_wait_untrusted_event_ocall_t));

	ms->ms_self = SGX_CAST(void*, self);
	status = sgx_ocall(1, ms);

	if (retval) *retval = ms->ms_retval;

	sgx_ocfree();
	return status;
}

sgx_status_t SGX_CDECL sgx_thread_set_untrusted_event_ocall(int* retval, const void* waiter)
{
	sgx_status_t status = SGX_SUCCESS;

	ms_sgx_thread_set_untrusted_event_ocall_t* ms = NULL;
	size_t ocalloc_size = sizeof(ms_sgx_thread_set_untrusted_event_ocall_t);
	void *__tmp = NULL;


	__tmp = sgx_ocalloc(ocalloc_size);
	if (__tmp == NULL) {
		sgx_ocfree();
		return SGX_ERROR_UNEXPECTED;
	}
	ms = (ms_sgx_thread_set_untrusted_event_ocall_t*)__tmp;
	__tmp = (void *)((size_t)__tmp + sizeof(ms_sgx_thread_set_untrusted_event_ocall_t));

	ms->ms_waiter = SGX_CAST(void*, waiter);
	status = sgx_ocall(2, ms);

	if (retval) *retval = ms->ms_retval;

	sgx_ocfree();
	return status;
}

sgx_status_t SGX_CDECL sgx_thread_setwait_untrusted_events_ocall(int* retval, const void* waiter, const void* self)
{
	sgx_status_t status = SGX_SUCCESS;

	ms_sgx_thread_setwait_untrusted_events_ocall_t* ms = NULL;
	size_t ocalloc_size = sizeof(ms_sgx_thread_setwait_untrusted_events_ocall_t);
	void *__tmp = NULL;


	__tmp = sgx_ocalloc(ocalloc_size);
	if (__tmp == NULL) {
		sgx_ocfree();
		return SGX_ERROR_UNEXPECTED;
	}
	ms = (ms_sgx_thread_setwait_untrusted_events_ocall_t*)__tmp;
	__tmp = (void *)((size_t)__tmp + sizeof(ms_sgx_thread_setwait_untrusted_events_ocall_t));

	ms->ms_waiter = SGX_CAST(void*, waiter);
	ms->ms_self = SGX_CAST(void*, self);
	status = sgx_ocall(3, ms);

	if (retval) *retval = ms->ms_retval;

	sgx_ocfree();
	return status;
}

sgx_status_t SGX_CDECL sgx_thread_set_multiple_untrusted_events_ocall(int* retval, const void** waiters, size_t total)
{
	sgx_status_t status = SGX_SUCCESS;
	size_t _len_waiters = total * sizeof(*waiters);

	ms_sgx_thread_set_multiple_untrusted_events_ocall_t* ms = NULL;
	size_t ocalloc_size = sizeof(ms_sgx_thread_set_multiple_untrusted_events_ocall_t);
	void *__tmp = NULL;

	ocalloc_size += (waiters != NULL && sgx_is_within_enclave(waiters, _len_waiters)) ? _len_waiters : 0;

	__tmp = sgx_ocalloc(ocalloc_size);
	if (__tmp == NULL) {
		sgx_ocfree();
		return SGX_ERROR_UNEXPECTED;
	}
	ms = (ms_sgx_thread_set_multiple_untrusted_events_ocall_t*)__tmp;
	__tmp = (void *)((size_t)__tmp + sizeof(ms_sgx_thread_set_multiple_untrusted_events_ocall_t));

	if (waiters != NULL && sgx_is_within_enclave(waiters, _len_waiters)) {
		ms->ms_waiters = (void**)__tmp;
		__tmp = (void *)((size_t)__tmp + _len_waiters);
		memcpy((void*)ms->ms_waiters, waiters, _len_waiters);
	} else if (waiters == NULL) {
		ms->ms_waiters = NULL;
	} else {
		sgx_ocfree();
		return SGX_ERROR_INVALID_PARAMETER;
	}
	
	ms->ms_total = total;
	status = sgx_ocall(4, ms);

	if (retval) *retval = ms->ms_retval;

	sgx_ocfree();
	return status;
}

#ifdef _MSC_VER
#pragma warning(pop)
#endif

#include "ExampleEnclave_t.h"

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


typedef struct ms_enclaveAllocateHeapMemory_t {
	int ms_numBytes;
} ms_enclaveAllocateHeapMemory_t;


typedef struct ms_enclaveVectorization_t {
	float* ms_a;
	float* ms_b;
	float* ms_c;
	float* ms_d;
	float* ms_e;
	int ms_n;
} ms_enclaveVectorization_t;

typedef struct ms_ocallLogProgress_t {
	char* ms_message;
	size_t ms_len;
} ms_ocallLogProgress_t;

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

static sgx_status_t SGX_CDECL sgx_enclaveAllocateHeapMemory(void* pms)
{
	ms_enclaveAllocateHeapMemory_t* ms = SGX_CAST(ms_enclaveAllocateHeapMemory_t*, pms);
	sgx_status_t status = SGX_SUCCESS;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveAllocateHeapMemory_t));

	enclaveAllocateHeapMemory(ms->ms_numBytes);


	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveAllocateStackMemory(void* pms)
{
	sgx_status_t status = SGX_SUCCESS;
	if (pms != NULL) return SGX_ERROR_INVALID_PARAMETER;
	enclaveAllocateStackMemory();
	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveVectorization(void* pms)
{
	ms_enclaveVectorization_t* ms = SGX_CAST(ms_enclaveVectorization_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	float* _tmp_a = ms->ms_a;
	int _tmp_n = ms->ms_n;
	size_t _len_a = _tmp_n * sizeof(*_tmp_a);
	float* _in_a = NULL;
	float* _tmp_b = ms->ms_b;
	size_t _len_b = _tmp_n * sizeof(*_tmp_b);
	float* _in_b = NULL;
	float* _tmp_c = ms->ms_c;
	size_t _len_c = _tmp_n * sizeof(*_tmp_c);
	float* _in_c = NULL;
	float* _tmp_d = ms->ms_d;
	size_t _len_d = _tmp_n * sizeof(*_tmp_d);
	float* _in_d = NULL;
	float* _tmp_e = ms->ms_e;
	size_t _len_e = _tmp_n * sizeof(*_tmp_e);
	float* _in_e = NULL;

	if ((size_t)_tmp_n > (SIZE_MAX / sizeof(*_tmp_a))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	if ((size_t)_tmp_n > (SIZE_MAX / sizeof(*_tmp_b))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	if ((size_t)_tmp_n > (SIZE_MAX / sizeof(*_tmp_c))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	if ((size_t)_tmp_n > (SIZE_MAX / sizeof(*_tmp_d))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	if ((size_t)_tmp_n > (SIZE_MAX / sizeof(*_tmp_e))) {
		status = SGX_ERROR_INVALID_PARAMETER;
		goto err;
	}

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveVectorization_t));
	CHECK_UNIQUE_POINTER(_tmp_a, _len_a);
	CHECK_UNIQUE_POINTER(_tmp_b, _len_b);
	CHECK_UNIQUE_POINTER(_tmp_c, _len_c);
	CHECK_UNIQUE_POINTER(_tmp_d, _len_d);
	CHECK_UNIQUE_POINTER(_tmp_e, _len_e);

	if (_tmp_a != NULL) {
		_in_a = (float*)malloc(_len_a);
		if (_in_a == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_a, _tmp_a, _len_a);
	}
	if (_tmp_b != NULL) {
		_in_b = (float*)malloc(_len_b);
		if (_in_b == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_b, _tmp_b, _len_b);
	}
	if (_tmp_c != NULL) {
		_in_c = (float*)malloc(_len_c);
		if (_in_c == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_c, _tmp_c, _len_c);
	}
	if (_tmp_d != NULL) {
		_in_d = (float*)malloc(_len_d);
		if (_in_d == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_d, _tmp_d, _len_d);
	}
	if (_tmp_e != NULL) {
		_in_e = (float*)malloc(_len_e);
		if (_in_e == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_e, _tmp_e, _len_e);
	}
	enclaveVectorization(_in_a, _in_b, _in_c, _in_d, _in_e, _tmp_n);
err:
	if (_in_a) free(_in_a);
	if (_in_b) free(_in_b);
	if (_in_c) free(_in_c);
	if (_in_d) free(_in_d);
	if (_in_e) free(_in_e);

	return status;
}

SGX_EXTERNC const struct {
	size_t nr_ecall;
	struct {void* call_addr; uint8_t is_priv;} ecall_table[3];
} g_ecall_table = {
	3,
	{
		{(void*)(uintptr_t)sgx_enclaveAllocateHeapMemory, 0},
		{(void*)(uintptr_t)sgx_enclaveAllocateStackMemory, 0},
		{(void*)(uintptr_t)sgx_enclaveVectorization, 0},
	}
};

SGX_EXTERNC const struct {
	size_t nr_ocall;
	uint8_t entry_table[6][3];
} g_dyn_entry_table = {
	6,
	{
		{0, 0, 0, },
		{0, 0, 0, },
		{0, 0, 0, },
		{0, 0, 0, },
		{0, 0, 0, },
		{0, 0, 0, },
	}
};


sgx_status_t SGX_CDECL ocallLogProgress(const char* message, size_t len)
{
	sgx_status_t status = SGX_SUCCESS;
	size_t _len_message = len;

	ms_ocallLogProgress_t* ms = NULL;
	size_t ocalloc_size = sizeof(ms_ocallLogProgress_t);
	void *__tmp = NULL;

	ocalloc_size += (message != NULL && sgx_is_within_enclave(message, _len_message)) ? _len_message : 0;

	__tmp = sgx_ocalloc(ocalloc_size);
	if (__tmp == NULL) {
		sgx_ocfree();
		return SGX_ERROR_UNEXPECTED;
	}
	ms = (ms_ocallLogProgress_t*)__tmp;
	__tmp = (void *)((size_t)__tmp + sizeof(ms_ocallLogProgress_t));

	if (message != NULL && sgx_is_within_enclave(message, _len_message)) {
		ms->ms_message = (char*)__tmp;
		__tmp = (void *)((size_t)__tmp + _len_message);
		memcpy((void*)ms->ms_message, message, _len_message);
	} else if (message == NULL) {
		ms->ms_message = NULL;
	} else {
		sgx_ocfree();
		return SGX_ERROR_INVALID_PARAMETER;
	}
	
	ms->ms_len = len;
	status = sgx_ocall(0, ms);


	sgx_ocfree();
	return status;
}

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
	status = sgx_ocall(1, ms);

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
	status = sgx_ocall(2, ms);

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
	status = sgx_ocall(3, ms);

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
	status = sgx_ocall(4, ms);

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
	status = sgx_ocall(5, ms);

	if (retval) *retval = ms->ms_retval;

	sgx_ocfree();
	return status;
}

#ifdef _MSC_VER
#pragma warning(pop)
#endif

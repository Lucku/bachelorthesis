#include "ExampleEnclave_u.h"
#include <errno.h>

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

static sgx_status_t SGX_CDECL ExampleEnclave_ocallLogProgress(void* pms)
{
	ms_ocallLogProgress_t* ms = SGX_CAST(ms_ocallLogProgress_t*, pms);
	ocallLogProgress((const char*)ms->ms_message, ms->ms_len);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL ExampleEnclave_sgx_oc_cpuidex(void* pms)
{
	ms_sgx_oc_cpuidex_t* ms = SGX_CAST(ms_sgx_oc_cpuidex_t*, pms);
	sgx_oc_cpuidex(ms->ms_cpuinfo, ms->ms_leaf, ms->ms_subleaf);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL ExampleEnclave_sgx_thread_wait_untrusted_event_ocall(void* pms)
{
	ms_sgx_thread_wait_untrusted_event_ocall_t* ms = SGX_CAST(ms_sgx_thread_wait_untrusted_event_ocall_t*, pms);
	ms->ms_retval = sgx_thread_wait_untrusted_event_ocall((const void*)ms->ms_self);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL ExampleEnclave_sgx_thread_set_untrusted_event_ocall(void* pms)
{
	ms_sgx_thread_set_untrusted_event_ocall_t* ms = SGX_CAST(ms_sgx_thread_set_untrusted_event_ocall_t*, pms);
	ms->ms_retval = sgx_thread_set_untrusted_event_ocall((const void*)ms->ms_waiter);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL ExampleEnclave_sgx_thread_setwait_untrusted_events_ocall(void* pms)
{
	ms_sgx_thread_setwait_untrusted_events_ocall_t* ms = SGX_CAST(ms_sgx_thread_setwait_untrusted_events_ocall_t*, pms);
	ms->ms_retval = sgx_thread_setwait_untrusted_events_ocall((const void*)ms->ms_waiter, (const void*)ms->ms_self);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL ExampleEnclave_sgx_thread_set_multiple_untrusted_events_ocall(void* pms)
{
	ms_sgx_thread_set_multiple_untrusted_events_ocall_t* ms = SGX_CAST(ms_sgx_thread_set_multiple_untrusted_events_ocall_t*, pms);
	ms->ms_retval = sgx_thread_set_multiple_untrusted_events_ocall((const void**)ms->ms_waiters, ms->ms_total);

	return SGX_SUCCESS;
}

static const struct {
	size_t nr_ocall;
	void * func_addr[6];
} ocall_table_ExampleEnclave = {
	6,
	{
		(void*)(uintptr_t)ExampleEnclave_ocallLogProgress,
		(void*)(uintptr_t)ExampleEnclave_sgx_oc_cpuidex,
		(void*)(uintptr_t)ExampleEnclave_sgx_thread_wait_untrusted_event_ocall,
		(void*)(uintptr_t)ExampleEnclave_sgx_thread_set_untrusted_event_ocall,
		(void*)(uintptr_t)ExampleEnclave_sgx_thread_setwait_untrusted_events_ocall,
		(void*)(uintptr_t)ExampleEnclave_sgx_thread_set_multiple_untrusted_events_ocall,
	}
};

sgx_status_t enclaveAllocateHeapMemory(sgx_enclave_id_t eid, int numBytes)
{
	sgx_status_t status;
	ms_enclaveAllocateHeapMemory_t ms;
	ms.ms_numBytes = numBytes;
	status = sgx_ecall(eid, 0, &ocall_table_ExampleEnclave, &ms);
	return status;
}

sgx_status_t enclaveAllocateStackMemory(sgx_enclave_id_t eid)
{
	sgx_status_t status;
	status = sgx_ecall(eid, 1, &ocall_table_ExampleEnclave, NULL);
	return status;
}

sgx_status_t enclaveVectorization(sgx_enclave_id_t eid, float* a, float* b, float* c, float* d, float* e, int n)
{
	sgx_status_t status;
	ms_enclaveVectorization_t ms;
	ms.ms_a = a;
	ms.ms_b = b;
	ms.ms_c = c;
	ms.ms_d = d;
	ms.ms_e = e;
	ms.ms_n = n;
	status = sgx_ecall(eid, 2, &ocall_table_ExampleEnclave, &ms);
	return status;
}


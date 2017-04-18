#include "PerformanceTests_u.h"
#include <errno.h>

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

static sgx_status_t SGX_CDECL PerformanceTests_sgx_oc_cpuidex(void* pms)
{
	ms_sgx_oc_cpuidex_t* ms = SGX_CAST(ms_sgx_oc_cpuidex_t*, pms);
	sgx_oc_cpuidex(ms->ms_cpuinfo, ms->ms_leaf, ms->ms_subleaf);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL PerformanceTests_sgx_thread_wait_untrusted_event_ocall(void* pms)
{
	ms_sgx_thread_wait_untrusted_event_ocall_t* ms = SGX_CAST(ms_sgx_thread_wait_untrusted_event_ocall_t*, pms);
	ms->ms_retval = sgx_thread_wait_untrusted_event_ocall((const void*)ms->ms_self);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL PerformanceTests_sgx_thread_set_untrusted_event_ocall(void* pms)
{
	ms_sgx_thread_set_untrusted_event_ocall_t* ms = SGX_CAST(ms_sgx_thread_set_untrusted_event_ocall_t*, pms);
	ms->ms_retval = sgx_thread_set_untrusted_event_ocall((const void*)ms->ms_waiter);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL PerformanceTests_sgx_thread_setwait_untrusted_events_ocall(void* pms)
{
	ms_sgx_thread_setwait_untrusted_events_ocall_t* ms = SGX_CAST(ms_sgx_thread_setwait_untrusted_events_ocall_t*, pms);
	ms->ms_retval = sgx_thread_setwait_untrusted_events_ocall((const void*)ms->ms_waiter, (const void*)ms->ms_self);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL PerformanceTests_sgx_thread_set_multiple_untrusted_events_ocall(void* pms)
{
	ms_sgx_thread_set_multiple_untrusted_events_ocall_t* ms = SGX_CAST(ms_sgx_thread_set_multiple_untrusted_events_ocall_t*, pms);
	ms->ms_retval = sgx_thread_set_multiple_untrusted_events_ocall((const void**)ms->ms_waiters, ms->ms_total);

	return SGX_SUCCESS;
}

static const struct {
	size_t nr_ocall;
	void * func_addr[5];
} ocall_table_PerformanceTests = {
	5,
	{
		(void*)(uintptr_t)PerformanceTests_sgx_oc_cpuidex,
		(void*)(uintptr_t)PerformanceTests_sgx_thread_wait_untrusted_event_ocall,
		(void*)(uintptr_t)PerformanceTests_sgx_thread_set_untrusted_event_ocall,
		(void*)(uintptr_t)PerformanceTests_sgx_thread_setwait_untrusted_events_ocall,
		(void*)(uintptr_t)PerformanceTests_sgx_thread_set_multiple_untrusted_events_ocall,
	}
};

sgx_status_t enclaveIterate(sgx_enclave_id_t eid, int* retval, uint64_t* data, size_t length)
{
	sgx_status_t status;
	ms_enclaveIterate_t ms;
	ms.ms_data = data;
	ms.ms_length = length;
	status = sgx_ecall(eid, 0, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveVByteEncode(sgx_enclave_id_t eid, int* retval, uint32_t* in, size_t inLength, uint8_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveVByteEncode_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 1, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveVByteDecode(sgx_enclave_id_t eid, int* retval, uint8_t* in, size_t inLength, uint32_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveVByteDecode_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 2, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}


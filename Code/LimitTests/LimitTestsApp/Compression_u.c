#include "Compression_u.h"
#include <errno.h>

typedef struct ms_vByteEncode_t {
	size_t ms_retval;
	uint32_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_vByteEncode_t;

typedef struct ms_vByteDecode_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint32_t* ms_out;
} ms_vByteDecode_t;

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

static sgx_status_t SGX_CDECL Compression_sgx_oc_cpuidex(void* pms)
{
	ms_sgx_oc_cpuidex_t* ms = SGX_CAST(ms_sgx_oc_cpuidex_t*, pms);
	sgx_oc_cpuidex(ms->ms_cpuinfo, ms->ms_leaf, ms->ms_subleaf);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL Compression_sgx_thread_wait_untrusted_event_ocall(void* pms)
{
	ms_sgx_thread_wait_untrusted_event_ocall_t* ms = SGX_CAST(ms_sgx_thread_wait_untrusted_event_ocall_t*, pms);
	ms->ms_retval = sgx_thread_wait_untrusted_event_ocall((const void*)ms->ms_self);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL Compression_sgx_thread_set_untrusted_event_ocall(void* pms)
{
	ms_sgx_thread_set_untrusted_event_ocall_t* ms = SGX_CAST(ms_sgx_thread_set_untrusted_event_ocall_t*, pms);
	ms->ms_retval = sgx_thread_set_untrusted_event_ocall((const void*)ms->ms_waiter);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL Compression_sgx_thread_setwait_untrusted_events_ocall(void* pms)
{
	ms_sgx_thread_setwait_untrusted_events_ocall_t* ms = SGX_CAST(ms_sgx_thread_setwait_untrusted_events_ocall_t*, pms);
	ms->ms_retval = sgx_thread_setwait_untrusted_events_ocall((const void*)ms->ms_waiter, (const void*)ms->ms_self);

	return SGX_SUCCESS;
}

static sgx_status_t SGX_CDECL Compression_sgx_thread_set_multiple_untrusted_events_ocall(void* pms)
{
	ms_sgx_thread_set_multiple_untrusted_events_ocall_t* ms = SGX_CAST(ms_sgx_thread_set_multiple_untrusted_events_ocall_t*, pms);
	ms->ms_retval = sgx_thread_set_multiple_untrusted_events_ocall((const void**)ms->ms_waiters, ms->ms_total);

	return SGX_SUCCESS;
}

static const struct {
	size_t nr_ocall;
	void * func_addr[5];
} ocall_table_Compression = {
	5,
	{
		(void*)(uintptr_t)Compression_sgx_oc_cpuidex,
		(void*)(uintptr_t)Compression_sgx_thread_wait_untrusted_event_ocall,
		(void*)(uintptr_t)Compression_sgx_thread_set_untrusted_event_ocall,
		(void*)(uintptr_t)Compression_sgx_thread_setwait_untrusted_events_ocall,
		(void*)(uintptr_t)Compression_sgx_thread_set_multiple_untrusted_events_ocall,
	}
};

sgx_status_t vByteEncode(sgx_enclave_id_t eid, size_t* retval, uint32_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_vByteEncode_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 0, &ocall_table_Compression, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t vByteDecode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint32_t* out)
{
	sgx_status_t status;
	ms_vByteDecode_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 1, &ocall_table_Compression, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}


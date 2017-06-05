#include "PerformanceTests_u.h"
#include <errno.h>

typedef struct ms_enclaveIterate_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveIterate_t;

typedef struct ms_enclaveJustCopy_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveJustCopy_t;

typedef struct ms_enclaveNoCopy_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveNoCopy_t;

typedef struct ms_enclaveCompleteProcess_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveCompleteProcess_t;

typedef struct ms_enclaveVByteEncode_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_inLength;
	uint8_t* ms_out;
	size_t ms_outLength;
} ms_enclaveVByteEncode_t;

typedef struct ms_enclaveVByteDecode_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_inLength;
	uint8_t* ms_out;
	size_t ms_outLength;
} ms_enclaveVByteDecode_t;

typedef struct ms_enclaveVByte_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_inLength;
	uint8_t* ms_out;
	size_t ms_outLength;
} ms_enclaveVByte_t;

typedef struct ms_enclaveCrypto_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_inLength;
	uint8_t* ms_out;
	size_t ms_outLength;
} ms_enclaveCrypto_t;

typedef struct ms_enclaveCryptoNoCopy_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveCryptoNoCopy_t;

typedef struct ms_enclaveVByteEncodeEncrypted_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveVByteEncodeEncrypted_t;

typedef struct ms_enclaveVByteDecodeEncrypted_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveVByteDecodeEncrypted_t;

typedef struct ms_enclaveRunLengthEncode_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_inLength;
	uint8_t* ms_out;
	size_t ms_outLength;
} ms_enclaveRunLengthEncode_t;

typedef struct ms_enclaveRunLengthDecode_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_inLength;
	uint8_t* ms_out;
	size_t ms_outLength;
} ms_enclaveRunLengthDecode_t;

typedef struct ms_enclaveRunLengthEncodeAndSum_t {
	size_t ms_retval;
	uint8_t* ms_in;
	size_t ms_length;
	uint8_t* ms_out;
} ms_enclaveRunLengthEncodeAndSum_t;

typedef struct ms_encryptBytes_t {
	int ms_retval;
	uint8_t* ms_input;
	size_t ms_length;
	uint8_t* ms_output;
	uint8_t* ms_key;
	size_t ms_keyLength;
	uint8_t* ms_iv;
} ms_encryptBytes_t;

typedef struct ms_decryptBytes_t {
	int ms_retval;
	uint8_t* ms_input;
	size_t ms_length;
	uint8_t* ms_output;
	uint8_t* ms_key;
	size_t ms_keyLength;
	uint8_t* ms_iv;
} ms_decryptBytes_t;

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

sgx_status_t enclaveIterate(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveIterate_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 0, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveJustCopy(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveJustCopy_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 1, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveNoCopy(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveNoCopy_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 2, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveCompleteProcess(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveCompleteProcess_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 3, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveVByteEncode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveVByteEncode_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 4, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveVByteDecode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveVByteDecode_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 5, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveVByte(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveVByte_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 6, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveCrypto(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveCrypto_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 7, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveCryptoNoCopy(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveCryptoNoCopy_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 8, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveVByteEncodeEncrypted(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveVByteEncodeEncrypted_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 9, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveVByteDecodeEncrypted(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveVByteDecodeEncrypted_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 10, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveRunLengthEncode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveRunLengthEncode_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 11, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveRunLengthDecode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength)
{
	sgx_status_t status;
	ms_enclaveRunLengthDecode_t ms;
	ms.ms_in = in;
	ms.ms_inLength = inLength;
	ms.ms_out = out;
	ms.ms_outLength = outLength;
	status = sgx_ecall(eid, 12, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t enclaveRunLengthEncodeAndSum(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out)
{
	sgx_status_t status;
	ms_enclaveRunLengthEncodeAndSum_t ms;
	ms.ms_in = in;
	ms.ms_length = length;
	ms.ms_out = out;
	status = sgx_ecall(eid, 13, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t encryptBytes(sgx_enclave_id_t eid, int* retval, uint8_t* input, size_t length, uint8_t* output, const uint8_t* key, size_t keyLength, uint8_t* iv)
{
	sgx_status_t status;
	ms_encryptBytes_t ms;
	ms.ms_input = input;
	ms.ms_length = length;
	ms.ms_output = output;
	ms.ms_key = (uint8_t*)key;
	ms.ms_keyLength = keyLength;
	ms.ms_iv = iv;
	status = sgx_ecall(eid, 14, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}

sgx_status_t decryptBytes(sgx_enclave_id_t eid, int* retval, uint8_t* input, size_t length, uint8_t* output, const uint8_t* key, size_t keyLength, uint8_t* iv)
{
	sgx_status_t status;
	ms_decryptBytes_t ms;
	ms.ms_input = input;
	ms.ms_length = length;
	ms.ms_output = output;
	ms.ms_key = (uint8_t*)key;
	ms.ms_keyLength = keyLength;
	ms.ms_iv = iv;
	status = sgx_ecall(eid, 15, &ocall_table_PerformanceTests, &ms);
	if (status == SGX_SUCCESS && retval) *retval = ms.ms_retval;
	return status;
}


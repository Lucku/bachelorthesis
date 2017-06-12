#ifndef PERFORMANCETESTS_U_H__
#define PERFORMANCETESTS_U_H__

#include <stdint.h>
#include <wchar.h>
#include <stddef.h>
#include <string.h>
#include "sgx_edger8r.h" /* for sgx_status_t etc. */


#define SGX_CAST(type, item) ((type)(item))

#ifdef __cplusplus
extern "C" {
#endif

void SGX_UBRIDGE(SGX_CDECL, sgx_oc_cpuidex, (int cpuinfo[4], int leaf, int subleaf));
int SGX_UBRIDGE(SGX_CDECL, sgx_thread_wait_untrusted_event_ocall, (const void* self));
int SGX_UBRIDGE(SGX_CDECL, sgx_thread_set_untrusted_event_ocall, (const void* waiter));
int SGX_UBRIDGE(SGX_CDECL, sgx_thread_setwait_untrusted_events_ocall, (const void* waiter, const void* self));
int SGX_UBRIDGE(SGX_CDECL, sgx_thread_set_multiple_untrusted_events_ocall, (const void** waiters, size_t total));

sgx_status_t enclaveJustCopy(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t enclaveNoCopy(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t enclaveCryptoNoCopy(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t enclaveIterate(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t enclaveVByteEncode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
sgx_status_t enclaveVByteDecode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
sgx_status_t enclaveRunLengthEncode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
sgx_status_t enclaveRunLengthDecode(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
sgx_status_t enclaveRunLengthEncodeAndSum(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t enclaveVByte(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
sgx_status_t enclaveVByteDecodeEncrypted(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t enclaveVByteEncodeEncrypted(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t enclaveCrypto(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
sgx_status_t enclaveCompleteProcess(sgx_enclave_id_t eid, size_t* retval, uint8_t* in, size_t length, uint8_t* out);
sgx_status_t encryptBytes(sgx_enclave_id_t eid, int* retval, uint8_t* input, size_t length, uint8_t* output, const uint8_t* key, size_t keyLength, uint8_t* iv);
sgx_status_t decryptBytes(sgx_enclave_id_t eid, int* retval, uint8_t* input, size_t length, uint8_t* output, const uint8_t* key, size_t keyLength, uint8_t* iv);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif

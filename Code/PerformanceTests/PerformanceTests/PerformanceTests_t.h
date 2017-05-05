#ifndef PERFORMANCETESTS_T_H__
#define PERFORMANCETESTS_T_H__

#include <stdint.h>
#include <wchar.h>
#include <stddef.h>
#include "sgx_edger8r.h" /* for sgx_ocall etc. */

#include "sgxssl_texception.h"

#define SGX_CAST(type, item) ((type)(item))

#ifdef __cplusplus
extern "C" {
#endif


size_t enclaveIterate(uint8_t* in, size_t length, uint8_t* out);
size_t enclaveVByteEncode(uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
size_t enclaveVByteDecode(uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
size_t enclaveVByteEncodeEncrypted(uint8_t* in, size_t length, uint8_t* out);
size_t enclaveVByteDecodeEncrypted(uint8_t* in, size_t length, uint8_t* out);
size_t enclaveRunLengthEncode(uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
size_t enclaveRunLengthDecode(uint8_t* in, size_t inLength, uint8_t* out, size_t outLength);
size_t enclaveRunLengthEncodeAndSum(uint8_t* in, size_t length, uint8_t* out);
int encryptBytes(uint8_t* input, size_t inLength, uint8_t* output, size_t outLength, const uint8_t* key, size_t keyLength, uint8_t* iv);
int decryptBytes(uint8_t* input, size_t inLength, uint8_t* output, size_t outLength, const uint8_t* key, size_t keyLength, uint8_t* iv);

sgx_status_t SGX_CDECL u_sgxssl_ftime64(void* timeptr, uint32_t timeb64Len);
sgx_status_t SGX_CDECL u_sgxssl_closesocket(int* retval, void* s, int* wsaError);
sgx_status_t SGX_CDECL u_sgxssl_recv(int* retval, void* s, void* buf, int len, int flag, int* wsaError);
sgx_status_t SGX_CDECL u_sgxssl_send(int* retval, void* s, const char* buf, int len, int flags, int* wsaError);
sgx_status_t SGX_CDECL u_sgxssl_shutdown(int* retval, void* s, int how, int* wsaError);
sgx_status_t SGX_CDECL sgx_oc_cpuidex(int cpuinfo[4], int leaf, int subleaf);
sgx_status_t SGX_CDECL sgx_thread_wait_untrusted_event_ocall(int* retval, const void* self);
sgx_status_t SGX_CDECL sgx_thread_set_untrusted_event_ocall(int* retval, const void* waiter);
sgx_status_t SGX_CDECL sgx_thread_setwait_untrusted_events_ocall(int* retval, const void* waiter, const void* self);
sgx_status_t SGX_CDECL sgx_thread_set_multiple_untrusted_events_ocall(int* retval, const void** waiters, size_t total);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif

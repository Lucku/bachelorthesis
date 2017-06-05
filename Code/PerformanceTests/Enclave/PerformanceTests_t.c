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

#ifdef _MSC_VER
#pragma warning(push)
#pragma warning(disable: 4127)
#pragma warning(disable: 4200)
#endif

static sgx_status_t SGX_CDECL sgx_enclaveIterate(void* pms)
{
	ms_enclaveIterate_t* ms = SGX_CAST(ms_enclaveIterate_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_length = ms->ms_length;
	size_t _len_in = _tmp_length;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _len_out = _tmp_length;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveIterate_t));
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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveIterate(_in_in, _tmp_length, _in_out);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveJustCopy(void* pms)
{
	ms_enclaveJustCopy_t* ms = SGX_CAST(ms_enclaveJustCopy_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_length = ms->ms_length;
	size_t _len_in = _tmp_length;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _len_out = _tmp_length;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveJustCopy_t));
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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveJustCopy(_in_in, _tmp_length, _in_out);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveNoCopy(void* pms)
{
	ms_enclaveNoCopy_t* ms = SGX_CAST(ms_enclaveNoCopy_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	uint8_t* _tmp_out = ms->ms_out;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveNoCopy_t));

	ms->ms_retval = enclaveNoCopy(_tmp_in, ms->ms_length, _tmp_out);


	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveCompleteProcess(void* pms)
{
	ms_enclaveCompleteProcess_t* ms = SGX_CAST(ms_enclaveCompleteProcess_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	uint8_t* _tmp_out = ms->ms_out;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveCompleteProcess_t));

	ms->ms_retval = enclaveCompleteProcess(_tmp_in, ms->ms_length, _tmp_out);


	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveVByteEncode(void* pms)
{
	ms_enclaveVByteEncode_t* ms = SGX_CAST(ms_enclaveVByteEncode_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_inLength = ms->ms_inLength;
	size_t _len_in = _tmp_inLength;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveVByteEncode_t));
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
	size_t _len_in = _tmp_inLength;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength;
	uint8_t* _in_out = NULL;

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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
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

static sgx_status_t SGX_CDECL sgx_enclaveVByte(void* pms)
{
	ms_enclaveVByte_t* ms = SGX_CAST(ms_enclaveVByte_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_inLength = ms->ms_inLength;
	size_t _len_in = _tmp_inLength;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveVByte_t));
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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveVByte(_in_in, _tmp_inLength, _in_out, _tmp_outLength);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveCrypto(void* pms)
{
	ms_enclaveCrypto_t* ms = SGX_CAST(ms_enclaveCrypto_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_inLength = ms->ms_inLength;
	size_t _len_in = _tmp_inLength;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveCrypto_t));
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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveCrypto(_in_in, _tmp_inLength, _in_out, _tmp_outLength);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveCryptoNoCopy(void* pms)
{
	ms_enclaveCryptoNoCopy_t* ms = SGX_CAST(ms_enclaveCryptoNoCopy_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	uint8_t* _tmp_out = ms->ms_out;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveCryptoNoCopy_t));

	ms->ms_retval = enclaveCryptoNoCopy(_tmp_in, ms->ms_length, _tmp_out);


	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveVByteEncodeEncrypted(void* pms)
{
	ms_enclaveVByteEncodeEncrypted_t* ms = SGX_CAST(ms_enclaveVByteEncodeEncrypted_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	uint8_t* _tmp_out = ms->ms_out;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveVByteEncodeEncrypted_t));

	ms->ms_retval = enclaveVByteEncodeEncrypted(_tmp_in, ms->ms_length, _tmp_out);


	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveVByteDecodeEncrypted(void* pms)
{
	ms_enclaveVByteDecodeEncrypted_t* ms = SGX_CAST(ms_enclaveVByteDecodeEncrypted_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	uint8_t* _tmp_out = ms->ms_out;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveVByteDecodeEncrypted_t));

	ms->ms_retval = enclaveVByteDecodeEncrypted(_tmp_in, ms->ms_length, _tmp_out);


	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveRunLengthEncode(void* pms)
{
	ms_enclaveRunLengthEncode_t* ms = SGX_CAST(ms_enclaveRunLengthEncode_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_inLength = ms->ms_inLength;
	size_t _len_in = _tmp_inLength;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveRunLengthEncode_t));
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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveRunLengthEncode(_in_in, _tmp_inLength, _in_out, _tmp_outLength);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveRunLengthDecode(void* pms)
{
	ms_enclaveRunLengthDecode_t* ms = SGX_CAST(ms_enclaveRunLengthDecode_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_inLength = ms->ms_inLength;
	size_t _len_in = _tmp_inLength;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _tmp_outLength = ms->ms_outLength;
	size_t _len_out = _tmp_outLength;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveRunLengthDecode_t));
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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveRunLengthDecode(_in_in, _tmp_inLength, _in_out, _tmp_outLength);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_enclaveRunLengthEncodeAndSum(void* pms)
{
	ms_enclaveRunLengthEncodeAndSum_t* ms = SGX_CAST(ms_enclaveRunLengthEncodeAndSum_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_in = ms->ms_in;
	size_t _tmp_length = ms->ms_length;
	size_t _len_in = _tmp_length;
	uint8_t* _in_in = NULL;
	uint8_t* _tmp_out = ms->ms_out;
	size_t _len_out = 8;
	uint8_t* _in_out = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_enclaveRunLengthEncodeAndSum_t));
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
		if ((_in_out = (uint8_t*)malloc(_len_out)) == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memset((void*)_in_out, 0, _len_out);
	}
	ms->ms_retval = enclaveRunLengthEncodeAndSum(_in_in, _tmp_length, _in_out);
err:
	if (_in_in) free(_in_in);
	if (_in_out) {
		memcpy(_tmp_out, _in_out, _len_out);
		free(_in_out);
	}

	return status;
}

static sgx_status_t SGX_CDECL sgx_encryptBytes(void* pms)
{
	ms_encryptBytes_t* ms = SGX_CAST(ms_encryptBytes_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_input = ms->ms_input;
	size_t _tmp_length = ms->ms_length;
	size_t _len_input = _tmp_length;
	uint8_t* _in_input = NULL;
	uint8_t* _tmp_output = ms->ms_output;
	uint8_t* _tmp_key = ms->ms_key;
	size_t _tmp_keyLength = ms->ms_keyLength;
	size_t _len_key = _tmp_keyLength;
	uint8_t* _in_key = NULL;
	uint8_t* _tmp_iv = ms->ms_iv;
	size_t _len_iv = 16;
	uint8_t* _in_iv = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_encryptBytes_t));
	CHECK_UNIQUE_POINTER(_tmp_input, _len_input);
	CHECK_UNIQUE_POINTER(_tmp_key, _len_key);
	CHECK_UNIQUE_POINTER(_tmp_iv, _len_iv);

	if (_tmp_input != NULL) {
		_in_input = (uint8_t*)malloc(_len_input);
		if (_in_input == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_input, _tmp_input, _len_input);
	}
	if (_tmp_key != NULL) {
		_in_key = (uint8_t*)malloc(_len_key);
		if (_in_key == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy((void*)_in_key, _tmp_key, _len_key);
	}
	if (_tmp_iv != NULL) {
		_in_iv = (uint8_t*)malloc(_len_iv);
		if (_in_iv == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_iv, _tmp_iv, _len_iv);
	}
	ms->ms_retval = encryptBytes(_in_input, _tmp_length, _tmp_output, (const uint8_t*)_in_key, _tmp_keyLength, _in_iv);
err:
	if (_in_input) free(_in_input);
	if (_in_key) free((void*)_in_key);
	if (_in_iv) free(_in_iv);

	return status;
}

static sgx_status_t SGX_CDECL sgx_decryptBytes(void* pms)
{
	ms_decryptBytes_t* ms = SGX_CAST(ms_decryptBytes_t*, pms);
	sgx_status_t status = SGX_SUCCESS;
	uint8_t* _tmp_input = ms->ms_input;
	size_t _tmp_length = ms->ms_length;
	size_t _len_input = _tmp_length;
	uint8_t* _in_input = NULL;
	uint8_t* _tmp_output = ms->ms_output;
	uint8_t* _tmp_key = ms->ms_key;
	size_t _tmp_keyLength = ms->ms_keyLength;
	size_t _len_key = _tmp_keyLength;
	uint8_t* _in_key = NULL;
	uint8_t* _tmp_iv = ms->ms_iv;
	size_t _len_iv = 16;
	uint8_t* _in_iv = NULL;

	CHECK_REF_POINTER(pms, sizeof(ms_decryptBytes_t));
	CHECK_UNIQUE_POINTER(_tmp_input, _len_input);
	CHECK_UNIQUE_POINTER(_tmp_key, _len_key);
	CHECK_UNIQUE_POINTER(_tmp_iv, _len_iv);

	if (_tmp_input != NULL) {
		_in_input = (uint8_t*)malloc(_len_input);
		if (_in_input == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_input, _tmp_input, _len_input);
	}
	if (_tmp_key != NULL) {
		_in_key = (uint8_t*)malloc(_len_key);
		if (_in_key == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy((void*)_in_key, _tmp_key, _len_key);
	}
	if (_tmp_iv != NULL) {
		_in_iv = (uint8_t*)malloc(_len_iv);
		if (_in_iv == NULL) {
			status = SGX_ERROR_OUT_OF_MEMORY;
			goto err;
		}

		memcpy(_in_iv, _tmp_iv, _len_iv);
	}
	ms->ms_retval = decryptBytes(_in_input, _tmp_length, _tmp_output, (const uint8_t*)_in_key, _tmp_keyLength, _in_iv);
err:
	if (_in_input) free(_in_input);
	if (_in_key) free((void*)_in_key);
	if (_in_iv) free(_in_iv);

	return status;
}

SGX_EXTERNC const struct {
	size_t nr_ecall;
	struct {void* call_addr; uint8_t is_priv;} ecall_table[16];
} g_ecall_table = {
	16,
	{
		{(void*)(uintptr_t)sgx_enclaveIterate, 0},
		{(void*)(uintptr_t)sgx_enclaveJustCopy, 0},
		{(void*)(uintptr_t)sgx_enclaveNoCopy, 0},
		{(void*)(uintptr_t)sgx_enclaveCompleteProcess, 0},
		{(void*)(uintptr_t)sgx_enclaveVByteEncode, 0},
		{(void*)(uintptr_t)sgx_enclaveVByteDecode, 0},
		{(void*)(uintptr_t)sgx_enclaveVByte, 0},
		{(void*)(uintptr_t)sgx_enclaveCrypto, 0},
		{(void*)(uintptr_t)sgx_enclaveCryptoNoCopy, 0},
		{(void*)(uintptr_t)sgx_enclaveVByteEncodeEncrypted, 0},
		{(void*)(uintptr_t)sgx_enclaveVByteDecodeEncrypted, 0},
		{(void*)(uintptr_t)sgx_enclaveRunLengthEncode, 0},
		{(void*)(uintptr_t)sgx_enclaveRunLengthDecode, 0},
		{(void*)(uintptr_t)sgx_enclaveRunLengthEncodeAndSum, 0},
		{(void*)(uintptr_t)sgx_encryptBytes, 1},
		{(void*)(uintptr_t)sgx_decryptBytes, 1},
	}
};

SGX_EXTERNC const struct {
	size_t nr_ocall;
	uint8_t entry_table[5][16];
} g_dyn_entry_table = {
	5,
	{
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, },
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, },
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, },
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, },
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, },
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

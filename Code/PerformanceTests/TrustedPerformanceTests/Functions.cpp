#include "stdafx.h"
#include "Functions.h"

/*
size_t ecallVByteEncodePreproc(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveVByteEncode(eid, &ret, in, length, out, length * 5);

	return ret;
}

size_t ecallVByteDecode(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveVByteDecode(eid, &ret, in, length, out, length * sizeof(uint32_t));

	return ret;
}

size_t ecallVByteEncodeEncrypted(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveVByteEncodeEncrypted(eid, &ret, in, length, out);

	return ret;
}

size_t ecallVByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	return enclaveVByteDecodeEncrypted(eid, &ret, in, length, out);

	return ret;
}

size_t ecallRunLengthEncode(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveRunLengthEncode(eid, &ret, in, length, out, length * 2);

	return ret;
}

size_t ecallRunLengthEncodePreproc(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveRunLengthEncode(eid, &ret, in, length, out, length * 2 * 6);

	return ret;
}

size_t ecallRunLengthDecode(uint8_t *in, size_t length, uint8_t *out) {

	size_t ret;

	enclaveRunLengthDecode(eid, &ret, in, length, out, length * 6);

	return ret;
}
*/

bytefunc ecall(const sgx_enclave_id_t eid, ecallIOFunc func, float outBufferFactor) {

	std::function<size_t(uint8_t*, size_t, uint8_t*)> f = [=](uint8_t *in, size_t length, uint8_t *out) {

		size_t ret;
		
		return func(eid, &ret, in, length, out, length * outBufferFactor);
	};

	return f;
}

bytefunc ecall(const sgx_enclave_id_t eid, ecallFunc func)
{
	std::function<size_t(uint8_t*, size_t, uint8_t*)> f = [=](uint8_t *in, size_t length, uint8_t *out) {

		size_t ret;

		return func(eid, &ret, in, length, out);
	};

	return f;
}
#include "stdafx.h"
#include "Functions.h"

bytefunc ecall(const sgx_enclave_id_t eid, ecallIOFunc func, sizefunc outBufferFunc) {

	std::function<size_t(uint8_t*, size_t, uint8_t*)> f = [=](uint8_t *in, size_t length, uint8_t *out) {

		size_t ret;
		
		return func(eid, &ret, in, length, out, outBufferFunc(length));
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
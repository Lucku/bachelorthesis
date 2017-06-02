#include "PerformanceTests_t.h"

size_t enclaveRunLengthEncode(uint8_t *in, size_t inLength, uint8_t *out, size_t outLength)
{
	const uint32_t* in32 = reinterpret_cast<const uint32_t*>(in);
	const size_t countIn32 = inLength / sizeof(uint32_t);

	if (countIn32 == 0) return 0;

	const uint32_t* current32 = in32 + 1;
	const uint32_t* const end32 = in32 + countIn32;
	uint32_t* out32 = reinterpret_cast<uint32_t*>(out);
	const uint32_t* const initOut32 = out32;

	uint32_t currentRunValue = *in32;
	const uint32_t* currentRunStart32 = in32;

	while (current32 != end32) {
		if (*current32 != currentRunValue) {

			*out32++ = currentRunValue;
			*out32++ = static_cast<uint32_t>(current32 - currentRunStart32);
			currentRunStart32 = current32;
			currentRunValue = *currentRunStart32;
		}
		current32++;
	}

	*out32++ = currentRunValue;
	*out32++ = static_cast<uint32_t>(current32 - currentRunStart32);
	currentRunStart32 = current32;
	currentRunValue = *currentRunStart32;

	return (out32 - initOut32) * sizeof(uint32_t);
}

/* !WARNING! Decode won't work without encoded data */
size_t enclaveRunLengthDecode(uint8_t *in, size_t inLength, uint8_t *out, size_t outLength)
{
	uint32_t* out32 = reinterpret_cast<uint32_t*>(out);
	const size_t countIn32 = inLength / sizeof(uint32_t);

	if (countIn32 < 2) return 0;

	const uint32_t* const initOut32 = out32;
	const uint32_t* in32 = reinterpret_cast<const uint32_t*>(in);
	for (size_t i = 0; i < countIn32; i += 2) {
		const uint32_t value = in32[i];
		const uint32_t runlength = in32[i + 1];
		for (size_t k = 0; k < runlength; k++)
			*out32++ = value;
	}

	return (out32 - initOut32) * sizeof(uint32_t);
}

size_t enclaveRunLengthEncodeAndSum(uint8_t *in, size_t length, uint8_t *out) {

	uint8_t *encoded = new uint8_t[length << 1];

	size_t encSize = enclaveRunLengthEncode(in, length, encoded, length << 1);

	uint64_t sum64 = 0;

	const uint32_t* in32 = reinterpret_cast<const uint32_t*>(encoded);
	const size_t countIn32 = encSize >> 2;
	for (size_t i = 0; i < countIn32; i += 2) {
		const uint32_t value = in32[i];
		const uint32_t runlength = in32[i + 1];
		sum64 += static_cast<uint64_t>(value) * static_cast<uint64_t>(runlength);
	}

	*reinterpret_cast<uint64_t*>(out) = sum64;

	delete[] encoded;

	return sizeof(uint64_t);
}
#include "PerformanceTests_t.h"

#include <cstdint>

#include "sgx_trts.h"

int enclaveIterate(uint64_t *data, size_t length) {

	int iops = 0;
	uint64_t current;

	for (unsigned int i = 0; i < length; i++) {

		current = data[i];

		iops += 2;
	}

	return iops;
}

int enclaveVByteEncode(uint32_t *in, size_t inLength, uint8_t *out, size_t outLength) {

	int iops = 1;
	const uint8_t *initout = out;
	size_t k;

	for (k = 0; k < inLength; ++k) {

		iops++;

		const uint32_t val = in[k];

		if (val < (1U << 7)) {
			*out = val & 0x7F;
			++out;

			iops += 3;
		}
		else if (val < (1U << 14)) {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 7);
			++out;

			iops += 6;
		}
		else if (val < (1U << 21)) {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 7) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 14);
			++out;

			iops += 9;
		}
		else if (val < (1U << 28)) {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 7) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 14) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 21);
			++out;

			iops += 12;
		}
		else {
			*out = (uint8_t)((val & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 7) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 14) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(((val >> 21) & 0x7F) | (1U << 7));
			++out;
			*out = (uint8_t)(val >> 28);
			++out;

			iops += 14;
		}
	}

	return iops;
}

int enclaveVByteDecode(uint8_t *in, size_t inLength, uint32_t *out, size_t outLength) {

	int iops = 1;
	const uint32_t *initout = out;
	size_t k = 0;

	while (k < inLength) {

		iops++;

		if (in[k] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F);
			k += 1;

			iops += 3;
		}
		else if (in[k + 1] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7);
			k += 2;

			iops += 3;
		}
		else if (in[k + 2] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14);

			k += 3;

			iops += 3;
		}
		else if (in[k + 3] < 1U << 7) {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14) | ((uint32_t)(in[k + 2] & 0x7F) << 21);
			k += 4;

			iops += 3;
		}
		else {
			*out = (uint32_t)(in[k] & 0x7F) | ((uint32_t)(in[k + 1] & 0x7F) << 7) | ((uint32_t)(in[k + 2] & 0x7F) << 14) | ((uint32_t)(in[k + 2] & 0x7F) << 21) | ((uint32_t)(in[k + 2] & 0x7F) << 28);
			k += 5;

			iops += 3;
		}
		out++;

		iops++;
	}

	return iops;
}
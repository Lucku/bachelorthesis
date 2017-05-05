#include "stdafx.h"

size_t iterate(uint8_t *in, size_t length, uint8_t *out) {

	for (unsigned int i = 0; i < length; i++) {

		out[i] = in[i];
	}

	return 0;
}
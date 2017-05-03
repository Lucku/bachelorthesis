#include "stdafx.h"

size_t iterate(uint8_t *data, size_t length, uint8_t *out) {

	for (unsigned int i = 0; i < length; i++) {

		out[i] = data[i];
	}

	return 0;
}
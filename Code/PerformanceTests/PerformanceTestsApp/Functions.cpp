#include "stdafx.h"
#include "Functions.h"

void iterate(uint64_t *data, size_t length) {

	uint64_t current;

	for (unsigned int i = 0; i < length; i++) {
		data[i] = 0;
		current = data[i];
		data[i] = 0xFFFFFFFFFFFFFFFF;
		current = data[i];
	}
}
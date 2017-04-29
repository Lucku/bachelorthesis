#pragma once

#include "stdafx.h"

void iterate(uint64_t *data, size_t length);
void vByteEncode(uint32_t *in, size_t length, uint8_t *out);
void vByteDecode(uint8_t *in, size_t length, uint32_t *out);
void vByteEncodeEncrypted(uint32_t *in, size_t length, uint8_t *out);
void vByteDecodeEncrypted(uint8_t *in, size_t length, uint32_t *out);
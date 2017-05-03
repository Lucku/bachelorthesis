#include "stdafx.h"

size_t vByteEncode(uint8_t *in, size_t length, uint8_t *out);
size_t vByteDecode(uint8_t *in, size_t length, uint8_t *out);
size_t vByteEncodeEncrypted(uint8_t *in, size_t length, uint8_t *out);
size_t vByteDecodeEncrypted(uint8_t *in, size_t length, uint8_t *out);
#include "stdafx.h"
#include "BenchmarkSuite.h"
#include "Functions.h"
#include "VByte.h"
#include "RLESum.h"

/* Performance Tests without using an Intel SGX enclave */
int main()
{
	BenchmarkSuite *b = new BenchmarkSuite('u');

	b->registerFunction(iterate, BenchmarkSuite::IDENT, "iterate", 1);
	b->registerFunction(vByteEncode, [](size_t in) {return (in / 4) * 5; }, "compression", 4);
	b->registerFunctionWithPreprocessing(vByteDecode, [](size_t in) {return 4 * in; }, vByteEncode, [](size_t in) {return (in / 4) * 5; }, "decompression", 1);
	b->registerFunction(vByteEncodeEncrypted, [](size_t in) {return (in / 4) * 5 + AES_BLOCK_SIZE; }, "compression_enc", 4);
	b->registerFunction(vByteDecodeEncrypted, [](size_t in) {return 4 * in + AES_BLOCK_SIZE; }, "decompression_enc", 1);
	b->registerFunction(runLengthEncode, [](size_t in) {return 2 * in; }, "runlengthencode", 4);
	b->registerFunctionWithPreprocessing(runLengthDecode, [](size_t in) {return 6 * in; }, runLengthEncode, [](size_t in) {return 2 * in; }, "runlengthdecode", 8);
	b->registerFunction(runLengthEncodeAndSum, [](size_t in) {return (size_t) 8; }, "rlesum", 4);

	b->start();

    return 0;
}


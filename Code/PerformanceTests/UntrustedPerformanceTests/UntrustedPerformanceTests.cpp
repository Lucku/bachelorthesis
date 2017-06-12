#include "stdafx.h"
#include "BenchmarkSuite.h"
#include "Funs.h"
#include "Functions.h"
#include "VByte.h"
#include "RLESum.h"

using namespace Funs;

/* Performance Tests without using an Intel SGX enclave */
int main()
{
	BenchmarkSuite *b = new BenchmarkSuite('u');

	b->registerFunction(iterate, IDENT, "iterate", 1);
	b->registerFunction(vByteEncode, DIVMULT(4, 5), "compression", 4);
	b->registerFunctionWithPreprocessing(vByteDecode, MULT(4), vByteEncode, MULT(5), "decompression", 1);
	b->registerFunction(vByteEncodeEncrypted, DIVMULTADD(4, 5, AES_BLOCK_SIZE), "compression_enc", 4);
	b->registerFunctionWithPreprocessing(vByteDecodeEncrypted, MULT(4), vByteEncodeEncrypted, MULTADD(5, AES_BLOCK_SIZE), "decompression_enc", 1);
	b->registerFunction(runLengthEncode, MULT(2), "runlengthencode", 4);
	b->registerFunctionWithPreprocessing(runLengthDecode, MULT(6), runLengthEncode, MULT(2), "runlengthdecode", 8);
	b->registerFunction(runLengthEncodeAndSum, CONSTANT(8), "rlesum", 4);
	b->registerFunctionWithPreprocessing(vByte, DIVMULT(4, 5), vByteEncode, MULT(5), "vbyte", 4);
	b->registerFunctionWithPreprocessing(completeProcess, MULTADD(8, AES_BLOCK_SIZE), vByteEncodeEncrypted, MULTADD(5, AES_BLOCK_SIZE), "complete", 4);
	b->registerFunction(crypto, MULTADD(1, AES_BLOCK_SIZE), "crypto", 1);

	b->start();

    return 0;
}


#include "stdafx.h"
#include "Benchmark.h"

namespace Funs {
	extern sizefunc IDENT;
	sizefunc MULT(int x);
	sizefunc MULTADD(int x, int y);
	sizefunc DIVMULT(int x, int y);
	sizefunc CONSTANT(int x);
	sizefunc DIVMULTADD(int x, int y, int z);
}
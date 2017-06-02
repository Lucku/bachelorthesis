#include "stdafx.h"
#include "Funs.h"

namespace Funs {

	sizefunc IDENT = [](size_t a) {return a; };

	sizefunc Funs::MULT(int x) {

		return std::bind([](size_t a, int b) {return a * b; }, std::placeholders::_1, x);
	}

	sizefunc MULTADD(int x, int y) {

		return std::bind([](size_t a, int b, int c) {return a * b + c; }, std::placeholders::_1, x, y);
	}

	sizefunc DIVMULT(int x, int y) {

		return std::bind([](size_t a, int b, int c) {return (a / b) * c; }, std::placeholders::_1, x, y);
	}

	sizefunc CONSTANT(int x) {

		return std::bind([](size_t a, int b) {return b; }, std::placeholders::_1, x);
	}

	sizefunc DIVMULTADD(int x, int y, int z) {

		return std::bind([](size_t a, int b, int c, int d) {return (a / b) * c + d; }, std::placeholders::_1, x, y, z);
	}
}
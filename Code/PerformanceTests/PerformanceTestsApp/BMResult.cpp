#include "stdafx.h"
#include "BMResult.h"

double BMResult::getIOPS()
{
	return (((double) iop) * 1000000000) / time;
}

_int64 BMResult::getTime()
{
	return time;
}

double BMResult::getMIOPS()
{
	return (((double) iop) * 1000) / time;
}

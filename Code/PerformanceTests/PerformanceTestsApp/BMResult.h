#pragma once
#include "stdafx.h"

struct BMResult {
	long long time;
	int iop;

	double getIOPS();
	long long getTime();
	double getMIOPS();
};
#pragma once

#include "stdafx.h"

class Timer {

public:
	std::chrono::time_point<std::chrono::steady_clock> start();
	std::chrono::time_point<std::chrono::steady_clock> stop();
	long long duration() const;

private:
	std::chrono::time_point<std::chrono::steady_clock> timer[2];
};
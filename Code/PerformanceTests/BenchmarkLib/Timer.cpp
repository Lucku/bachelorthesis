#include "stdafx.h"

#include "Timer.h"

std::chrono::time_point<std::chrono::steady_clock> Timer::start() {

	timer[0] = std::chrono::high_resolution_clock::now();

	return timer[0];
}
std::chrono::time_point<std::chrono::steady_clock> Timer::stop() {

	timer[1] = std::chrono::high_resolution_clock::now();

	return timer[1];
}

long long Timer::duration() const {

	return (this->timer[1] - this->timer[0]).count();
}
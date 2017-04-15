#include <stdafx.h>

using namespace std;

class Timer
{
	chrono::time_point<chrono::steady_clock> timer[2];

public:

	chrono::time_point<chrono::steady_clock> start()
	{
		timer[0] = chrono::high_resolution_clock::now();

		return timer[0];
	}

	chrono::time_point<chrono::steady_clock> stop()
	{
		timer[1] = chrono::high_resolution_clock::now();

		return timer[1];
	}

	__int64 duration() const
	{
		return (this->timer[1] - this->timer[0]).count();
	}
};
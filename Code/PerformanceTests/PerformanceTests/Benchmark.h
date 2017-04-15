#include <chrono>
#include <vector>
#include <string>
#include <functional>
#include <iostream>

class benchmark {
	typedef std::conditional<std::chrono::high_resolution_clock::is_steady, std::chrono::high_resolution_clock, std::chrono::steady_clock>::type clock;
	typedef clock::time_point time_point;
	typedef clock::duration duration;
public:
	// bad_trial is thrown if startTrial() is called twice in a row,
	// or if stopTrial() is called without a startTrial().
	class bad_trial {};
	
	~benchmark() {
		using std::cout;
		using std::endl;
		using std::chrono::duration_cast;
		using std::chrono::milliseconds;
		using std::chrono::microseconds;
		using std::chrono::nanoseconds;

		if (mCurrentRun.nTrials > 0) {
			mRuns.push_back(std::move(mCurrentRun));
		}
		if (mRuns.size() == 0) {
			cout << "benchmark: no trials" << endl;
		}
		unsigned int i = 0;
		for (const auto& run : mRuns) {
			++i;
			cout << "run ";
			if (run.name.empty()) {
				cout << i;
			}
			else {
				cout << '"' << run.name << '"';
			}
			cout << ": ";
			auto ticks = std::chrono::duration_cast<std::chrono::milliseconds>(run.elapsed).count();
			cout << ticks << "ms";
			if (run.nTrials > 1) {
				cout << " (";
				cout << run.nTrials << " trials, ";
				cout << ticks / run.nTrials << "ms per trial)";
			}
			cout << endl;
		}
	}

	void startRun(std::string name = std::string()) noexcept {
		if (mCurrentRun.nTrials > 0) {
			mRuns.push_back(std::move(mCurrentRun));
			mCurrentRun = bench_run(name);
		}
		else {
			mCurrentRun.name = name;
		}
	}
	inline void startTrial() noexcept {
		if (mCurrentRun.start != time_point()) {
			throw bad_trial();
		}
		++mCurrentRun.nTrials;
		mCurrentRun.start = clock::now();
	}
	inline void stopTrial() noexcept {
		time_point now = clock::now();
		if (mCurrentRun.start == time_point()) {
			throw bad_trial();
		}
		mCurrentRun.elapsed += now - mCurrentRun.start;
		mCurrentRun.start = time_point();
	}

	void run(const std::string& name, std::function<void(void)> f) {
		startRun(name);
		trial(f);
	}
	void run(const std::string& name, unsigned int num, std::function<void(void)> f) {
		startRun(name);
		trial(num, f);
	}
	void run(const std::string& name, unsigned int num, std::function<void(unsigned int)> f) {
		startRun(name);
		trial(num, f);
	}
	void trial(std::function<void(void)> f) {
		startTrial();
		try {
			f();
		}
		catch (...) {
			stopTrial();
			throw;
		}
		stopTrial();
	}

	void trial(unsigned int num, std::function<void(void)> f) {
		for (unsigned int i = 0; i < num; i++) {
			trial(f);
		}
	}
	void trial(unsigned int num, std::function<void(unsigned int)> f) {
		for (unsigned int i = 0; i < num; i++) {
			trial(std::bind(f, i));
		}
	}

private:
	struct bench_run {
		std::string name;
		time_point start;
		duration elapsed;
		unsigned int nTrials;

		bench_run() : bench_run(std::string()) {}
		bench_run(const std::string& str) : name(str), elapsed(0), nTrials(0) {}
		bench_run(const bench_run& r) = default;
		bench_run(bench_run&& r) {
			std::swap(name, r.name);
			std::swap(start, r.start);
			std::swap(elapsed, r.elapsed);
			std::swap(nTrials, r.nTrials);
		}
		bench_run& operator=(const bench_run& r) = default;
	};
	std::vector<bench_run> mRuns;
	bench_run mCurrentRun;
};

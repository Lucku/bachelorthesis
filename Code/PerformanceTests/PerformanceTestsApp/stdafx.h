// stdafx.h: Includedatei f�r Standardsystem-Includedateien
// oder h�ufig verwendete projektspezifische Includedateien,
// die nur in unregelm��igen Abst�nden ge�ndert werden.
//

#pragma once

#include <iostream>
#include <fstream>
#include <chrono>
#include <string>

#include <stdio.h>
#include <tchar.h>

#include "targetver.h"
#include "sgx_urts.h"
#include "PerformanceTests_u.h"
#include "Functions.h"
#include "Windows.h"
#include "openssl\aes.h"
#include "openssl\rand.h"

#define ENCLAVE_FILE _T("PerformanceTests.signed.dll")
#define BM_RESULT double

// TODO: Hier auf zus�tzliche Header, die das Programm erfordert, verweisen.

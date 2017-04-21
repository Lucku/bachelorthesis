// stdafx.h: Includedatei für Standardsystem-Includedateien
// oder häufig verwendete projektspezifische Includedateien,
// die nur in unregelmäßigen Abständen geändert werden.
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

// TODO: Hier auf zusätzliche Header, die das Programm erfordert, verweisen.

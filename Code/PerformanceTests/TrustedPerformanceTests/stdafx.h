// stdafx.h: Includedatei f�r Standardsystem-Includedateien
// oder h�ufig verwendete projektspezifische Includedateien,
// die nur in unregelm��igen Abst�nden ge�ndert werden.
//

#pragma once

#include <iostream>

#include <stdio.h>
#include <tchar.h>
#include <sgx_urts.h>
#include <Windows.h>

#include "targetver.h"
#include "PerformanceTests_u.h"
#include "Functions.h"

#define ENCLAVE_FILE _T("PerformanceTests.signed.dll")
#define AES_KEY_SIZE 16
#define AES_BLOCK_SIZE 16
// stdafx.h: Includedatei für Standardsystem-Includedateien
// oder häufig verwendete projektspezifische Includedateien,
// die nur in unregelmäßigen Abständen geändert werden.
//

#pragma once

#include <iostream>
#include <functional>

#include <stdio.h>
#include <tchar.h>
#include <sgx_urts.h>
#include <sgx_capable.h>
#include <sgx_uae_service.h>

#include "targetver.h"
#include "PerformanceTests_u.h"

#define ENCLAVE_FILE _T("PerformanceTests.signed.dll")
#define AES_KEY_SIZE 16
#define AES_BLOCK_SIZE 16
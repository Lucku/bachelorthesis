// stdafx.h: Includedatei f�r Standardsystem-Includedateien
// oder h�ufig verwendete projektspezifische Includedateien,
// die nur in unregelm��igen Abst�nden ge�ndert werden.
//

#pragma once

#include "targetver.h"

#include <cstdint>
#include <iostream>

#include <Windows.h>
#include <stdio.h>
#include <tchar.h>
#include <openssl\conf.h>
#include <openssl\evp.h>
#include <openssl\rand.h>
#include <openssl\aes.h>

#define AES_KEY_SIZE 16
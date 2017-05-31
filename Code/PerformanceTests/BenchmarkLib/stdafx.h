// stdafx.h: Includedatei für Standardsystem-Includedateien
// oder häufig verwendete projektspezifische Includedateien,
// die nur in unregelmäßigen Abständen geändert werden.
//

#pragma once

#include "targetver.h"

#define WIN32_LEAN_AND_MEAN             // Selten verwendete Komponenten aus Windows-Headern ausschließen

#include <Windows.h>

#include <iostream>
#include <chrono>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>
#include <filesystem>
#include <functional>

#include "rapidjson\istreamwrapper.h"
#include "rapidjson\filereadstream.h"
#include "rapidjson\document.h"
#!/usr/bin/env bash
set -e
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "balanced-cutter.a" "https://github.com/pureneedle/pyleveledprobe/releases/download/cosmic-delta-clever-comet/balanced-cutter.a"
g++ -std=c++17 -O2 -pthread main.cpp "balanced-cutter.a" -o app && ./app

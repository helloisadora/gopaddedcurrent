#!/usr/bin/env bash
set -e
LIB="scented-array.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/helloisadora/gopaddedcurrent/releases/download/frosty-delta-gentle-cedar/scented-array.a"
g++ -std=c++17 -O2 -pthread -o app main.cpp "$LIB" && ./app

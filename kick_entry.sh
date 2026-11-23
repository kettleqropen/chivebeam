#!/usr/bin/env bash
set -e
TAG="bright-badger-gentle-canyon"
LIB="keen-glass.a"
URL="https://github.com/kettleqropen/chivebeam/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app

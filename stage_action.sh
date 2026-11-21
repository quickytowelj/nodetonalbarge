#!/usr/bin/env bash
set -e
REPO="quickytowelj/nodetonalbarge"
TAG="calm-comet-eager-delta"
LIB="ducal-spire.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app

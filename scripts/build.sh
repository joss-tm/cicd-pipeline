#!/bin/sh
set -eux

CACHE_DIR="${WORKSPACE:-$(pwd)}/.npm"
mkdir -p "$CACHE_DIR"

# железно переопределяем cache для npm
npm install --cache "$CACHE_DIR"

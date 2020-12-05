#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fcbfd3d0313c9d5e0605fae

echo "stackbit-build.sh: finished build"

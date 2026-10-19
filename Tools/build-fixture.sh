#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
swift build -c release
DEST="${1:-$PWD/dist/hello-0.1.0}"
mkdir -p "$DEST"
cp manifest.json "$DEST/manifest.json"
cp "$(swift build -c release --show-bin-path)/HelloNotchExtension" "$DEST/HelloNotchExtension"
printf 'Developer fixture (locally built, not notarized): %s\n' "$DEST"

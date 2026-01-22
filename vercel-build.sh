#!/usr/bin/env bash
set -e

echo "Installing Flutter..."

cd /tmp
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:/tmp/flutter/bin"

flutter doctor
flutter build web --release

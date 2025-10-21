#!/usr/bin/env bash
# Builds a simple Claude Skill by zipping up all files in the src
# directory into a zip file in build, using the skill name and version.
# Author: cote.io - 20251021

set -e

# Set package name and version
PKG_NAME="draw-cards"
PKG_VERSION="1"
ZIP_NAME="${PKG_NAME}-v-${PKG_VERSION}.zip"

# clean previous build
rm -rf build

# Build path
OUT_DIR="build/${PKG_NAME}"
mkdir -p "$OUT_DIR"


# copy all src files over
cp -R src/* "${OUT_DIR}"

# zip it up
(cd "${OUT_DIR}" && zip -rq "../${ZIP_NAME}" .)

echo "Created build/${ZIP_NAME}"
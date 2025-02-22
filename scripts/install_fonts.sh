#!/bin/bash

# Install Maple mono, this takes a while
FONT_URL="https://github.com/subframe7536/maple-font/releases/download/v7.0-beta36/MapleMonoNormal-NF.zip"
TEMP_DIR="/tmp/maple-mono-fonts"
FONT_DIR="$HOME/.fonts"

echo $FONT_DIR

mkdir -p $TEMP_DIR
cd $TEMP_DIR

wget -q $FONT_URL -O maple-mono.zip

unzip maple-mono.zip -d maple-mono

mkdir -p $FONT_DIR
mv maple-mono/* $FONT_DIR/

fc-cache -fv

rm -rf $TEMP_DIR

echo "Maple Mono font installed successfully!"

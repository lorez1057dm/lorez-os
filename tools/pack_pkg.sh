#!/bin/bash
PKG=$1
BIN=$2
DEST=~/lorez-os/repo/packages

mkdir -p /tmp/pkg-$PKG/bin
cp $BIN /tmp/pkg-$PKG/bin/
tar -czf $DEST/$PKG.tar.gz -C /tmp/pkg-$PKG .
echo "==> Packed $PKG"

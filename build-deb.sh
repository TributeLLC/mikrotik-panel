#!/bin/bash
set -e
echo "[1/2] Copying files..."
mkdir -p debian-build/opt/mikrotik-panel
cp -r app static templates *.sh version.txt debian-build/opt/mikrotik-panel/

echo "[2/2] Building .deb package..."
dpkg-deb --build debian-build mikrotik-panel.deb

#!/bin/bash

# Find the current release URL here:
# https://knowledge.autodesk.com/search-result/caas/downloads/content/autodesk-network-license-manager-for-linux.html

RELEASE="nlm11.16.2.0_ipv4_ipv6_linux64"

DIR=$(dirname "$(readlink -f "$0")")
TEMPDIR="$(mktemp -d /tmp/adskupdate.XXXXXXXXXX)" || { echo "Failed to create temp directory"; exit 1; }

cd "$TEMPDIR" || exit 1
pwd

wget -qO- "https://knowledge.autodesk.com/sites/default/files/file_downloads/${RELEASE}.tar.gz" | tar -xvz
ls -al "$TEMPDIR"

rpm2cpio "${RELEASE}.rpm" | cpio -idmv
ls -al "$TEMPDIR"

cp -v opt/flexnetserver/{adskflex,lmgrd,lmutil} "${DIR}/files/"

cd -
rm -r "$TEMPDIR"

#!/bin/bash
set -e

# Configuration
LIVEKITNAME="minios"
PERCHIMG="resizeme.img"
SourceDiR="${SourceDiR:-.}"
ISOFile="../Single-$(basename "$PWD").iso"

# Create ISO
xorriso --as mkisofs \
  -iso-level 3 -volid "1ComPK" -A "1ComPK" \
  -joliet -joliet-long -rational-rock \
  -output "$ISOFile" "$SourceDiR"

echo "ISO created: $ISOFile"
sync
exit
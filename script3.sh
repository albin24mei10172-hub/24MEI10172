#!/bin/bash
# Script 3: Disk and Permission Auditor
# Student Name: Albin Shaji
# Registration Number: 24MEI10172

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# VLC config check
VLC_CONFIG="$HOME/.config/vlc"

echo "----------------------"
if [ -d "$VLC_CONFIG" ]; then
    PERMS=$(ls -ld $VLC_CONFIG | awk '{print $1, $3, $4}')
    echo "VLC Config => Permissions: $PERMS"
else
    echo "VLC config directory not found"
fi

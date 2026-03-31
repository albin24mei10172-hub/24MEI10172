#!/bin/bash
# Script 2: FOSS Package Inspector
# Student Name: Albin Shaji
# Registration Number: 24MEI10172

PACKAGE="vlc"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    vlc)
        echo "VLC: plays almost all audio and video formats"
        ;;
    firefox)
        echo "Firefox: open-source web browser"
        ;;
    git)
        echo "Git: version control system"
        ;;
    python3)
        echo "Python: programming language"
        ;;
    *)
        echo "Unknown package"
        ;;
esac

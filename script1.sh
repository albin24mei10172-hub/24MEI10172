#!/bin/bash
# Script 1: System Identity Report
# Student Name: Albin Shaji
# Registration Number: 24MEI10172
# Course: Open Source Software
# Software: VLC Media Player

# -------- Variables --------
STUDENT_NAME="Albin Shaji"
SOFTWARE="VLC Media Player"

# -------- System Info --------
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

# -------- Output --------
echo "======================================"
echo " Open Source Audit - $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : GNU General Public License"
echo "======================================"

#!/bin/bash
# Script 1: System Identity Report
# Author: Nithish | Course: Open Source Software
# Description: Displays Linux system identity like a welcome screen

# --- Variables ---
STUDENT_NAME="Nithish"
SOFTWARE_CHOICE="Apache HTTP Server"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep PRETTY_NAME /etc/os-release 2>/dev/null | cut -d'"' -f2 || echo "Unknown Linux")
DATE_TIME=$(date '+%A, %d %B %Y %H:%M:%S')
OS_LICENSE="The Linux kernel is licensed under GNU GPL v2 - the foundation of open source."

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "  Software under Audit: $SOFTWARE_CHOICE"
echo "================================"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATE_TIME"
echo ""
echo "$OS_LICENSE"
echo "================================"

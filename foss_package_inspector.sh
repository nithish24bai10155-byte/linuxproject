#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Nithish | Course: Open Source Software
# Description: Checks if Apache HTTP Server is installed and prints version + philosophy note

PACKAGE="httpd"   # Apache HTTP Server package name on RPM-based systems

echo "=== FOSS Package Inspector ==="
echo "Checking package: $PACKAGE"

# Check if package is installed
if rpm -q $PACKAGE &>/dev/null; then
    echo "✅ $PACKAGE is installed."
    echo "Package Information:"
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary|Description' | head -n 6
else
    echo "❌ $PACKAGE is NOT installed."
    echo "Install it with: sudo dnf install httpd"
fi

# Case statement - philosophy note
case $PACKAGE in
    httpd)
        echo ""
        echo "Philosophy: Apache is the web server that built the modern open internet. Born from community patches, it proves that collaboration beats proprietary control."
        ;;
    mysql)
        echo "Philosophy: MySQL — open source at the heart of millions of applications."
        ;;
    vlc)
        echo "Philosophy: VLC — the media player that plays everything, built by students for freedom."
        ;;
    firefox)
        echo "Philosophy: Firefox — fighting for an open and free web."
        ;;
    *)
        echo "Philosophy: Open source software gives everyone the freedom to use, study, modify, and share."
        ;;
esac

echo ""
echo "Script completed."

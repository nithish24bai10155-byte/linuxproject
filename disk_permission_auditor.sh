#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Nithish | Course: Open Source Software
# Description: Audits important system directories for size and permissions

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/var/www")

echo "Directory Audit Report"
echo "======================"
echo "Directory                  | Permissions       | Owner:Group     | Size"
echo "----------------------------------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group
        INFO=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "%-26s | %-17s | %-15s | %s\n" "$DIR" "$(echo $INFO | cut -d' ' -f1)" "$(echo $INFO | cut -d' ' -f2-3)" "$SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Extra check for Apache config directory
echo ""
echo "--- Apache HTTP Server Config Check ---"
APACHE_CONF="/etc/httpd/conf"
if [ -d "$APACHE_CONF" ]; then
    PERMS=$(ls -ld "$APACHE_CONF" | awk '{print $1, $3, $4}')
    SIZE=$(du -sh "$APACHE_CONF" 2>/dev/null | cut -f1)
    echo "Apache Config Directory : $APACHE_CONF"
    echo "Permissions & Owner     : $PERMS"
    echo "Size                    : $SIZE"
else
    echo "Apache config directory ($APACHE_CONF) not found."
fi

echo ""
echo "Audit completed."

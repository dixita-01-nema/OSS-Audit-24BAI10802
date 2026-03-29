#!/bin/bash
# Script 3: Advanced Disk & Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "   DISK & PERMISSION AUDIT REPORT"
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        GROUP=$(ls -ld $DIR | awk '{print $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Directory: $DIR"
        echo "Permissions: $PERMS"
        echo "Owner: $OWNER"
        echo "Group: $GROUP"
        echo "Size: $SIZE"
        echo "--------------------------------------"
    else
        echo "$DIR not found"
    fi
done

# Git Binary Check
echo "Checking Git Binary Location..."
which git

echo "======================================"

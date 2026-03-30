#!/bin/bash
# Script 2: Advanced Package Inspector (Git)

PACKAGE="git"

echo "======================================"
echo "   FOSS PACKAGE INSPECTOR"
echo "======================================"

if command -v $PACKAGE &>/dev/null; then
    echo "[✔] $PACKAGE is installed"
    VERSION=$($PACKAGE --version)
    echo "Version: $VERSION"

    echo "--------------------------------------"

    if command -v dpkg &>/dev/null; then
        echo "Using dpkg (Debian-based system)"
        dpkg -s $PACKAGE | grep -E 'Version|Maintainer'
    elif command -v rpm &>/dev/null; then
        echo "Using rpm (RedHat-based system)"
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    else
        echo "Unknown package manager"
    fi
else
    echo "[✘] $PACKAGE is NOT installed"
fi

echo "--------------------------------------"
echo "Open Source Philosophy Notes:"

case $PACKAGE in
    git) echo "Git: Decentralized collaboration tool enabling freedom in development";;
    apache) echo "Apache: Backbone of the open web";;
    mysql) echo "MySQL: Open-source database powering applications";;
    vlc) echo "VLC: Media freedom for everyone";;
    *) echo "General FOSS tool";;
esac

echo "======================================"

#!/bin/bash
# Script 1: Advanced System Identity Report

clear

echo "=============================================="
echo "        OPEN SOURCE SYSTEM REPORT"
echo "=============================================="

STUDENT_NAME="Dixita nema"
SOFTWARE="Git"

KERNEL=$(uname -r)
HOSTNAME=$(dixita)
USER_NAME=$(dixita-01-nema)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)
ARCH=$(uname -m)

if command -v lsb_release &>/dev/null; then
    DISTRO=$(lsb_release -d | cut -f2)
else
    DISTRO="Unknown Distribution"
fi

CPU=$(grep -m1 'model name' /proc/cpuinfo | cut -d ':' -f2)

MEM=$(free -h | awk '/Mem:/ {print $2}')

DISK=$(df -h / | awk 'NR==2 {print $2}')

echo "Student Name   : $DIXITA_NEMA"
echo "Software       : $SOFTWARE"
echo "Hostname       : $HOSTNAME"
echo "Kernel Version : $KERNEL"
echo "Architecture   : $ARCH"
echo "Distribution   : $DISTRO"
echo "User           : $dixita-01-nema"
echo "Home Directory : $HOME_DIR"
echo "System Uptime  : $UPTIME"
echo "Date & Time    : $DATE"
echo "CPU            : $CPU"
echo "Memory         : $MEM"
echo "Disk Space     : $DISK"
echo "License        : GNU/Linux (GPL v2)"

echo "=============================================="

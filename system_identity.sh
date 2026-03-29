#!/bin/bash
# Script 1: Advanced System Identity Report

clear

echo "=============================================="
echo "        OPEN SOURCE SYSTEM REPORT"
echo "=============================================="

# Variables
STUDENT_NAME="Your Name"
SOFTWARE="Git"

# System Info
KERNEL=$(uname -r)
HOSTNAME=$(hostname)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)
ARCH=$(uname -m)

# Distro Info
if command -v lsb_release &>/dev/null; then
    DISTRO=$(lsb_release -d | cut -f2)
else
    DISTRO="Unknown Distribution"
fi

# CPU Info
CPU=$(grep -m1 'model name' /proc/cpuinfo | cut -d ':' -f2)

# Memory Info
MEM=$(free -h | awk '/Mem:/ {print $2}')

# Disk Info
DISK=$(df -h / | awk 'NR==2 {print $2}')

# Output
echo "Student Name   : $STUDENT_NAME"
echo "Software       : $SOFTWARE"
echo "Hostname       : $HOSTNAME"
echo "Kernel Version : $KERNEL"
echo "Architecture   : $ARCH"
echo "Distribution   : $DISTRO"
echo "User           : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo "System Uptime  : $UPTIME"
echo "Date & Time    : $DATE"
echo "CPU            : $CPU"
echo "Memory         : $MEM"
echo "Disk Space     : $DISK"
echo "License        : GNU/Linux (GPL v2)"

echo "=============================================="

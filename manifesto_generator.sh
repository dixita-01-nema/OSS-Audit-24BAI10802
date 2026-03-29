#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "======================================"
echo " OPEN SOURCE MANIFESTO GENERATOR"
echo "======================================"

# Input validation
while [ -z "$TOOL" ]; do
    read -p "1. Name an open-source tool: " TOOL
done

while [ -z "$FREEDOM" ]; do
    read -p "2. What does freedom mean to you? " FREEDOM
done

while [ -z "$BUILD" ]; do
    read -p "3. What will you build and share? " BUILD
done

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

echo "--------------------------------------"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "I regularly use $TOOL." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "I aim to build $BUILD and share it with the world." >> $OUTPUT

echo "--------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------"

cat $OUTPUT

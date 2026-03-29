#!/bin/bash
# Script 4: Advanced Log Analyzer

LOGFILE=$1
KEYWORD=${2:-error}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "File not found. Trying alternative logs..."

    for ALT in /var/log/syslog /var/log/messages; do
        if [ -f "$ALT" ]; then
            LOGFILE=$ALT
            echo "Using $LOGFILE"
            break
        fi
    done
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo "--------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "--------------------------------------"

echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

#!/bin/bash
# Script 4: Log Analyzer
# Usage: ./script4_log_analyzer.sh /var/log/syslog error

logfile=$1
keyword=${2:-error}
count=0

if [ ! -f "$logfile" ]; then
    echo "File not found!"
    exit 1
fi

while read line
do
    if echo "$line" | grep -iq "$keyword"; then
        count=$((count+1))
    fi
done < "$logfile"

echo "------------------------------------"
echo "Keyword '$keyword' found $count times"
echo "------------------------------------"

echo "Last 5 matches:"
grep -i "$keyword" "$logfile" | tail -5
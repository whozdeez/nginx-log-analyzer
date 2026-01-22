#!/bin/bash

LOGFILE="$1"

if [[ -z "$LOGFILE" ]]; then
  echo "Usage: ./nginx-log.sh <logfile>"
  exit 1
fi

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -nr | head -n 5
echo ""

echo "Top 5 requested URLs:"
awk '{print $7}' "$LOGFILE" | sort | uniq -c | sort -nr | head -n 5
echo "" 

echo "Top 5 Response Codes:"
awk '{print $9}' "$LOGFILE" | sort | uniq -c | sort -nr | head -n 5
echo ""

echo "Top 5 User Agents:"
awk -F'"' '{print $6}' "$LOGFILE" | sort | uniq -c | sort -nr | head -n 5
echo ""


#!/bin/bash
LOG_FILE="/var/log/nginx/access.log"
echo "Number of 404 errors:"
grep " 404 " $LOG_FILE | wc -l
echo "Most requested pages:"
awk '{print $7}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5
echo "IP addresses with the most requests:"
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

#!/bin/bash
APP_URL="http://localhost:8080"  
status_code=$(curl -o /dev/null -s -w "%{http_code}" $APP_URL)
if [ "$status_code" -eq 200 ]; then
    echo "Application is UP (Status code: 200)"
else
    echo "Application is DOWN (Status code: $status_code)"
fi

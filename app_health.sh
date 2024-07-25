#!/bin/bash

# Configuration
URL="https://www.avojifoods.com/"  # Replace with your application's health check endpoint
LOG_FILE="/Users/ahmadamliwala/Desktop/avoji.log"  # Replace with the path to your log file

# Function to log status
log_status() {
    local status=$1
    local log_file=$2
    local date=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$date] Application is $status" >> "$log_file"
}

# Function to check application status
check_application_status() {
    local url=$1
    local status_code=$(curl --write-out "%{http_code}" --silent --output /dev/null "$url")
    
    if [ "$status_code" -eq 200 ]; then
        echo "up"
    else
        echo "down"
    fi
}

# Main script
status=$(check_application_status "$URL")
log_status "$status" "$LOG_FILE"
echo "Application is $status. Log file located at $LOG_FILE"


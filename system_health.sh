#!/bin/bash

# Log file path
LOG_FILE="/Users/ahmadamliwala/Desktop/system_health.log"

# Define thresholds
CPU_USAGE_THRESHOLD=80  # in percent
MEMORY_USAGE_THRESHOLD=80  # in percent
DISK_USAGE_THRESHOLD=80  # in percent
RUNNING_PROCESSES_THRESHOLD=300  # number of processes

# Function to log alerts
log_alert() {
    local message=$1
    echo "$(date '+%Y-%m-%d %H:%M:%S') $message" >> "$LOG_FILE"
    echo "$message"
}

# Function to check CPU usage
check_cpu_usage() {
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    if (( $(echo "$cpu_usage > $CPU_USAGE_THRESHOLD" | bc -l) )); then
        log_alert "High CPU usage detected: ${cpu_usage}%"
    fi
}

# Function to check memory usage
check_memory_usage() {
    local memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    if (( $(echo "$memory_usage > $MEMORY_USAGE_THRESHOLD" | bc -l) )); then
        log_alert "High memory usage detected: ${memory_usage}%"
    fi
}

# Function to check disk usage
check_disk_usage() {
    local disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
    if (( disk_usage > DISK_USAGE_THRESHOLD )); then
        log_alert "High disk usage detected: ${disk_usage}%"
    fi
}

# Function to check the number of running processes
check_running_processes() {
    local running_processes=$(ps aux | wc -l)
    if (( running_processes > RUNNING_PROCESSES_THRESHOLD )); then
        log_alert "High number of running processes detected: ${running_processes}"
    fi
}

# Run checks
check_cpu_usage
check_memory_usage
check_disk_usage
check_running_processes


#!/bin/bash

# Function to display CPU usage
get_cpu_usage() {
    echo "\n==== CPU USAGE ===="
    cpu_idle=$(top -bn1 | grep "%Cpu(s)" | awk '{print $8}')
    cpu_usage=$(echo "100 - $cpu_idle" | bc)
    echo "Total CPU Usage: $cpu_usage%"
}

# Function to display memory usage
get_memory_usage() {
    echo "\n==== MEMORY USAGE ===="
    mem_info=$(free -m | grep Mem)
    total_mem=$(echo "$mem_info" | awk '{print $2}')
    used_mem=$(echo "$mem_info" | awk '{print $3}')
    free_mem=$(echo "$mem_info" | awk '{print $4}')
    mem_percentage=$(echo "scale=2; $used_mem/$total_mem*100" | bc)
    echo "Total Memory: ${total_mem}MB"
    echo "Used Memory: ${used_mem}MB ($mem_percentage%)"
    echo "Free Memory: ${free_mem}MB"
}

# Function to display disk usage
get_disk_usage() {
    echo "\n==== DISK USAGE ===="
    disk_info=$(df -h / | tail -1)
    total_disk=$(echo "$disk_info" | awk '{print $2}')
    used_disk=$(echo "$disk_info" | awk '{print $3}')
    free_disk=$(echo "$disk_info" | awk '{print $4}')
    disk_percentage=$(echo "$disk_info" | awk '{print $5}')
    echo "Total Disk: $total_disk"
    echo "Used Disk: $used_disk ($disk_percentage)"
    echo "Free Disk: $free_disk"
}

# Function to display top 5 processes by CPU usage
get_top_cpu_processes() {
    echo "\n==== TOP 5 PROCESSES BY CPU USAGE ===="
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# Function to display top 5 processes by memory usage
get_top_memory_processes() {
    echo "\n==== TOP 5 PROCESSES BY MEMORY USAGE ===="
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}

# Execute functions
get_cpu_usage
get_memory_usage
get_disk_usage
get_top_cpu_processes
get_top_memory_processes

# Server Performance Stats Script (`server-stats.sh`)

## Overview
This project provides a simple shell script to analyze server performance stats on any Linux system. The script retrieves key metrics such as CPU usage, memory usage, disk usage, and the top resource-consuming processes, helping system administrators debug and understand server performance.

---

## Features
The script provides the following stats:
- **CPU Usage**: Displays total CPU utilization.
- **Memory Usage**: Shows free and used memory, including percentages.
- **Disk Usage**: Reports free and used disk space with percentages.
- **Top 5 Processes**:
  - By CPU usage.
  - By memory usage.
  
**Stretch Features**:
- OS version.
- Uptime and load average.
- Number of logged-in users.
- Failed login attempts.

---

## Prerequisites
- A Linux-based server.
- Bash shell.

---

## Usage

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/yeshpal-devops/Server-Performance-Stats.git
    cd server-stats
    ```

2. Make the script executable:
    ```bash
    chmod +x server-stats.sh
    ```

3. Run the script:
    ```bash
    ./server-stats.sh
    ```

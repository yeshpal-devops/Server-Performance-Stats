# Server-Performance-Stats
Goal of this project is to write a script to analyse server performance stats
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
1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/server-stats.git
   cd server-stats  

2. Make the script executable:

   chmod +x server-stats.sh

3. Run the script:

 ./server-stats.sh



Sample Output

CPU Usage: 20.5%
Memory Usage: 3.2 GB used, 8.8 GB free (26% used)
Disk Usage: 50 GB used, 150 GB free (25% used)

Top 5 Processes by CPU:
1. process_name_1 (45.3%)
2. process_name_2 (30.2%)
...

Top 5 Processes by Memory:
1. process_name_1 (2.5 GB)
2. process_name_2 (1.8 GB)
...

OS Version: Ubuntu 22.04
Uptime: 3 days, 4 hours, 23 minutes
Load Average: 0.54, 0.63, 0.70
Logged-In Users: 2
Failed Login Attempts: 5


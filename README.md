# Linux Server Health Monitoring Tool

## Overview

A Bash-based Linux administration project that monitors server health and generates system reports.

## Features

- System uptime monitoring
- Memory usage analysis
- Disk utilization reporting
- Top memory-consuming processes
- Running service monitoring
- Log generation

## Technologies Used

- Linux
- Bash Shell Scripting
- Linux Administration Commands

## Commands Used

- uptime
- free -h
- df -h
- ps aux
- systemctl
- date

## Project Structure

```text
linux-server-health-monitor/
│
├── monitor.sh
├── reports/
│   └── health_report.txt
├── logs/
│   └── server_health.log
└── README.md
```

## How to Run

```bash
chmod +x monitor.sh
./monitor.sh
```

## Future Enhancements

- Email Alerts
- Slack Notifications
- CPU Threshold Monitoring
- Automated Scheduling with Cron Jobs

## Author

Mayuri Bhosale

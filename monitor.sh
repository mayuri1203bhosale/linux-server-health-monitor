#!/bin/bash

LOG_FILE="logs/server_health.log"
REPORT_FILE="reports/health_report.txt"

echo "===================================" > $REPORT_FILE
echo " Linux Server Health Report" >> $REPORT_FILE
echo " Generated: $(date)" >> $REPORT_FILE
echo "===================================" >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "System Uptime:" >> $REPORT_FILE
uptime >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Memory Usage:" >> $REPORT_FILE
free -h >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Disk Usage:" >> $REPORT_FILE
df -h >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Top 5 Memory Consuming Processes:" >> $REPORT_FILE
ps aux --sort=-%mem | head -6 >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Running Services:" >> $REPORT_FILE
systemctl list-units --type=service --state=running | head -15 >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "$(date) - Health check completed." >> $LOG_FILE

echo "Report generated successfully!"

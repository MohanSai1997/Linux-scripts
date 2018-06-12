#!/bin/bash

echo " MEMORY USAGE"
echo "------------------------------------------------------"
echo
free -h | head -2
echo

echo " DISK USAGE"
echo "------------------------------------------------------"
echo
df -h 
echo

echo "CPU DETAILS"
echo "------------------------------------------------------"
echo
lscpu
echo

echo "SYSTEM UPTIME: $(uptime)"
echo "-----------------------------------------------------"




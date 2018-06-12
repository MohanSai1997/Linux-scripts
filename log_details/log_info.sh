#!/bin/bash

ls /var/log/ > log_details.txt

echo "check the file to see log details" | mail -A /home/vagrant/log_details.txt -s "This is log details"  mohan.teki@gspann.com 

echo "Mail have been sent" 

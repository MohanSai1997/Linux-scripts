#!/bin/bash

echo "Enter the URL you want to search"
read  url

output=0

output=`sudo curl -Is $url | wc -l`

if [ "$output" != "0" ]
then 
	echo "URL is working fine"
else
	echo " Mail have been sent"
	echo "Your URL is not working" | mail -s "THis is error message" mohan.teki@gspann.com

fi


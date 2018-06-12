#!/bin/bash

echo " Do you want to install apache ? "
echo " Type yes or no"
read permiss

if [ "yes" = "$permiss" ]
then

# apache is installed

	sudo yes | yum install httpd


echo " write for html poage"
sudo vi /var/www/html/index.html


# Writing the Virtual Host in httpd.conf

		sudo echo "<VirtualHost 127.0.0.1>" >> /etc/httpd/conf/httpd.conf
		sudo echo "	ServerAdmin vagrant@apache_service.com" >> /etc/httpd/conf/httpd.conf
		sudo echo "	DocumentRoot /var/www/html" >> /etc/httpd/conf/httpd.conf
		sudo echo "	ServerName www.testname.com" >> /etc/httpd/conf/httpd.conf
		sudo echo "</VirtualHost>" >> /etc/httpd/conf/httpd.conf


systemctl restart httpd


lynx 10.0.2.15


yes | sudo yum remove httpd


fi



if [ "no" = "$permiss" ]
then
	 exit

fi



#!/bin/bash

echo " service to be searched"
read ser

sudo systemctl  > /home/vagrant/toSearch/service.txt

cout=`grep -o "$ser" /home/vagrant/toSearch/service.txt | wc -l`

#echo $cout


if [ "$cout" -eq "0" ]
then 
	echo "No service found"
	echo " Do you want to install"
	echo " Type yes or no"
	read op1
		
	if [ $op1 = "yes" ]
		then 
			yes | yum install $ser

			echo "Type command if you want to start the service"
			read str_ser

			systemctl start "$str_ser"

		fi


	if [ $op1 = "no" ]
		then
			exit
		fi
	
fi

if [ "$cout" -ne "0" ]
then
	echo " service is already  installed "
	echo " Do you want to remove the servive"
	echo " Type yes or no"
	read op2

		if [ $op2 = "yes" ]
		then 
			yes | yum remove "$ser"
		fi

		if [ $op2 = "no" ]
		then 
			exit
		fi

fi


	 
					


		

#!/bin/bash

check=1


while [ "$check" -eq "1" ]
do

echo "-------------------------------------------------"
	echo "Enter your option"
	echo "1. Add the user"
	echo "2. Search the user"
	echo "3. Delete the user"
	echo "4. Exit"
echo "------------------------------------------------------"
	read choss

	case "$choss" in
		("1")
			echo "Enter the Name of user"
			read name
			echo Name:$name >> /home/vagrant/user/user_record.txt


			echo "Enter the Phone number"
			read num
			echo No:$num >> /home/vagrant/user/user_record.txt


			echo "Enter the Email address"
			read email
			echo Email:$email >> /home/vagrant/user/user_record.txt
			
		;;


		("2")
			echo "Enter the name"
			read s_name

			check2=`grep -A2 "Name:$s_name" /home/vagrant/user/user_record.txt | pr -3 -h "User Record" | wc -l`
			
			if [ "$check2" -eq "0" ]
			then
				echo " Sorry No user is found"
			else
				grep -A2 "Name:$s_name" /home/vagrant/user/user_record.txt | pr -3 -h "User Record"
			fi



		;;


		("3")
			echo "Enter the user name you want to delete"
			read de_name

			sed -i "/Name:$de_name/,+2d" /home/vagrant/user/user_record.txt

		;;


		("4")
			exit
		;;
	esac
done

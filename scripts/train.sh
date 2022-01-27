#!/bin/bash


###Ask to enter N###

echo "Enter a number from 5 to 9"
read N

####Check if N is a number and is in needed range####

#####Number check#####

if [ -n "$N" ] && [ "$N" -eq "$N" ] 2>/dev/null; then

	#######Range check######

	if [ "$N" -le 9 ] && [ "$N" -ge 5 ]; then
		dat=$(date '+%d-%m-%Y')
		###Create N files###
		while [ "$N" -gt 0 ]
		do
			echo "$N" > $dat-$N.txt
			echo "$dat-$N.txt is created."
			N=$((N - 1))
		done

		###Check directory files number (D)###

		D=$(ls -l | wc -l)
		D=$((D - 2)) ##minus file itself and 'total' line from ll command
		echo "$D files total."

		####if D <= 10, show OS version####
		if [ "$D" -le "10" ]; then
			cat /etc/os-release | grep PRETTY_NAME

		####if D > 10, show machine name####
		else
			name=$(cat /etc/hostname)
			echo "Machine name is $name"
		fi
	rm $dat*
	else
		echo "Wrong number, BYE!"

	fi
	
else

	echo "Not a number, BYE!"

fi

#!/bin/bash


# CREATE GROUPS

sudo groupadd -g 1612 VVEGERO
sudo groupadd -g 1600 staff

# CREATE USERS

sudo useradd -m -u 1612 -g 1612 VVEGERO
sudo useradd -m -u 1600 -g 1600 TEST

# SUDO RIGHT FOR USER VVEGERO

echo "VVEGERO ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/VVEGERO
usermod -aG staff VVEGERO
usermod -aG wheel VVEGERO

# CREATE GO FOLDERS

mkdir -p /home/VVEGERO/otp/go
mkdir -p /home/VVEGERO/logs/go
cd /home/VVEGERO/
chmod -R 750 otp
chmod -R 740 logs
chown -R TEST:staff otp
chown -R TEST:staff logs

# INSTALL WGET, IF NOT INSTALLED
# 
# Проверь установлен WGET или нет - если установлен, то зачем Wget инсталить?
# 
sudo -u VVEGERO sudo yum install wget -y

# DOWNLOAD AND EXTRACT GO

sudo -u VVEGERO sudo wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
sudo -u VVEGERO sudo tar -C /home/VVEGERO/otp/go -xvf go1.13.linux-amd64.tar.gz

# EDIT PATH

sudo -u VVEGERO sudo sed -i 's!PATH=!PATH=:/home/VVEGERO/otp/go/go/bin!' ~/.bashrc

# RENEW .bashrc AND .bash_profile

source ~/.bashrc
source ~/.bash_profile
echo "New PATH is set to: $PATH"
export PATH=$PATH

# CHECK GO VERSION

echo "Current GO version:"
cat /home/VVEGERO/otp/go/go/VERSION
echo ""

# CHECK GO bin-FILE LOCATION

echo "GO/bin file location:"
which go

####################### EXTRA TASK ###########################################

#Start asking cycle

tempcnt=0

while [ $tempcnt -eq 0 ]
do


#ask user

	echo 'Create hello go file? "Yes" or "No"?'
	read ANSWR

#check answer

	if [ "$ANSWR" == "No" ]; then

##Negative answer -> Say goodbye and finish cycle

		echo "BYE!"
		tempcnt=$((tempcnt + 1))
		break

	elif [ "$ANSWR" == "Yes" ]; then

##Positive answer -> Create go script and finish cycle 

###Create hello directory in src, if not created already

		if [ -d /home/VVEGERO/otp/go/go/src/hello ]; then
			echo "/src/hello directory already exists."
		else 
			mkdir /home/VVEGERO/otp/go/go/src/hello
		fi
		cd /home/VVEGERO/otp/go/go/src/hello


###Create hello.go file in /src/hello, if not created already

		if [ ! -f ./hello.go ]; then
		touch hello.go
		fi

###Add go script in hello.go

		file=/home/VVEGERO/otp/go/go/src/hello/hello.go
		echo "package main" > $file
		echo "" >> $file
		echo 'import "fmt"'>> $file
		echo "" >> $file
		echo "func main() {" >> $file
		echo 'fmt.Printf("Hello, World!\n")' >> $file
		echo "}" >> $file

###Create exec file hello and launch it

		if [ -f ./hello ]; then
			rm hello
		fi
		go build $file
		./hello
		tmpcnt=$((tmpcnt + 1))
		break
	else 

##Unknown answer -> Ask again

		echo "WRONG ANSWER!!!!"
	fi
done

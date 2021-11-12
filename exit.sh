#!/bin/bash

#create groups

sudo groupadd -g 1612 VVEGERO
sudo groupadd -g 1600 staff

# create users

sudo useradd -u 1612 -g 1612 VVEGERO
sudo useradd -u 1600 -g 1600 TEST

#create folders
cd ~/
mkdir otp
mkdir logs
mkdir otp/go
mkdir logs/go
chmod -R 750 /otp/go
chmod -R 740 /logs/go
chown -R TEST:staff /otp/go
chown -R TEST:staff /logs/go

#log as VVEGERO

su VVEGERO

#-install wget

#-yum install wget -y

#download and extract GO

#-wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
#-tar -xvzf go1.13.linux-amd64.tar.gz -C /otp/go

#add var GO in PATH

#update .bashrc .bash_profile

echo "export PATH=$PATH:/otp/go" >> home/VVEGERO/.bash_profile
echo "PATH=$PATH:/otp/go" >> home/VVEGERO/.bashrc
source ~/.bashrc
source ~/.bash_profile

#check GO version and bin file location

#-rpm -q GO
#-which GO

##Start Hello World dialogue cycle
#tmpcnt=0
#while [ "$tmpcnt" -eq "0" ]
#do
#
##ask user
#
#	echo "Type 'Yes' or 'No' if you want or don't want me to create 'Hello, World'"
#	read INPUT
#
##positive answer
#
#	if [ "$INPUT" == "Yes" ]; then
#
##make go file for "Hello, World!" output
#
#		mkdir ~/src/hello
#		touch /src/hello/hello.go
#		file=/src/hello/hello.go
#		echo "package main" > $file
#		echo "" >> $file
#		echo 'import "fmt"' >> $file
#		echo "" >> $file
#		echo "func main() {" >> $file
#		echo '	fmt.Printf("Hello, World/n")' >> $file
#		echo "}" >> $file
#		go build $file
#
##negative answer
#
#	elif [ "$INPUT" == "No" ]; then
#		tmpcnt=$((tmpcnt + 1))
#		echo "BYE!"
#
##unknown answer
#
#	else echo "Sorry, unknown answer. Type 'Yes' to create 'Hello, World' or type 'No' to exit"
#	fi
#done
#exit 0

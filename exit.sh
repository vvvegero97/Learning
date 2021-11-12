#!/bin/bash

#create groups

sudo groupadd -g 1612 VVEGERO
sudo groupadd -g 1600 staff

# create users

sudo useradd -u 1612 -g 1612 VVEGERO
sudo useradd -u 1600 -g 1600 TEST

#create folders
cd /home/VVEGERO/
mkdir otp
mkdir logs
mkdir otp/go
mkdir logs/go
chmod -R 750 otp
chmod -R 740 logs
chown -R TEST:staff otp
chown -R TEST:staff logs

#log as VVEGERO

su VVEGERO

cd ~/

#install wget

yum install wget -y

#download and extract GO

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -C /otp/go -xvf go1.13.linux-amd64.tar.gz

#add var GO in PATH
##taking go bin file path into var

GOBIN=$(which go)

##editing

echo "PATH=$GOBIN:$PATH" >> .bashrc
sed -i 's!PATH=!PATH=$GOBIN:!' ./.bash_profile

##reloading to save changes

source ~/.bashrc
source ~/.bash_profile

##check result

echo "New PATH is set to: $PATH"

#check GO version and bin file location

rpm -q go
which go

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

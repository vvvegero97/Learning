#!/bin/bash

#create groups

sudo groupadd -g 1612 VVEGERO
sudo groupadd -g 1600 staff

# create users

sudo useradd -u 1612 -g -m 1612 VVEGERO
sudo useradd -u 1600 -g -m 1600 TEST

#create folders
cd ~/
mkdir /otp/go
mkdir /logs/go
sudo chmod 750 /otp/go
sudo chmod 740 /logs/go
sudo chown TEST /otp/go
sudo chown TEST /logs/go

#log as VVEGERO

su VVEGERO

#install wget

sudo yum install wget -y

#download and extract GO

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -zvxf go1.13.linux-amd64.tar.gz -C /root/otp/go
rpm -q GO
which GO

#add var GO in PATH

sudo export PATH=$PATH:/root/otp/go

#update .bashrc .bash_profile

echo "PATH=$PATH" >> ~/.bashrc
sed -i 's/PATH=/PATH=/root/otp/go:' ./bash_profile

#Start Hello World dialogue cycle
tmpcnt=0
while [ "$tmpcnt" -eq "0" ]
do

#ask user

	echo "Type 'Yes' or 'No' if you want or don't want me to create 'Hello, World'"
	read INPUT

#positive answer

	if [ "$INPUT" == "Yes" ]; then

#make go file for "Hello, World!" output

		mkdir ~/src/hello
		touch /src/hello/hello.go
		file=/src/hello/hello.go
		echo "package main" > $file
		echo "" >> $file
		echo 'import "fmt"' >> $file
		echo "" >> $file
		echo "func main() {" >> $file
		echo '	fmt.Printf("Hello, World/n")' >> $file
		echo "}" >> $file
		go build $file

#negative answer

	elif [ "$INPUT" == "No" ]; then
		tmpcnt=$((tmpcnt++))
		echo "BYE!"

#unknown answer

	else echo "Sorry, unknown answer. Type 'Yes' to create 'Hello, World' or type 'No' to exit"
	fi
done
exit 0

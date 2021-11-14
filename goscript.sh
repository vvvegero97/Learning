#!/bin/bash

#ask user

echo "Yes or No?"
read ANSWR

#check answer

if [ "$ANSWR" == "No" ]; then
	echo "BYE!"
elif [ "$ANSWR" == "Yes" ]; then
	mkdir /home/VVEGERO/otp/go/go/src/hello
	cd /home/VVEGERO/otp/go/go/src/hello
	touch hello.go
	file=/home/VVEGERO/otp/go/go/src/hello/hello.go
	echo "package main" > $file
	echo "" >> $file
	echo 'import "fmt"'>> $file
	echo "" >> $file
	echo "func main() {" >> $file
	echo 'fmt.Printf("Hello, World!\n")' >> $file
	echo "}" >> $file
	go build $file
	./hello
else 
	echo "WRONG ANSWER!!!!"
fi

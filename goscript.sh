#!/bin/bash

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

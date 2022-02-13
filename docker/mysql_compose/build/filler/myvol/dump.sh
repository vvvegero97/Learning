#!/bin/bash

# Wait Till mysql Service is UP
tmp=60
while ((tmp>=1)); do
	sleep 1
	tmp=$((tmp-1))
	echo "$tmp seconds remaining before sql build.."
done

echo "Starting sql build."

# Execute sql Script on Remote mysql Server
mysql --host=mysql --user=root --password=root -P 3306 -D employees < employees.sql

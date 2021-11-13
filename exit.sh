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



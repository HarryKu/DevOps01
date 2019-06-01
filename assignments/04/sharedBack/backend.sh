#!/usr/bin/env bash

# python3-pip
sudo apt install python3-venv python3-pip -y
# nameko
pip3 install nameko

# create some files
cd /vagrant_data
if [ -d "/vagrant_data/files" ]
then
	rm -r files
fi
mkdir files
cd files
echo "This is file A." > a.txt
echo "Hello, this is the content in B file." > b.txt
echo "Hi, file C!" > c.txt
echo "Greetings from file D!" > d.txt

# run nameko
cd /vagrant_data
nameko run BackEnd > log.txt &

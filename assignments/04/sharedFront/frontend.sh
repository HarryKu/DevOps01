#!/usr/bin/env bash

# python3-pip
sudo apt install python3-venv python3-pip -y
# nameko
pip3 install nameko

# run nameko
cd /vagrant_data
nameko run FrontEnd > log.txt &

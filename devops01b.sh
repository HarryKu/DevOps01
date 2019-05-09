#!/bin/bash
# if [ -z $1 ] means if $1 is empty
if [ -z $1 ]
then 
	echo "No parameters is passed!"
elif [ $1 == "-volumes" ]
then
	df -h
elif [ $1 == "-cpu" ]
then
	sysctl -n machdep.cpu.core_count
	sysctl -n machdep.cpu.brand_string	
elif [ $1 == "-ram" ]
then
	hostinfo
elif [ $1 == "-network" ]
then
	ifconfig en0 | awk '/ether/{print $2}'
	ifconfig en0 | awk '/inet/{print $2}'
elif [ $1 == "-all" ]
then
	df -h
	sysctl -n machdep.cpu.core_count
	sysctl -n machdep.cpu.brand_string	
	hostinfo
	ifconfig en0 | awk '/ether/{print $2}'
	ifconfig en0 | awk '/inet/{print $2}'
else 
	echo "Wrong command!"
fi

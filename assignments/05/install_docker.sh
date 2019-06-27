#!/bin/bash

# check if is empty string
if [ -z $1 ]
then
	echo "No parameter is passed!"
	echo "usage: install_docker.sh repository:tag"
elif [[ $1 =~ ^[0-9A-Za-z.]+:[0-9A-Za-z.]+$ ]]
then
	# pull ubuntu
	docker pull ubuntu
	# mkdir and cd to n5
	mkdir n5 && cd n5
	wget https://raw.githubusercontent.com/docker-library/python/4df129649329186fb42c9c33215b41d82bc0e58e/3.6/jessie/Dockerfile
	docker build .
	# show newly created image
	docker images | grep none
	# get this new image ID
	dockerID=$(docker images | grep none | awk '{print $3}')
	echo $dockerID
	# tag this image with input argument
	docker tag $dockerID $1
	# check python version
	docker run -it $1 python --version
	# run it
	docker run -it $1 bash

else
	echo "sorry, bad argument is passed!"
	echo "usage: install_docker.sh repository:tag"
fi

# get a ubuntu docker image from hub.docker.com (docker pull)
# pass in a command-line argument of the form repository:tag that will be used below.

# If this command line argument is not present, exit the bash script with a usage message
# create a directory named n5, cd into n5

# download - python (Links to an external site.)/6 (Links to an external site.)/jessie (Links to an external site.)/Dockerfile (hint: as shown in class, use get it “Raw” from github to get the url to code into your script)

# Build a docker image

# Show the new docker image is on your system

# Tag the new Docker image using repository:tag – jessie:python3.6 

# the tag must be passed in as a command line argument to the script

# Show that the Docker image is tagged

# Run the Docker image from your script, non-interactively, verifying that Python 3.6 is installed  

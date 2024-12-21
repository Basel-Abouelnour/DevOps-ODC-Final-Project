#!/bin/bash

#for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

########################################################
# adding docker to sudoers group <<<change username>>>
########################################################
sudo usermod -aG docker $1 #<your usrname should be here instead of the comment>
sudo systemctl restart docker
newgrp docker

#docker run hello-world
docker ps -a
# history


# Jenkins Installation
## Java Prerequisite
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version 							
#next lines are the ouput 
#openjdk version "17.0.8" 2023-07-18
#OpenJDK Runtime Environment (build 17.0.8+7-Debian-1deb12u1)
#OpenJDK 64-Bit Server VM (build 17.0.8+7-Debian-1deb12u1, mixed mode, sharing)

## Jenkins 
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins


## Creating Docker group and adding jenkins as a user in it
sudo usermod -aG docker $1  #<your usrname should be here instead of the comment>			# root as an example  or the user
sudo usermod -aG docker jenkins
sudo systemctl restart docker
newgrp docker
sudo systemctl restart jenkins
groups jenkins 							
#check ouput should be -> jenkins : jenkins docker


# Installing Ansible
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

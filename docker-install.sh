#!/bin/bash
sudo hostname docker
sudo apt update -y 
sudo apt install docker.io -y
sudo apt install openjdk-11-jdk -y
sudo apt install openjdk-11-jdk -y
# install Jenkins in ubuntu:
sudo apt install default-jre -y
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo echo "jenkins ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/jenkins
sudo echo "docker ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/docker
sudo apt-get update
sudo apt-get install jenkins -y 
sudo systemctl start jenkins 
sudo usermod -aG docker ubuntu 
sudo usermod -aG docker jenkins

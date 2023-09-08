#!/bin/bash

# Update package index and install required dependencies
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update

# Install Docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Install Docker Compose
sudo apt install docker-compose-plugin
sudo apt-get install docker-compose-plugin

# Add your user to the docker group (optional, allows running Docker without sudo)
sudo usermod -aG docker ubuntu
# Maybe restart the system (sudo shutdown -r now) to get the updated rights

# Verify Docker and Docker Compose installation
docker --version
docker-compose --version
echo "Docker and Docker Compose installation completed."

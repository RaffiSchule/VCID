#!/bin/bash

# Change directory
cd /home
sudo mkdir praxisarbeit
cd praxisarbeit

# Download microblog image
sudo wget https://os.s1.scloud.switch.ch/swift/v1/ifa-demo/microblog-13-lb-mariadb-V2.zip

# Unzip image
sudo apt install unzip
sudo unzip microblog-13-lb-mariadb-V2.zip

# Use Docker Compose to start the app
docker compose up -d



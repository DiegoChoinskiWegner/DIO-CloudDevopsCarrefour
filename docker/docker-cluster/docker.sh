#!/bin/bash
curl -fsSl http://get.docker.com | sudo bash
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /user/local/bin/docker-compose
sudo chmod +x /user/local/bin/docker-compose
sudo usermod -aG docker vangrant
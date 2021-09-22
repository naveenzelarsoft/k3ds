#! /bin/bash
apt update -y
sudo apt-get install -y && apt-transport-https -y
    && ca-certificates -y
    && curl -y
    && gnupg -y
    && lsb-release -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash

curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash

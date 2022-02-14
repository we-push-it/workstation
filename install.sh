#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "start install."

apt-get update
apt-get upgrade -y
apt-get install vim gnupg2 curl wget python3 python3-pip git -y
pip3 install ansible

ansible --version

git clone git@github.com:we-push-it/workstation.git
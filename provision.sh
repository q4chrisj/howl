#!/bin/bash

sudo apt-get update
sudo apt-get install awscli -y 
sudo apt-get install python-pip -y
pip install --upgrade awscli

sudo apt-get install -y git
sudo apt-get install -y rake
sudo curl -L https://bit.ly/janus-bootstrap | bash

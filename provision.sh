#!/bin/bash

apt-get update
apt-get install awscli -y 
apt-get install python-pip -y
pip install --upgrade awscli

apt-get install -y git
apt-get install -y rake
curl -L https://bit.ly/janus-bootstrap | bash

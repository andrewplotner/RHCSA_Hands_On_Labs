#!/bin/bash
useradd -m mary -p password
mkdir /home/mary/.ssh
chown mary:mary /home/mary/.ssh
cd /root
clear

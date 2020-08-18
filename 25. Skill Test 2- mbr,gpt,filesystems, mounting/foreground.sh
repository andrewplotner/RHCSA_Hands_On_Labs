#!/bin/bash
function print_color(){ 
case $1 in
"green")COLOR="\033[0;32m";;
"red")COLOR="\033[0;32m";;
"*")COLOR="\033[0m";;
esac
echo -e "${COLOR} $2 ${NC}"
}

yum install -y gdisk xfsprogs

clear 


#!/bin/bash

# I'm going to make a script that directly, when executing it, I will have tmux without having to perform the steps, and in that way, the work becomes more efficient

# Colors
off='\033[0m'       # Text Reset
# Regular Colors
black='\033[0;30m'        # Black
red='\033[0;31m'          # Red
green='\033[0;32m'        # Green
yellow='\033[0;33m'       # Yellow
blue='\033[0;34m'         # Blue
purple='\033[0;35m'       # Purple
cyan='\033[0;36m'         # Cyan
white='\033[0;37m'        # White

# Clear Screen
sleep 0.7s
clear

# Welcome TmUx
figlet Welcome TmUx | lolcat

# Variable
tmuxb=name

# Function tmux - New Session
echo -e "${purple}Enter the $name for the tmux ${off}"
read -p "[*] Name Session: " name
echo -e "${green}Starting.....: Session $name\n ${off}"
sleep 1s
tmux new -s $name

# Function ctrl_c
ctrl_c() {
	echo -e "\n[!] Exit........."
}
# Ctrl+c + sleep
trap 'ctrl_c' INT
sleep 0.5s

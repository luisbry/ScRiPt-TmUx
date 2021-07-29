#!/usr/bin/bash

# Clear Screen
sleep 0.8s
clear
# Welcome Installation
figlet Install TmUx | lolcat

# Install Tmux
sleep 0.8s
echo -e "Install tmux in console"
apt install tmux -s
sleep 0.9s

# Install Theme (on-my-tmux) Tmux - (user,root)
sleep 0.8s
echo -e "Extracting on-my-tmux....."
cd
sleep 0.8s
echo -e "Clon reporsitories....."
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
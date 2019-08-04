#!/bin/bash


# variables 
oras=$(date)
loc=$(pwd)

cat << "EOF" 
 
      ___  _       __  __         ____   _    
     / _ \| |_ ___|  \/  |_  _ __|_  /__| |_  
    | (_) | ' \___| |\/| | || |___/ /(_-< ' \ 
     \___/|_||_|  |_|  |_|\_, |  /___/__/_||_|
                          |__/                
         ___         _        _ _         
        |_ _|_ _  __| |_ __ _| | |___ _ _ 
         | || ' \(_-<  _/ _` | | / -_) '_|
        |___|_||_/__/\__\__,_|_|_\___|_|                                              
                                                                                                                             
EOF
echo
echo "Oh-My-ZSH Installer                 " 
echo
echo "Maintained by: James Espena via ==> https://github.com/rockstartraders" 
echo
echo "Please see Install Instruction for details" 
echo "This is not a fork of Oh My Zsh, This is an automated installer for Ubuntu or Debian Based Distro." 
echo "Kudos to this guy for making Oh-My-Zsh : https://github.com/robbyrussell/oh-my-zsh" 
echo
echo
echo  "Date and Time Now:" $oras
echo
echo
echo "Updating System First .. "
echo
echo 
sudo apt update -y 
echo
echo 
echo "Checking System .."
echo 
env 
echo
echo
echo "Checking Kernel Version .."
uname -sr
echo
echo
echo "Checking all necessary Packages and dependencies .."
echo
echo


# progress bar 
echo -ne '(0%) ##########                                  (10%)\r'
sleep 1
echo -ne '(0%) ####################                        (20%)\r'
sleep 1
echo -ne '(0%) #######################                     (30%)\r'
sleep 1
echo -ne '(0%) ###########################                 (50%)\r'
sleep 1
echo -ne '(0%) ################################            (60%)\r'
sleep 1
echo -ne '(0%) ###################################         (80%)\r'
sleep 1
echo -ne '(0%) ########################################    (90%)\r'
sleep 1
echo -ne '(0%) ########################################### (100%)\r'
echo -ne '\n'

echo
echo
echo "Installing git .."
echo

echo
sudo apt install git -y 
echo
echo
echo "Installing wget .."
echo
echo
echo
sudo apt install wget -y 
echo
echo
echo "Installing curl .."
echo
echo
echo
sudo apt install curl -y 
echo
echo
echo
echo "Installing zsh .."
echo
echo
sudo apt install zsh -y 
echo
echo
echo "Installing Python .."
echo "We'll by default I know python is installed in Linux but there's no harm in making sure .. LOL"
echo
echo
sudo apt install python -y 
echo
echo
echo
echo "Checking Installed Packages and Paths .."
echo
echo
echo "Package Versions .."
echo
git --version
echo
wget --version
echo
curl --version
echo
python --version
echo
zsh --version
echo
echo
echo "Package Path .."
echo
echo
echo "Path for git:"
which git
echo
echo "Path for wget:"
which wget
echo
echo "Path for curl:"
which curl
echo
echo "Path for python:"
which python
echo
echo "Path for zsh:"
which python
echo
echo
echo "Current Path" $loc
echo
echo
echo "Cloning Oh-my-zsh ... "
echo
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
echo
echo "Copying Oh-my-zsh template to zshrc ... "
echo
echo
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc 
echo
echo
echo "Refreshing Terminal .."
cd /
cd /home
cd $@
sudo apt autoremove -y
echo
echo
echo "Please refer to this documentation : https://github.com/robbyrussell/oh-my-zsh for information on how to beautify and add functional plugins via Oh-my-Zsh"
echo
echo
echo "Thank You....     " 
echo
zsh







































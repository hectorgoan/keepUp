#!/bin/bash
#Auto updater/upgrader/cleaner for:
#	- debian-based linux distros
# 	- darwin macOS systems
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ $# -eq 0 ]
  then
    echo "Please, specify your system's OS with the following options:";
    echo "	linux	-> for debian-based linux distros";
    echo "	mac 	-> for darwin systems with homebrew installed";
fi
if [ $# -eq 1 ]
  then
  	if [ $1 == "linux" ]
  		then
  		sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get autoremove && sudo apt-get clean && source ${__dir}/upgradeZSH.sh
  	fi
  	if [ $1 == "mac" ]
  		then
  		brew doctor && brew update && brew upgrade && brew cleanup && source ${__dir}/upgradeZSH.sh
  	fi
fi
if [ $# -eq 2 ]
  then
    if [ $1 == "linux" && $2 == "y" ]
      	then
    	sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get -y clean && ${__dir}/upgradeZSH.sh
    fi
fi

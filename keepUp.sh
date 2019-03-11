#!/bin/bash
#Auto updater/upgrader/cleaner for:
#	- debian-based linux distros (with ohMyZsh installed)
# 	- darwin macOS systems (with homebrew & ohMyZsh installed)

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ $# -eq 0 ]
  then
    echo "Please, specify your system's OS with the following options:";
    echo "	l	-> for debian-based linux distros with ohMyZsh installed";
    echo "	m 	-> for darwin systems with homebrew & ohMyZsh installed";
fi
if [ $# -eq 1 ]
  then
  	if [ $1 == "l" ]
  		then
  		sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get autoremove && sudo apt-get clean && source ${__dir}/upgradeZSH.sh
  	fi
  	if [ $1 == "m" ]
  		then
  		brew doctor && brew update && brew upgrade && brew cleanup && source ${__dir}/upgradeZSH.sh
  	fi
fi
if [ $# -eq 2 ]
  then
    if [[ $1 == "l" ]] && [[ $2 == "y" ]]
      	then
    	sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get -y clean && ${__dir}/upgradeZSH.sh
    fi
fi

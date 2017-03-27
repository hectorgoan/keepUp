#!/bin/bash
#Auto updater/upgrader/cleaner for debian-based linux distros
if [ $# -eq 0 ]
  then
    sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get autoremove && sudo apt-get clean
fi
if [ $# -eq 1 ]
  then
    if [ $1 == "y" ]
      then
    	sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove && sudo apt-get -y clean
    fi
fi

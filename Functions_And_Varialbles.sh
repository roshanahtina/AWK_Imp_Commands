#!/bin/bash
## This is a examples from Linux academy
## https://linuxacademy.com/blog/linux/conditions-in-bash-scripting-if-statements/

set -e

# This function block is for update and cleanup the packages os level.....! 
update ()
{
    echo "--------------We are starting the OS update by using you update all command....!-----------------"
    sudo yum update -yy
}

cleanup ()
{
      echo "----We are cleaning up after yum update for OS----"    
      yum  clean all -yy
}

help ()
{
    echo "----Please use following prameters as usage (1) update or (2) cleanup----"
    echo "----Please use correct prameters for script to run...-----"
}

up-help ()
{
echo << _EOF_
You should either use of "help or update or cleanup"
Else you will face error....
./script help
./script cleanup
./script update
_EOF_
}

# If 1st parameters is UPDATE and then execute as below
if [ "$1" == "update" ]; then
    echo "=====We are got 1st parameter as 'update', so we are about to update the OS===="
    update
    sleep 2
    echo "====UPDATE has been done===="
fi

# If 1st parameters is cleanup and then execute as below
if [ "$1" == "cleanup" ]; then
    echo "====We are anout to cleanup the OS===="
    cleanup
    sleep 2
    echo "====CLEANUP has been done===="
fi

## What if we didn't get update and cleanup option as 1st prameters
#if [ "$1" != "update" -o "cleanup" ]; then
#   echo "==================Plesae use update or clenaup to perform the action on line server======================="
#   else
#   echo "==============Else get rid of using this script... Thanks==================="
#fi

# Please below is the help option for more usage of the script
if [ "$1" == "help" ]; then
    echo "====We have got the help option so getting the help content as below====="
    help
fi

if [ -n "$1"  ]; then
    echo "This is an invalide argument.... So please provide an valid arguments"
    up-help
fi

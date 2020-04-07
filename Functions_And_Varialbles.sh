#!/bin/bash

# This function block is for update the packages 
update ()
{
    echo "We are starting the OS update by using you update all command....!"
    yum update all -yy

}

cleanup ()
{
      echo "We are cleaning up after yum update for OS"    
      yum  clean all -yy


}

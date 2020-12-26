#!/bin/bash
# Enter the a User list file as $1.
USERFILE=$1

if [ "USERFILE" = "" ]
  then
  echo "Please provide a valide user file"
exit 10

elif test -e $USERFILE
then
  for user in `cat $USERFILE`
    do
      useradd $user; echo "$user:linux" | chpasswd
      #userdel -r $user
      echo "Below mentioned users are created"
      echo $user
    done
exit 20

else
  echo "Provide a valide input file"

fi

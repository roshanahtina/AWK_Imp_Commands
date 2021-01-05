#!/bin/bash
for host in `ls <Path to databags>`
do
# Echo the hostname where it's making the chages from the file name.
echo $host
hostname=`echo "$host" | cut -d '.' -f 1`
#echo $hostname
sed -i "" "2s/\"kickstart\"/\"${hostname}\"/" <Path to databags>"${hostname}".json
sed -i "" '153,181s/\"unixadmins\"/\"null\"/' <Path to databags>"${hostname}".json
done

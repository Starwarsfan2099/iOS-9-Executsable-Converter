#!/bin/bash
if [[ $1 == "-H" ]]
  then
      echo "iOS 9 executable converter!"
      exit
fi
echo "Converting $1"
sed -i'' 's/\x00\x30\x93\xe4/\x00\x30\x93\xe5/g;s/\x00\x30\xd3\xe4/\x00\x30\xd3\xe5/g;' $1
echo "Repairing $1"
ldid -S $1
echo "$1 Successfully converted!"

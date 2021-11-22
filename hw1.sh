#!/bin/bash

getent passwd $1 > /dev/null 2&>1

if [ $1 -eq 0 ]; then
 if [ -d /$2 ]; then
 chown -R $1:$1 $2
 else 
  echo "now such dir"
 fi
else 
echo "now such user"
fi

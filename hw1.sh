#!/bin/bash

getent passwd $1 > /dev/null 2&>1

if [ $1 -eq 0 ]; then
 if [ -d /$2 ]; then
 chown -R $1:$1 $2
 else 
  echo "not such dir"
 fi
else 
echo "not such user"
fi

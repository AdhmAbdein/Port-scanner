#!/bin/bash

port=$1

for i in "$port"
do
   if nc -zv localhost "$i"
   then
      echo "the port number "$i" is open"
   else
      echo "the port number "$i" is closed"
   fi
done


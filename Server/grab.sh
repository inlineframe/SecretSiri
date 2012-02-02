#!/bin/bash
while true; 
do 
echo "Starting SecretSiri Server"
    if sudo ruby start.rb; then

       echo "SecretSiri Server is Running"
   exit 1
   else
      echo "SecretSiri server Crashed, Restarting!"
fi
sleep 2
done

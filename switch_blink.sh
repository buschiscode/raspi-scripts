#!/bin/bash

# Button einschalten
gpio write 7 out
gpio write 2 out
# rote LED einschalten
gpio write 4 out
# gelbe LED einschalen
gpio write 5 out
# grüne LED einschalten
gpio write 6 out

gpio mode 7 in
gpio mode 2 in

while true; do
status=`gpio read 7`
if [ "$status" -eq "1" ]
then
 gpio write 6 1
 sleep 3
 gpio write 6 0
 gpio write 5 1
 sleep 3
 gpio write 5 0
 gpio write 4 1
 sleep 3
 gpio write 4 0
fi

status1=`gpio read 2`
if [ "$status1" -eq "1" ]
then
 gpio write 6 1
 sleep 0.5
 gpio write 6 0
 gpio write 5 1
 sleep 0.5
 gpio write 5 0
 gpio write 4 1
 sleep 0.5
 gpio write 4 0
fi
done

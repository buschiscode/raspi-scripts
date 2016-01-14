#!/bin/bash
#GPIO = Programm zum steuern
#WRITE = Kommando für das Programm
#4 = GPIO Port
#1 = schalte den GPIO Port an 

# rote LED einschalten
gpio write 4 out
# gelbe LED einschalen
gpio write 5 out
# grüne LED einschalten
gpio write 6 out
i=0
while [ $i -lt 10 ]; do
gpio write 4 1
# red led
    sleep 0.5
    gpio write 4 0
    sleep 0.5
gpio write 5 1
# yellow led
    gpio write 5 1
    sleep 0.5
    gpio write 5 0
    sleep 0.5
gpio write 6 1
# green led
    gpio write 6 1
    sleep 0.5
    gpio write 6 0
    sleep 0.5
let i=i+1
done

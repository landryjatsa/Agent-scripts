#!/bin/bash



#Description: script to audit a newly installed server
#Author: landry
# Date: april 2021

## Check the OS verion

os=$(cat /etc/*release | head -1)
echo " The OS is ${os} "

sleeep 1

## Check the size of the memory

mem=$(free -m | grep Mem | awk '{print$2}' )
echo " The total memory size is ${mem}"

sleep 1

## Check the size of the hard drive
hd=$ (lsblk | grep disk| awk '{print$4}' )
echo " The hard drive size is ${hd}"

sleep 1 

## Check the cpu speed
sp=$ (lscpu | grep "CPU MHZ" | awk '{print$3}' )
echo "The the cpu speed is ${sp} MHZ"

sleep 1

## Check the kernel version 
kn=$ (uname -r | awk -F- '{print$1}')
echo "The kernel version is ${kn}"

sleep 1 

## Check the system bits

echo " The system has $(arch | awk -F_ '{print$2}' bits"

sleep 1


## Check the Hostname
HOSTNAME=$ (hostname??????
echo "The hostname is $HOSTNAME "

sleep 1 

## Check the ip address
ip=$ (ip address show dev enp0s3 | grep inet | head -1 | awk '{print$2}' )
echo " The ip address is ${ip} "

sleep 1 

## Check all opned ports
echo "Here are all the opened port"
$ (ss -tulpn | grep LISTEN)"

Sleep 1 

## Check the DNS
echo " The DNS address is 
$ ( cat /etc/resolv.conf | grep nameserver)"

sleep 1 

## Cheek the manufacturer 
echo " The manufacturer is $(dmidecode -t system | grep Manufacturer | awk '{print$2}' )"

## Virtual or physical system
echo " This is a $(dmidecode -t system | grep Family | awk '{print$2,$3}')"

sleep 1 

## The mac address
echo "the system mac address is $(ip address show dev enp0s3 | grep ether | awk '{print$2}')"

sleep 1 
exit 0

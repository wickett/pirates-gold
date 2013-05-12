!#/bin/bash

if [ "$#" == "0" ]; then
 echo "proper syntax $0 [ip range]"
 exit 1
fi

#Do a zone transfer
dig @10.42.6.2 sec642.org axfr | tee output/dns_zone_transfer

#Quick look at the network
sudo nmap -sL $1

#Look for any web services
sudo nmap -oX output/nmap_fast_output.xml -F $1

#OS detection
sudo nmap -O $1

#Full nmap
sudo nmap -oX output/nmap_full_output.xml -sS $1



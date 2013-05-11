!#/bin/bash

#Do a zone transfer
dig @10.42.6.2 sec642.org axfr | tee output/dns_zone_transfer

#Quick look at the network
sudo nmap -sL 10.42.6.0/24

#Look for any web services
sudo nmap -oX output/nmap_fast_output.xml -F 10.42.6.0/24

#OS detection
sudo nmap -O 10.42.6.0/24

#Full nmap
sudo nmap -oX output/nmap_full_output.xml -sS 10.42.6.0/24



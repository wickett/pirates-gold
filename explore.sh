!#/bin/bash

#Do a zone transfer
dig @10.42.6.2 sec642.org axfr

#Look for any hidden web services not in dns
sudo nmap -oX -sS 10.42.6.0/24 -oX output.xml

#Look for OS detection
sudo nmap -sS 10.42.6.0/24


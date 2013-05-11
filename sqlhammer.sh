#!/bin/bash

if [ "$#" == "0" ]; then
    echo "proper syntax $0 [host url with parameters ready for sqlmap]"
    exit 1
fi

echo "Running sqlmap:"
sqlmap -u $1 -v 4  > ./output/wordpress/blindelephant.out

echo "Running WPScan Scanning:"
wpscan --url $1 --enumerate p --proxy 127.0.0.1:8080

#nmap --script=http-wordpress-plugins --script-args http-wordpress-plugins.root="/",http-wordpress-plugins.search=500 http://captaincreative.com.au/
exit 0

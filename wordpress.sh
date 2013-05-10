#!/bin/bash

if [ "$#" == "0" ]; then
    echo "proper syntax $0 [host url]"
    exit 1
fi

echo "Running Blind Elephant Scanning:"
BlindElephant.py $1 wordpress > ./output/wordpress/blindelephant.out

echo "Running WPScan Scanning:"
wpscan --url $1 --enumerate p --proxy 127.0.0.1:8080
exit 0

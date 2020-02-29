#!/bin/bash

COUNTRY="United Kingdom"
DATE=`date '+%A %d %B %Y at %T'`
RETRIEVED_DATA=`curl -s https://ncov2019.live/ | html2text | grep -A 1 -i "$COUNTRY" | grep -v "$COUNTRY"`

echo "
COVID-19 (Coronavirus) Infections in $COUNTRY
$DATE
$RETRIEVED_DATA"

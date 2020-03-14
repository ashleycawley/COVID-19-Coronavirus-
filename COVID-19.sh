#!/bin/bash

# Author: Ashley Cawley / ash@ashleycawley.co.uk / @ashleycawley on Twitter
# Retrieves data from the superb website: https://ncov2019.live/

# Variables
COUNTRY="United Kingdom"
DATE=`date '+%A %d %B %Y at %T'`
CONFIRMED=`curl -s https://ncov2019.live/ | html2text | grep -i "$COUNTRY" | awk '{print $3}' | uniq`
DECEASED=`curl -s https://ncov2019.live/ | html2text | grep -i "$COUNTRY" | awk '{print $4}' | uniq`
RECOVERED=`curl -s https://ncov2019.live/ | html2text | grep -i "$COUNTRY" | awk '{print $5}' | uniq`
SERIOUS=`curl -s https://ncov2019.live/ | html2text | grep -i "$COUNTRY" | awk '{print $6}' | uniq`

# Main Output
echo "
COVID-19 (Coronavirus) Infections in $COUNTRY on $DATE
Confirmed: $CONFIRMED | Deceased: $DECEASED | Recovered: $RECOVERED | Serious: $SERIOUS"

exit 0

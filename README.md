# COVID-19  (Coronavirus)
This bash script will automatically log infections day by day or hour by hour to a log file of your choosing. You can choose the frequency in which statistics are saved to your log.

This script retrieves data from this great website: https://ncov2019.live/ which is gathering data from the World Health Organization.

### Sample Output
```
COVID-19 (Coronavirus) Infections in United Kingdom
Saturday 29 February 2020 at 17:33:15
Confirmed: 23 Serious: 8
```

## Setup
Download the script to your Linux/UNIX system by running:

`wget https://raw.githubusercontent.com/ashleycawley/COVID-19-Coronavirus-/master/COVID-19.sh`

### Install Required Packages
This script uses a small tool called _html2text_ which converts webpages into usable data for scripts like this one. You will need to install html2text if you don't already have it installed. Depending on your Operating System the following commands may install it for you:

`sudo apt-get install html2text -y`

or

`sudo yum install html2text -y`

### Configure Your Country
Edit the script with `vi COVID-19.sh` and adjust the `COUNTRY="United Kingdom"` part to contain your country. Ensure that your country is entered exactly as it is shown on this page: https://ncov2019.live/


### Run on Schedule
Add this script to your crontab (Scheduled Tasks) by running:

`crontab -e` to edit your crontab.
Add the following line but edit accordingly to set your paths:

`0 */12 * * * /bin/bash /home/your_user/COVID-19.sh >> /home/your_user/coronavirus-infection.log`

That will trigger the script twice a day (at mid-day and midnight) and will log the date/time, number of confirmed infections and number of those in a serious condition. 

## Run the script manually for instant statistics
In your Terminal make sure you are in the folder which contains the script, then make it executable by running:

`chmod +x COVID-19.sh`

Then run the script with:
`./COVID-19.sh`

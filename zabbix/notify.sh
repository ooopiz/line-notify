#!/bin/bash

#
# Usage : sh line-notify.sh $line-access-token $subject $message.............................
#

#echo $@ >> /tmp/logfile.txt
#echo $1 >> /tmp/logfile.txt
#echo $2 >> /tmp/logfile.txt
#echo $3 >> /tmp/logfile.txt

DATE=`date '+%Y-%m-%d %H:%M:%S'`
access_token=$1
subject=$2
message=$3
nl="%0D%0A"

send_text="${nl}${nl}${DATE}${nl}Subject: ${nl}${subject}${nl}${nl}Message: ${nl}${message}"

#echo $send_text
#echo $send_text >> /tmp/logfile.txt

curl -X POST \
https://notify-api.line.me/api/notify \
  -H 'Authorization: Bearer '$access_token \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d "message=$send_text"


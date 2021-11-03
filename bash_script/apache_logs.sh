#!/bin/bash
#Using sed printing logs and redirect to new file
sed -n '/Oct 01 14:42:01/ , /Oct 31 10:50:28/p' /var/logs/apache/access.log  > /tmp/apache.log

find /tmp -type f -name "apache.log" |while read file
  do
    RESULT=$(egrep "[^0](404)" $file)
      if [[ ! -z $RESULT ]]
         then
            echo "Error(s) in $file on $HOSTNAME at "$(date)": $RESULT">> /tmp/output.txt
     fi
  done

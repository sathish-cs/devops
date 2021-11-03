#!/bin/bash

# It finds top IP's that access webserver 

awk '{ print $1}' /var/log/apache/access.log | sort | uniq -c | sort -nr | head -n 5 > output.txt


# awk is a text processing and scanning to see the lines that match the specified patterns.

# sort is used to sort the lines and -n used to compare in numeric values.

# uniq is report or filter out repeated lines in a file

# head used to display top items of the file


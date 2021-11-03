
#!/bin/sh
DISK_USAGE="Disk Usage Report on "`date`""
MESSAGE="/tmp/disk-usage.out"
MESSAGE1="/tmp/disk-usage-1.out"
echo "---------------------------------------------------------------------------------------------------" >> $MESSAGE1
echo "HostName            Filesystem                Size Used Avail Use% Mounted on" >> $MESSAGE1
echo "---------------------------------------------------------------------------------------------------" >> $MESSAGE1
# Using for loop to ssh multiple servers
for server in `more ./servers.txt` 
do
# SSH to servers and check for the disk usage under /home directory
output=`ssh $server  du -hsx /home/ | sort -rh | head -10`
# Redirecting server list and output to a file
echo "$server: $output" >> $MESSAGE
done

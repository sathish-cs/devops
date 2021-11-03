
#!/bin/sh
SUBJECT="Disk Usage Report on "`date`""
MESSAGE="/tmp/disk-usage.out"
MESSAGE1="/tmp/disk-usage-1.out"
echo "---------------------------------------------------------------------------------------------------" >> $MESSAGE1
echo "HostName            Filesystem                Size Used Avail Use% Mounted on" >> $MESSAGE1
echo "---------------------------------------------------------------------------------------------------" >> $MESSAGE1
for server in `more ~/Documents/servers.txt`
do
output=`ssh $server  du -hsx /home/ | sort -rh | head -10`
echo "$server: $output" >> $MESSAGE
done

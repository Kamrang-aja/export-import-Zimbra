#!/bin/bash
# The script first list the exported cos names, then iterate through all members within this cos and finally assigns the 
# user to the COS. 

#=== Scrip restort CoS in mail server =========================
for cos in `/bin/ls -1 /opt/zimbra/backup/archives/import/cos_users | tr " " "\n"`
do
	for i in `cat /opt/zimbra/backup/archives/import/cos_users/$cos`
		do
		zmprov sac $i $cos
		done
done

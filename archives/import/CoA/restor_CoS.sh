#!/bin/bash
# The script first list the exported cos names, then iterate through all members within this cos and finally assigns the 
# user to the COS. 

#=== Scrip restort CoS in mail server =========================
for cos in `/bin/ls -1 /archives/import/cos_users | tr " " "\n"`
do
	for i in `cat /archives/import/cos_users/$cos`
		do
		zmprov sac $i $cos
		done
done

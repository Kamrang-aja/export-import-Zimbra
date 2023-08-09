#!/bin/bash
# The script first list the exported cos names, then iterate through all members within this cos and finally assigns the 
# user to the COS. 

#=== Scrip restort CoS in mail server =========================
for cos in /opt/zimbra/backup/archives/export/cos_users/*
do
   while read user; do
      echo "zmprov sac $user" \"$(basename -- "$cos")\" >> /tmp/cos_users.prov
   done <"$cos"
done
zmprov < /tmp/cos_users.prov

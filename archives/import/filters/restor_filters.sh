#!/bin/bash

#=== Scrip restort filters in mail server =========================
for i in `cat /opt/zimbra/backup/archives/import/emails.txt`; do
    zmprov ma  $i zimbraMailSieveScript "`cat /opt/zimbra/backup/archives/import/filter/$i.filter`";
    echo "Filter Restore for account ... $i"; 

done

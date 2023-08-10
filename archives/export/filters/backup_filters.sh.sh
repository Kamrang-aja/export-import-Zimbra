#!/bin/bash

#===== Scrip create filters for emails =========================
for i in `cat /archives/export/emails/emails.txt`; do
    zmprov ga $i zimbraMailSieveScript > /tmp/filter
    sed -i -e "1d" /tmp/filter
    sed 's/zimbraMailSieveScript: //g' /tmp/filter  > /archives/export/filters/$i.filter
    rm -f /tmp/filter
    echo "Filter  downloaded for .... $i"
done 

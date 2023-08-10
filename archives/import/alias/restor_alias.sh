#!/bin/bash

#=== Scrip restor distribution lists =========================
for i in `cat /archives/importemails.txt`
do
    if [ -f "/opt/zimbra/backup/archives/import/alias/$i.txt" ]; then
    for j in `grep '@' /archives/import/alias/$i.txt`
    do
    zmprov aaa $i $j
    echo "$i HAS ALIAS $j --- Restored"
    done
    fi
done

#!/bin/bash
# add all memebers to each of these distribution lists

#=== Scrip restort distribution members in mail server =========================
for i in `cat /archives/import/distributinlist.txt`
do
    for j in `grep -v '#' /archives/import/distributinlist_members/$i.txt |grep '@'` 
    do
    zmprov adlm $i $j
    echo " $j member has been added to list $i"
    done

done

#!/bin/bash

#=== Scrip restort user & password in mail server =========================
USERPASS="/archives/import/userpass"
USERDDATA="/archives/import/userdata"
USERS="/archives/import/emails.txt"
for i in `cat $USERS`
do
givenName=$(grep givenName: $USERDDATA/$i.txt | cut -d ":" -f2)
displayName=$(grep displayName: $USERDDATA/$i.txt | cut -d ":" -f2)
shadowpass=$(cat $USERPASS/$i.shadow)
tmpPass="CHANGEme"
zmprov ca $i CHANGEme cn "$givenName" displayName "$displayName" givenName "$givenName" 
zmprov ma $i userPassword "$shadowpass"
done

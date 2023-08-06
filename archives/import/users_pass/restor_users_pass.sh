#!/bin/bash

#=== Scrip restort user & password in mail server =========================
USERPASS="/opt/zimbra/backup/archives/import/userpass"
USERDDATA="/opt/zimbra/backup/archives/import/userdata"
USERS="/opt/zimbra/backup/archives/import/emails.txt"
for i in `cat $USERS`
do
givenName=$(grep givenName: $USERDDATA/$i.txt | cut -d ":" -f2)
displayName=$(grep displayName: $USERDDATA/$i.txt | cut -d ":" -f2)
shadowpass=$(cat $USERPASS/$i.shadow)
tmpPass="CHANGEme"
zmprov ca $i CHANGEme cn "$givenName" displayName "$displayName" givenName "$givenName" 
zmprov ma $i userPassword "$shadowpass"
done

#!/bin/bash

#===== Scrip create signature for emails =========================
for i in `cat /archives/export/emails/emails.txt`; do
    zmprov ga $i zimbraPrefMailSignatureHTML > /tmp/signature;
    sed -i -e "1d" /tmp/signature ;
    sed 's/zimbraPrefMailSignatureHTML: //g' /tmp/signature > /archives/export/signatures/$i.signature ;
    rm -rf /tmp/signature;
    `zmprov ga $i zimbraSignatureName > /tmp/name` ;
    sed -i -e "1d" /tmp/name ;
    sed 's/zimbraSignatureName: //g' /tmp/name > /archives/export/signatures/$i.name ;
    rm -rf /tmp/name ;
done

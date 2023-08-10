#!/bin/bash

#=== Scrip restort signatures in mail server =========================
for i in `cat /archives/import/emails.txt`; do
    zmprov ma $i zimbraSignatureName "`cat /archives/import/signatures/$i.name`";
    zmprov ma $i zimbraPrefMailSignatureHTML "`cat /archives/import/signatures/$i.signature`";
    zmprov ga $i zimbraSignatureId > /tmp/firmaid; sed -i -e "1d" /tmp/firmaid;
    firmaid=`sed 's/zimbraSignatureId: //g' /tmp/firmaid`;
    zmprov ma $i zimbraPrefDefaultSignatureId "$firmaid";
    zmprov ma $i zimbraPrefForwardReplySignatureId "$firmaid";
    rm -rf /tmp/firmaid;
    echo $i "done!";
done

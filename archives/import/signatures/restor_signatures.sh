#!/bin/bash

#=== Scrip restort signatures in mail server =========================
for i in `cat /opt/zimbra/backup/archives/import/emails.txt`; do
    zmprov ma $i zimbraSignatureName "`cat /opt/zimbra/backup/archives/import/signatures/$i.name`";
    zmprov ma $i zimbraPrefMailSignatureHTML "`cat /opt/zimbra/backup/archives/import/signatures/$i.signature`";
    zmprov ga $i zimbraSignatureId > /tmp/firmaid; sed -i -e "1d" /tmp/firmaid;
    firmaid=`sed 's/zimbraSignatureId: //g' /tmp/firmaid`;
    zmprov ma $i zimbraPrefDefaultSignatureId "$firmaid";
    zmprov ma $i zimbraPrefForwardReplySignatureId "$firmaid";
    rm -rf /tmp/firmaid;
    echo $i "done!";
done

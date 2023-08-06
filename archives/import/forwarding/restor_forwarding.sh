#=== Scrip restor mails accounts =========================
for i in `cat /opt/zimbra/backup/archives/import/emails.txt`; do
    zmprov ma  $i zimbraPrefMailForwardingAddress "`cat /opt/zimbra/backup/archives/import/forwarding/$i.forward`";
    echo "Forward Restore for account ... $i";

done

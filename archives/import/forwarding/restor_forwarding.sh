#=== Scrip restor mails accounts =========================
for i in `cat /archives/import/emails.txt`; do
    zmprov ma  $i zimbraPrefMailForwardingAddress "`cat /archives/import/forwarding/$i.forward`";
    echo "Forward Restore for account ... $i";

done

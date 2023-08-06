#=== Scrip backup alias in mail server =========================
for i in `cat /opt/zimbra/backup/archives/export/emails/emails.txt`; 
	do zmprov ga  $i | grep zimbraMailAlias |awk '{print $2}' > /opt/zimbra/backup/archives/export/alias/$i.txt ;
	echo $i ;
done

#=== Scrip remove those empty files as follows =========================
find /opt/zimbra/backup/archives/export/alias/ -type f -empty | xargs -n1 rm -v 
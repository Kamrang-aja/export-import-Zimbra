#=== Scrip backup all user names, Display names and Given Names in mail server =========================
for i in `cat /opt/zimbra/backup/archives/export/emails/emails.txt`; 
	do zmprov ga $i  | grep -i Name: > /opt/zimbra/backup/archives/export/userdata/$i.txt ; 
done
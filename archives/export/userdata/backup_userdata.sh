#=== Scrip backup all user names, Display names and Given Names in mail server =========================
for i in `cat /archives/export/emails/emails.txt`; 
	do zmprov ga $i  | grep -i Name: > /archives/export/userdata/$i.txt ; 
done

#=== Scrip find all email account’s passwords in mail server =========================
for i in `cat /archives/export/emails/emails.txt`; 
	do zmprov  -l ga $i userPassword | grep userPassword: | awk '{ print $2}' > /archives/export/userpass/$i.shadow; 
done

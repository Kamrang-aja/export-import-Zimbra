#=== Scrip find all emails in mail server =========================
zmprov -l gaa > emails.txt

#=== Scrip backup all email account in mail server =========================
for email in `cat /archives/export/emails/emails.txt`; 
	do  zmmailbox -z -m $email getRestURL '/?fmt=tgz' > $email.tgz ;  
	echo $email ; 
done

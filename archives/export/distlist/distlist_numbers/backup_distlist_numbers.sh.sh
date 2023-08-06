#=== Scrip get all members in distribution lists in mail server =========================
for i in `cat /opt/zimbra/backup/archives/export/distlist/distlist.txt`; 
	do zmprov gdlm $i > /opt/zimbra/backup/archives/export/distlist/distlist_numbers/$i.txt ;
	echo "$i"; 
done
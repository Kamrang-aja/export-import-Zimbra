#=== Scrip get all members in distribution lists in mail server =========================
for i in `cat /archives/export/distlist/distlist.txt`; 
	do zmprov gdlm $i > /archives/export/distlist/distlist_numbers/$i.txt ;
	echo "$i"; 
done

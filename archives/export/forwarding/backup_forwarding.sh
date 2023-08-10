#=== Scrip find all mail forwarding in mail server =========================
for i in `cat /archives/export/emails/emails.txt`; 
	do zmprov  -l ga $i zimbraPrefMailForwardingAddress | grep zimbraPrefMailForwardingAddress: | awk '{ print $2}' > /archives/export/forwarding/$i.forward; 
done 

#=== Scrip remove those empty files as follows =========================
find /archives/export/forwarding/ -type f -empty | xargs -n1 rm -v

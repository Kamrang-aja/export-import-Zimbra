#=== Scrip restor distribution lists (By Kamrang) =========================
for i in `cat /opt/zimbra/backup/archives/import/distributinlist.txt`; 
	do zmprov cdl $i ; 
	echo "$i -- done " ; 
done

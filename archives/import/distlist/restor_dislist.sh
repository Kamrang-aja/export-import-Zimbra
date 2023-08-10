#=== Scrip restor distribution lists (By Kamrang) =========================
for i in `cat /archives/import/distributinlist.txt`; 
	do zmprov cdl $i ; 
	echo "$i -- done " ; 
done

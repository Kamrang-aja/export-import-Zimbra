#=== Scrip restor mail accounts =========================
for i in `cat /archives/import/emails.txt`; 
	do zmmailbox -z -m $i postRestURL "/?fmt=tgz&resolve=skip" /archives/import/$i.tgz ;  
	echo "$i -- finished "; 
done


#=== If there is an error, use the script below =======
#for i in `cat /archives/import/emails.txt`; 
#	do zmmailbox -z -m -t 0 $i postRestURL "/?fmt=tgz&resolve=skip" /archives/import/$i.tgz ; 
#	echo "$i -- finished "; 
#done

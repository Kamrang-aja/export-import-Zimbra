#=== Scrip restort domains in mail server =========================
for i in `cat /archives/import/domains.txt `; 
    do  zmprov cd $i zimbraAuthMech zimbra ;echo $i ;
done

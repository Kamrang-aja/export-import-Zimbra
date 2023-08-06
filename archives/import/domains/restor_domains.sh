#=== Scrip restort domains in mail server =========================
for i in `cat /opt/zimbra/backup/archives/import/domains.txt `; 
    do  zmprov cd $i zimbraAuthMech zimbra ;echo $i ;
done
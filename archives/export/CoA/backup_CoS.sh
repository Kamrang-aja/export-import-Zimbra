#!/bin/bash

# The result is a file/s for each COS, and the users within this specific COS
# Note: If there are no custom created COS, there will be no users listed in the default and default_external files. That 
# means all users are in the "default" COS.
# Since the default and the default_external files will contain no users, their respective files are deleted at 
# the end. Zimbra only detect users that are not in the default COS. Thus, every non detected user is in the default COS. 

#=== Scrip backup all CoS in mail server =========================
source ~/bin/zmshutil; zmsetvars

for i in `zmprov gac`
   do
       id=`zmprov gc $i | grep -e "\bzimbraId\b"|cut -d " " -f 2`

       ldapsearch -x -H $ldap_master_url -D $zimbra_ldap_userdn -w $zimbra_ldap_password| grep -e $id -e "dn: uid=" -e mail:|grep -v Email| grep -e zimbraCOSId -B1 -A1|grep mail|awk '{print $2}' > /opt/zimbra/backup/archives/export/cos_users/$i

/bin/rm -rf /opt/zimbra/backup/archives/export/cos_users/default*

done


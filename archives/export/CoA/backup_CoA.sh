#!/bin/bash

# The result is a file/s for each COS, and the users within this specific COS
# Note: If there are no custom created COS, there will be no users listed in the default and default_external files. That 
# means all users are in the "default" COS.
# Since the default and the default_external files will contain no users, their respective files are deleted at 
# the end. Zimbra only detect users that are not in the default COS. Thus, every non detected user is in the default COS. 

#=== Scrip backup all CoA in mail server =========================
mkdir /tmp/cos_users
IFS=$'\n'
source ~/bin/zmshutil; zmsetvars

for i in `zmprov gac`
   do
       id=$(zmprov gc "$i" zimbraId | grep zimbraId | cut -f2 -d":" | tr -d ' ')

       /opt/zimbra/common/bin/ldapsearch -xLLL -o ldif-wrap=no -h `zmhostname`:389 -D $zimbra_ldap_userdn -w $zimbra_ldap_password "(&(objectclass=zimbraAccount)(zimbraCosId="$id"))" mail > "/opt/zimbra/backup/archives/export/cos_users/$i"

/bin/rm -rf /opt/zimbra/backup/archives/export/cos_users/default*

done

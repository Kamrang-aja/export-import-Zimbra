# import-export-Zimbra

=== Manual Backup in Zimbra Mail Server ===

A. Old mail servers (Server A) <-- Export
  - Login to the server with root
  - [root@zimbra]# su - zimbra

1. Download and paste the "/archives/export/" directory into the Zimbra backup file.
   - /opt/zimbra/backup.
2. Set permissions for each backup and restore script.
   - chmot +x backup_admins.sh

B. New mail servers (Server B) <-- Import
  - Login to the server with root
  - [root@zimbra]# su - zimbra

1. Download and paste the "/archives/import/" directory into the Zimbra backup file.
   - /opt/zimbra/backup
2. Set permissions for each backup and restore script.
   - chmot +x restor_alias.sh

== REFERENCE ===
https://wiki.zimbra.com/wiki/How_to_merge_two_independent_ZCS_servers_into_one
https://www.habibza.in/zimbra-open-source-server-migration-and-account-transfer/

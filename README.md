# import-export-Zimbra
Manual Backup in Zimbra Mail Server
A. Backup all data from Old server

- Login In server 

1. Create a backup directory
[root@zimbra ~]$ cd /opt/zimbra/backup
[root@zimbra ~]$ mkdir archives
[root@zimbra ~]$ mkdir archives/export
[root@zimbra ~]$ mkdir archives/import
[root@zimbra ~]$ cd /opt/zimbra/backup/archives/export

2. Find all domains
cd /backups/zmigrate


B. Restore in new server

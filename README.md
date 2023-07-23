# import-export-Zimbra
Manual Backup in Zimbra Mail Server
A. Backup all data from Old server
- Login to the server with root
- [root@zimbra]# su - zimbra

1. Create a backup directory
- [root@zimbra ~]$ cd /opt/zimbra/backup
- [root@zimbra ~]$ mkdir archives
- [root@zimbra ~]$ mkdir archives/export
- [root@zimbra ~]$ mkdir archives/import

2. Find all domains
- [root@zimbra ~]$ cd /opt/zimbra/backup/archives/export
- [root@zimbra export]$ mkdir admins alias distlist domains emails filters signaturs userdata userpass

B. Restore in new server

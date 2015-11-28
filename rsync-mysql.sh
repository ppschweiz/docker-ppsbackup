#!/bin/bash

# cleanup older than 45 days
find /backup/mysql-1-p/mysql -type f -ctime +45 -delete

mkdir -p /backup/mysql-1-p/
rsync -av mysql-1-p.piratenpartei.ch:/var/backup/* /backup/mysql-1-p/

# create monthbackup
if [ $(date %d) -eq 01 ]; then
  mkdir -p /backup/mysql-1-p/monatssicherung/
  find /backup/mysql-1-p/mysql -type f -ctime -1 -exec cp {} /backup/mysql-1-p/monatssicherung/

  # cleanup monthly backups after 365 days
  find /backup/mysql-1-p/monatssicherung -type -f -ctime +365 -delete
fi

#!/bin/bash
while (true); do
  backup-postgresql.sh
  rsync-mysql.sh
  rsync-file.sh
  rsync-coreos-2-p.sh
  backup-ldap.sh
  echo "backup finished - going to sleep"
  sleep 1d
done

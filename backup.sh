#!/bin/bash
while (true); do
  rsync-mysql.sh
  rsync-file.sh
  rsync-coreos-2-p.sh
  backup-ldap.sh
  sleep 1d
done

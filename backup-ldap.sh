#!/bin/bash

mkdir -p /backup/ldap-2-p/

ssh root@ldap-2-p.piratenpartei.ch slapcat | gzip > /backup/ldap-2-p/$(date +%Y-%m-%d).ldif.gz

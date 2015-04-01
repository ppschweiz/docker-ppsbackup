#!/bin/bash

mkdir -p /backup/coreos-2-p/postgresql/
tssh core@coreos-2-p.piratenpartei.ch docker run -i --link members-pgsql:db -e PGPASSWORD=$PGPASSWORD postgres pg_dump -h db -U postgres -d memberservice | gzip > /backup/coreos-2-p/postgresql/memberservice-$(date +%Y-%m-%d).gz

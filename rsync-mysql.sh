#!/bin/bash

mkdir -p /backup/mysql-1-p/
rsync -av mysql-1-p.piratenpartei.ch:/var/backup/* /backup/mysql-1-p/

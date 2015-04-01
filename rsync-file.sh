#!/bin/bash

mkdir -p /backup/file-1-p/srv
rsync -av --delete file-1-p.piratenpartei.ch:/srv/* /backup/file-1-p/srv

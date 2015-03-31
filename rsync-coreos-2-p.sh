#!/bin/bash

rsync -av --delete coreos-2-p.piratenpartei.ch:/etc/systemd/* /backup/coreos-2-p/etc/systemd

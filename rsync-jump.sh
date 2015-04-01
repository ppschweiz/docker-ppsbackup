#!/bin/bash

mkdir -p /backup/jump/home/hug/fleet/
rsync -av --delete jump.piratenpartei.ch:/home/hug/fleet/* /backup/jump/home/hug/fleet/

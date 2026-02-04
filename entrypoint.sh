#!/usr/bin/sh
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/faketime/libfaketime.so.1 FAKETIME=$(date -d "$(date -r /opt/tsserver/tsserver) + 1 day" +"%Y-%m-%d %H:%M:%S") /opt/tsserver/tsserver
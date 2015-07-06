#!/bin/sh

# Write environment variables to /etc/chronos/conf/*
for k in `set | grep ^CHRONOS_ | cut -d= -f1`; do
    eval v=\$$k
    echo "$v" > /etc/chronos/conf/`echo $k | cut -d_ -f2- | tr '[:upper:]' '[:lower:]'`
done

exec "$@"

#!/bin/sh

args=""
for k in `set | grep ^CHRONOS_ | cut -d= -f1`; do
    eval v=\$$k
    args="$args --`echo $k | cut -d_ -f2- | tr '[:upper:]' '[:lower:]'` $v"
done

if [ -z "$@" ]; then
    exec /usr/bin/chronos run_jar $args
fi

exec "$@"

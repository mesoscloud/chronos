#!/bin/sh

CMD="chronos run_jar"

# Parse environment variables
for k in `set | grep ^CHRONOS_ | cut -d= -f1`; do
    eval v=\$$k
    CMD="$CMD --`echo $k | cut -d_ -f2- | tr '[:upper:]' '[:lower:]'` $v"
done

# authentication
PRINCIPAL=${PRINCIPAL:-root}

if [ -n "$SECRET" ]; then
    touch /tmp/secret
    chmod 600 /tmp/secret
    echo -n "$SECRET" > /tmp/secret
    CMD="$CMD --mesos_authentication_principal $PRINCIPAL --mesos_authentication_secret_file /tmp/secret"
fi

echo $CMD

if [ $# -gt 0 ]; then
    exec "$@"
fi

exec $CMD

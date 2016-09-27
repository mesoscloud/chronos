#!/bin/sh

CMD="chronos run_jar"

# Parse environment variables
for env in $(set | grep ^CHRONOS_ | grep -v ^CHRONOS_VERSION | cut -d= -f1); do
    opt=$(echo "$env" | cut -d_ -f2- | tr '[:upper:]' '[:lower:]')
    arg=""; eval arg=\$"$env"
    CMD="$CMD --$opt $arg"
done

# authentication
PRINCIPAL=${PRINCIPAL:-root}

if [ -n "$SECRET" ]; then
    touch /tmp/secret
    chmod 600 /tmp/secret
    printf "%s" "$SECRET" > /tmp/secret
    CMD="$CMD --mesos_authentication_principal $PRINCIPAL --mesos_authentication_secret_file /tmp/secret"
fi

echo "$CMD"

if [ $# -gt 0 ]; then
    exec "$@"
fi

eval "exec $CMD"

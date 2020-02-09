#!/usr/bin/env bash

set -e

if [ ! -e "$PGDATA/PG_VERSION" ]; then
    docker-entrypoint.sh

    /app/bin/initdb.sh
    /app/bin/00-configure-host.sh
fi

exec gosu postgres postgres

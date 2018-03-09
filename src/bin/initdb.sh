#/bin/bash
set -e

/app/bin/00-configure-host.sh

/docker-entrypoint.sh postgres &

# waiting postgres to start
check_pgsql_is_running () {
    WORKS=`psql -U postgres postgres -Aqtc "select 1" 2> /dev/null`
    return 0
}
while check_pgsql_is_running; do
    if [ -z "$WORKS" ]
    then
        echo 'wating...'
        sleep 1
    else
        sleep 3
        break
    fi
done

cd /app/bin
./01-configure-postgres.sh
./05-create-extensions.sh
./10-create-db.sh
./20-import-db.sh

echo "---------------- INITING FINISED -----------------"

gosu postgres pg_ctl -D "$PGDATA" -m fast -w stop

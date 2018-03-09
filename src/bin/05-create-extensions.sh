#!/bin/bash
set -e

echo 'Creating extensions'

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER $POSTGRES_DB <<-EOSQL
    CREATE EXTENSION hstore;
    CREATE EXTENSION pgcrypto;
EOSQL

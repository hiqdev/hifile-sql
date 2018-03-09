#!/bin/bash
set -e

# XXX used db and user creation from base image
#   echo 'Creating PgSQL user and database'
#
#   psql -v ON_ERROR_STOP=1 --username postgres postgres <<-EOSQL
#       CREATE USER sol WITH SUPERUSER;
#
#       CREATE USER app WITH PASSWORD 'app';
#       CREATE DATABASE app WITH OWNER=app;
#       CREATE ROLE pgsql superuser;
#   EOSQL
#
#   exit 0;

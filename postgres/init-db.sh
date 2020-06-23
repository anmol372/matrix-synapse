#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
        CREATE USER matrix1 WITH PASSWORD 'matrix1';
        CREATE DATABASE matrix1
         ENCODING 'UTF8'
         LC_COLLATE='C'
         LC_CTYPE='C'
         template=template0
         OWNER matrix1;
        GRANT ALL PRIVILEGES ON DATABASE matrix1 TO matrix1;
EOSQL
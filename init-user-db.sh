#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER jabref;
	CREATE DATABASE jabref;
	GRANT ALL PRIVILEGES ON DATABASE jabref TO jabref;
EOSQL
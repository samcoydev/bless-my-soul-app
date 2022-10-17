#!/bin/bash
set -e
export PGPASSWORD=$DB_PASS;
psql -v ON_ERROR_STOP=1 --username "$DB_USER" --dbname "$DB_NAME" <<-EOSQL
  CREATE USER $DB_USER WITH PASSWORD '$DB_PASS';
  CREATE DATABASE $DB_NAME;
  GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
  \connect $DB_NAME $DB_USER
  BEGIN;
    CREATE TABLE IF NOT EXISTS event (
	  id CHAR(26) NOT NULL CHECK (CHAR_LENGTH(id) = 26) PRIMARY KEY,
	  aggregate_id CHAR(26) NOT NULL CHECK (CHAR_LENGTH(aggregate_id) = 26),
	  event_data JSON NOT NULL,
	  version INT,
	  UNIQUE(aggregate_id, version)
	);
	CREATE INDEX idx_event_aggregate_id ON event (aggregate_id);
  COMMIT;
EOSQL

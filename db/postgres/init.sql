CREATE DATABASE tuberecorder;
\c tuberecorder;

-- a single table is used for all downloads
CREATE TABLE downloads (
  entry_id text NOT NULL,
  link_url text NOT NULL,
  local_path text NOT NULL,
  status int NOT NULL,
  PRIMARY KEY (entry_id)
);

-- a single table is used for all configs
CREATE TABLE configs (
  config_key text NOT NULL,
  config_value text NOT NULL,
  PRIMARY KEY (config_key)
);

CREATE
  USER
  db_user
WITH
  NOCREATEDB
ENCRYPTED PASSWORD
  'db_pass';

GRANT
  ALL PRIVILEGES
ON TABLE
  downloads,
  configs
TO
  db_user;

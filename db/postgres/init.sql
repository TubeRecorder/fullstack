CREATE DATABASE tuberecorder;
\c tuberecorder;

-- a single table is used for all downloads
CREATE TABLE downloads (
  link_url text NOT NULL,
  local_path text NOT NULL,
  status int NOT NULL,
  PRIMARY KEY (link_url)
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
  downloads
TO
  db_user;

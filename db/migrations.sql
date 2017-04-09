-- psql -a -f migrations.sql


CREATE DATABASE library;

\c library;

CREATE TABLE api(id SERIAL PRIMARY KEY, link VARCHAR(255), description VARCHAR(255));

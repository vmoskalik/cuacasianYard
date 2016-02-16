DROP TABLE IF EXISTS meals;
DROP TABLE IF EXISTS users;
DROP SEQUENCE IF EXISTS global_seq;

CREATE SEQUENCE global_seq START 100;

CREATE TABLE users
(
  id    INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  name  VARCHAR UNIQUE NOT NULL
);

CREATE TABLE meals
(
  id             INTEGER PRIMARY KEY DEFAULT nextval('global_seq'),
  description    VARCHAR NOT NULL,
  cost           INTEGER NOT NULL,
  user_id        INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);
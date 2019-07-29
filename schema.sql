DROP TABLE events, users;

CREATE TABLE IF NOT EXISTS
app_users(
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(25) NOT NULL,
  password VARCHAR(25) NOT NULL,
);

CREATE TABLE IF NOT EXISTS
events(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES app_users (id),
  artist_name(50) NOT NULL,
  datetime datetime,
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  venue VARCHAR(255),
  url TEXT
);
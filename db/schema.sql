CREATE TABLE IF NOT EXISTS shirts (
  id INTEGER PRIMARY KEY,
  quantity INTEGER,
  image TEXT,
  name TEXT,
  price INTEGER,
  brand TEXT,
  color TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

CREATE TRIGGER timestamp_update BEFORE UPDATE ON shirts BEGIN
  UPDATE shirts SET updated_at = CURRENT_TIMESTAMP WHERE id = new.id;
END;

CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY,
  shirt_id INTEGER,
  name TEXT,
  email TEXT,
  image TEXT,
  shirts_purchased INTEGER,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

CREATE TRIGGER timestamp_user_update BEFORE UPDATE ON users BEGIN
  UPDATE users SET updated_at = CURRENT_TIMESTAMP WHERE id = new.id;
END;

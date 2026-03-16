-- tags: by user, unique (per user) tag name 
CREATE TABLE IF NOT EXISTS tags (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    name VARCHAR(64) NOT NULL,
    color VARCHAR(16) DEFAULT NULL,
    UNIQUE (user_id, name)
);

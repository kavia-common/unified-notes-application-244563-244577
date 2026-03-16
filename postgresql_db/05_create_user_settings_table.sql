-- user_settings: e.g., theme, autosave, etc.
CREATE TABLE IF NOT EXISTS user_settings (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL UNIQUE REFERENCES users(id) ON DELETE CASCADE,
    theme VARCHAR(32) NOT NULL DEFAULT 'light', -- e.g., 'light', 'dark', or 'retro'
    autosave BOOLEAN NOT NULL DEFAULT TRUE
);

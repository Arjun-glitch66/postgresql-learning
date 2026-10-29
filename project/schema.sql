
-- Session and Authentication Token Storage
-- Database: PostgreSQL

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    username VARCHAR(100) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    deleted_at TIMESTAMPTZ
);

CREATE TABLE sessions (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    token_hash TEXT NOT NULL UNIQUE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    last_seen_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    expiry_at TIMESTAMPTZ NOT NULL,
    idle_expiry_at TIMESTAMPTZ NOT NULL,
    revoked_at TIMESTAMPTZ
);

-- Indexes for common queries
CREATE INDEX sessions_user_id_idx
    ON sessions(user_id);

CREATE INDEX sessions_expiry_at_idx
    ON sessions(expiry_at);

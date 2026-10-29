# Session and Authentication Token Storage

## Overview

This project designs a PostgreSQL relational database schema for managing user accounts and authentication sessions.

It stores user account details separately from login sessions, allowing one user to have multiple sessions across different devices. Session token hashes and timestamps support secure session management.

## Database Design

The database contains two tables:

- **`users1`** — Stores user IDs, usernames, password hashes, account creation and update timestamps, and soft-deletion information.
- **`sessions`** — Stores session IDs, token hashes, the associated user ID, activity timestamps, expiry information, and revocation information.

### Entity Relationship Diagram

View the database design on dbdiagram.io:

**Diagram link:** [Replace this with your public dbdiagram.io URL]

The exported ER diagram is available in [`erd.png`](erd.png).

## Schema Features

- Primary keys and foreign-key relationships
- Unique constraints on usernames and session token hashes
- `NOT NULL` constraints for required fields
- UUID-based user identifiers
- Automatically generated session IDs
- Cascading deletion of sessions when a user is physically deleted
- Indexes on session user IDs and absolute expiry timestamps
- Timestamps for creation, activity, expiry, and revocation
- Soft deletion of user accounts

## Project Files

| File | Purpose |
|---|---|
| `schema.sql` | Creates the database tables and indexes |
| `design.dbml` | Source code for the ER diagram |
| `erd.png` | Exported ER diagram |
| `explanation.md` | Documents the design decisions, relationships, trade-offs, indexing, and normalization |
| `README.md` | Project overview and setup instructions |

## How to Run

1. Open pgAdmin 4 and connect to PostgreSQL.
2. Select a database for the project.
3. Open Query Tool.
4. Execute the contents of `schema.sql` against a fresh database.
5. Verify that the `users1` and `sessions` tables and their indexes were created successfully.

The schema is intended to be executed on a fresh database. Running it repeatedly in the same database without resetting the project tables may result in errors because the tables and indexes already exist.

## Design Considerations

User passwords and session tokens should not be stored in their original form. This schema stores their hashes instead.

The database defines the information required for session validation, but the application must enforce expiry, idle-timeout, revocation, and soft-deletion rules. The `updated_at` column also requires a trigger or application logic to change automatically on subsequent updates.

## Technologies

- PostgreSQL
- SQL
- dbdiagram.io
- Git and GitHub

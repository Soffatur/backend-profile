CREATE TABLE IF NOT EXISTS expertises(
    id SERIAL PRIMARY KEY,
    title VARCHAR(256) NOT NULL,
    icon_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
)
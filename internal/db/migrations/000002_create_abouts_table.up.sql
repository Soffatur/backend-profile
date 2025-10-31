CREATE TABLE IF NOT EXISTS abouts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NULL,
    title VARCHAR(256) NULL,
    description TEXT NULL,
    telp VARCHAR(50) NULL,
    email VARCHAR(100) NULL,
    address TEXT NULL,
    photo TEXT NULL,
    link_resume TEXT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
)
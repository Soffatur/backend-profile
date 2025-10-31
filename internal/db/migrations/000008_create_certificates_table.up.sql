CREATE TABLE IF NOT EXISTS certificates(
    id SERIAL PRIMARY KEY,
    company VARCHAR(256) NOT NULL,
    training_name VARCHAR(256) NOT NULL,
    icon_name VARCHAR(100) NOT NULL,
    date VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
)
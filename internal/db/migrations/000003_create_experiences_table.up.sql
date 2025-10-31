CREATE TABLE IF NOT EXISTS experiences(
    id SERIAL PRIMARY KEY,
    company VARCHAR(100) NULL,
    position VARCHAR(100) NULL,
    start_date VARCHAR(50) NULL,
    end_date VARCHAR(50) NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
)
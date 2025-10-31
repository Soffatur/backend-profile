CREATE TABLE IF NOT EXISTS educations(
    id SERIAL PRIMARY KEY,
    level VARCHAR(100) NOT NULL,
    education_name VARCHAR(256) NOT NULL,
    major VARCHAR(256) NOT NULL,
    description TEXT NOT NULL,
    start_date VARCHAR(50) NOT NULL,
    end_date VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL
)
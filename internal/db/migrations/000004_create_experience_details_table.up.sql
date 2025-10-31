CREATE TABLE IF NOT EXISTS experience_details(
    id SERIAL PRIMARY KEY,
    experience_id INT NOT NULL,
    description TEXT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (experience_id) REFERENCES experiences(id)
)
CREATE TABLE IF NOT EXISTS expertise_details(
    id SERIAL PRIMARY KEY,
    expertise_id INT NOT NULL,
    description TEXT NOT NULL,
    created_at TIMESTAMP NULL,
    updated_at TIMESTAMP NULL,
    FOREIGN KEY (expertise_id) REFERENCES expertises(id)
)
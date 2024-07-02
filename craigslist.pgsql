CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    region TEXT NOT NULL,
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    preferred_region INTEGER REFERENCES regions(id),
    username VARCHAR(20) NOT NULL
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    region_id INTEGER REFERENCES regions(id),
    category_id INTEGER REFERENCES categories(id),
    title VARCHAR(30) NOT NULL,
    text TEXT NOT NULL,
    location TEXT NOT NULL
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    cat_name VARCHAR(20)
)
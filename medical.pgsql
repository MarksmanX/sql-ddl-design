CREATE TABLE medical_centers (
    id SERIAL PRIMARY KEY,
    hospital VARCHAR(20) NOT NULL,
    address TEXT NOT NULL,
);

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    hospital_id INTEGER REFERENCES medical_centers(id),
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    doctors_id INTEGER REFERENCES doctors(id),
    patients_id INTEGER REFERENCES patients(id),
    date DATE
);

CREATE TABLE diagnoses (
    id SERIAL PRIMARY KEY,
    visit_id INTEGER REFERENCES visits(id),
    diseases TEXT 
)
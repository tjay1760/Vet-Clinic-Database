CREATE TABLE animals (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name varchar(255),
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
    );
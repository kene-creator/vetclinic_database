CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    date_of_birth date NOT Null,
    escape_attempts integer,
    neutered boolean NOT NULL,
    weight_kg decimal NOT NULL,
    PRIMARY KEY (id)
);
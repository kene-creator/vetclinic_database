CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(100),
    date_of_birth date NOT Null,
    escape_attempts integer,
    neutered boolean NOT NULL,
    weight_kg decimal NOT NULL,
    species_id INT,
    owners_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (species_id) REFERENCES species(id),
    FOREIGN KEY (owners_id) REFERENCES owners(id)
);


CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY ,
    full_name varchar(100) NOT NULL,
    age int NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE animals ALTER COLUMN species_id INT;

ALTER TABLE animals ADD 
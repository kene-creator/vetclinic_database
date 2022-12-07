INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Agumon','2020-02-03',10.23,'true',0);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Gabumon','2018-11-15',8,'true',2);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Pikachu','2021-01-7',15.04,'false',1);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Devimon','2017-05-12',11,'true',5);


INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts,species) VALUES('Charmander','2020-02-08',11,'false',0,'');
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts,species) VALUES('Plantmon','2018-11-15',-5.7,'true',2,'');
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts,species) VALUES('Squirtle','1993-04-02',-12.13,'false',3,'');
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts,species) VALUES('Angemon','2005-06-12',-45,'true',1,'');
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts,species) VALUES('Boarmon','2005-06-7',20.4,'true',7,'');
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts,species) VALUES('Blossom','1998-10-13',17,'true',3,'');
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts,species) VALUES('Ditto','2022-05-14',22,'true',4,'');


INSERT INTO owners(full_name, age) VALUES('Sam Smith', 34);
INSERT INTO owners(full_name, age) VALUES('Jennifer Orwell', 19);
INSERT INTO owners(full_name, age) VALUES('Bob', 45);
INSERT INTO owners(full_name, age) VALUES('Melody Pond', 77);
INSERT INTO owners(full_name, age) VALUES('Dean Winchester', 14);
INSERT INTO owners(full_name, age) VALUES('Jordi Whittaker', 38);

INSERT INTO species(name) VALUES('pokemon');
INSERT INTO species(name) VALUES('digimon');

INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Charmander','2020-02-08',11,'false',0);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Plantmon','2018-11-15',-5.7,'true',2)
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Squirtle','1993-04-02',-12.13,'false',3);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Angemon','2005-06-12',-45,'true',1);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Boarmon','2005-06-7',20.4,'true',7);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Blossom','1998-10-13',17,'true',3);
INSERT INTO animals(name,date_of_birth,weight_kg,neutered,escape_attempts) VALUES('Ditto','2022-05-14',22,'true',4);

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';

UPDATE animals SET species_id = 1 WHERE species_id IS NULL


/* ====== Modifying inserted animals to include owner information (owner_id): */
-- 1) Sam Smith owns Agumon
UPDATE animals SET owners_id = 1 WHERE name = 'Agumon';

--2) Jennifer Orwell owns Gabumon and Pikachu
UPDATE animals SET owners_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';

--3) Bob owns Devimon and Plantmon
UPDATE animals SET owners_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';

--4) Melody Pond owns Charmander, Squirtle, and Blossom
UPDATE animals SET owners_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

--5) Dean Winchester owns Angemon and Boarmon
UPDATE animals SET owners_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';
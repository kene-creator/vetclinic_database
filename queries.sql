SELECT * from animals WHERE name like '%mon';
SELECT * from animals WHERE date_of_birth >= '2016-01-01' AND date_of_birth <= '2019-12-31';
SELECT * from animals WHERE escape_attempts < 3 AND neutered = 'true';
SELECT * from animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered = 'true';
SELECT * fROM animals WHERE Name != 'Gabumon';
SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

UPDATE animals SET species='unspecified';
UPDATE animals SET species_id= 'digimon' WHERE name like '%mon';
UPDATE animals SET species_id= 'pokemom' WHERE species_id = '';

DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT DATE; 
UPDATE animals SET weight_kg= weight_kg * -1;
ROLLBACK TO DATE;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg<0;
COMMIT;

--NUmber of animals
SELECT MAX(id) from animals;

--NUmber of animals that have never tried to escape
SELECT COUNT(*) As number_of_animals FROM animals WHERE escape_attempts<=0; 

--Average weight of animals
SELECT AVG(weight_kg) FROM animals;

--Who escapes the most, neutered or not neutered animals?
SELECT name, escape_attempts, neutered FROM animals WHERE escape_attempts=(SELECT MAX(escape_attempts) FROM animals);

--MIN and MAX od the digimon species
SELECT species, MIN(weight_kg),MAX(weight_kg) FROM animals GROUP BY species HAVING species='digimon';

--MIN and MAX of the pokemon species
SELECT species, MIN(weight_kg),MAX(weight_kg) FROM animals GROUP BY species HAVING species='pokemon';


--Average age of animals borm within specified dates
SELECT AVG(escape_attempts)  FROM animals WHERE date_of_birth>='1990-01-01' AND date_of_birth<='2000-01-01';

-- What animals belong to Melody Pond?
SELECT name,full_name FROM animals JOIN owners ON owners_id= owners.id AND owners.full_name='Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).
SELECT animals.name AS Pokemon FROM animals JOIN species ON species_id=species.id AND species.name='pokemon';

-- List all owners and their animals, remember to include those that don't own any animal.
SELECT name, full_name FROM animals FULL OUTER JOIN owners ON owners_id=owners.id;

-- How many animals are there per species?
SELECT COUNT(*) AS animal_count_per_species FROM animals a JOIN species s ON s.id = a.species_id GROUP BY a.species_id;

-- List all Digimon owned by Jennifer Orwell.
SELECT * FROM species s JOIN animals a ON a.species_id = s.id JOIN owners o ON o.id = a.owners_id WHERE o.full_name = 'Jennifer Orwell' AND s.name = 'Digimon';

-- List all animals owned by Dean Winchester that haven't tried to escape
SELECT * FROM animals a JOIN owners o ON o.id = a.owners_id WHERE escape_attempts = 0 AND o.full_name = 'Dean Winchester';

-- Who owns the most animals?
SELECT o.full_name as owner_full_name, COUNT(a.name) AS Number_of_animals FROM owners o LEFT JOIN animals a ON o.id = a.owners_id GROUP BY owner_full_name ORDER BY Number_of_animals DESC;

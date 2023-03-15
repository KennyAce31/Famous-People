CREATE TABLE actors (id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    birthdate TEXT,
    married_id INTEGER);

INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Jennifer", "lopez", "1969-07-24", 2);
INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Ben", "Affleck", "1972-08-15", 1);
INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Angelina", "Jolie", "1975-06-04", 4);
INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Brad", "Pitt", "1963-12-18", 3);
INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Blake", "Lively", "1987-08-25", 6);
INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Ryan", "Reynolds", "1976-10-23", 5);
INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Catherine", "Zeta-Jones", "1971-09-18", 8);
INSERT INTO actors (first_name, last_name, birthdate,married_id)
    VALUES ("Michael", "Douglas", "1944-09-25", 7);

    
CREATE TABLE movies_casted (id INTEGER PRIMARY KEY,
    actor_id INTEGER,
    title TEXT);
    
INSERT INTO movies_casted (actor_id, title)
    VALUES (1, "U turn");
INSERT INTO movies_casted (actor_id, title)
    VALUES (2, "Gone girl");
INSERT INTO movies_casted (actor_id, title)
    VALUES (3, "Alexander");
INSERT INTO movies_casted (actor_id, title)
    VALUES (4, "Fight club");
INSERT INTO movies_casted (actor_id, title)
    VALUES (5, "Savages");
INSERT INTO movies_casted (actor_id, title)
    VALUES (6, "Green Lantern");
INSERT INTO movies_casted (actor_id, title)
    VALUES (7, "The Legend of Zorro");
INSERT INTO movies_casted (actor_id, title)
    VALUES (8, "Wall Street");
    
CREATE TABLE director_pairs (id INTEGER PRIMARY KEY,
    director1_id INTEGER,
    director2_id INTEGER);
INSERT INTO director_pairs (director1_id, director2_id)
    VALUES(1, 3);
INSERT INTO director_pairs (director1_id, director2_id)
    VALUES(2, 4);
INSERT INTO director_pairs (director1_id, director2_id)
    VALUES(6, 7);
INSERT INTO director_pairs (director1_id, director2_id)
    VALUES(5, 8);
       
/* self join */
SELECT actors.first_name, actors.last_name, married.first_name as partners_first_name, married.last_name as partners_Last_name 
    FROM actors
    JOIN actors married
    ON actors.married_id = married.id;

/* combining multiple joins */    
SELECT a.title, b.title FROM director_pairs
    JOIN movies_casted a
    ON director_pairs.director1_id = a.id
    JOIN movies_casted b
    ON director_pairs.director2_id = b.id;
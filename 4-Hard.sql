-- Hard: Make a copy of your Medium Challenge. Write out the queries that would add the director’s First Name and Last Name 
-- into two separate columns. Create a query that puts the names together. Create a query to put the list in alphabetical order by
-- the last name from A-Z After you order the list, remove the Movies where the Last Name ends with ”R-Z” Write a query where
-- the first three appear.


SHOW DATABASES;
CREATE DATABASE gi_medium_movies;

USE gi_medium_movies;

SELECT*FROM movies;

CREATE TABLE movies_(
id int(10) NOT NULL AUTO_INCREMENT,
movie_title VARCHAR(50),
release_date DATE,
movie_rating VARCHAR(15),
PRIMARY KEY(id)
);
-- Adding the first and last name columns
SELECT*FROM movies;
ALTER TABLE movies
ADD COLUMN director_firstName VARCHAR(30);
ALTER TABLE movies
ADD COLUMN director_lastName VARCHAR(30);
-- Adding names into table
-- (changed id number everytime I added new name)
UPDATE movies
SET director_lastName = 'Whedon'
WHERE id = 10;
-- Query that puts the names together
SELECT concat(director_firstName,' ',director_lastName) directors_fullName
FROM movies;
-- Query that lists them in alphabetical order by last name
SELECT director_lastName,director_firstName
FROM movies
ORDER BY director_lastName;
-- remove the Movies where the Last Name ends with ”R-Z” 
DELETE FROM movies WHERE id= 4;
DELETE FROM movies WHERE id= 5;
DELETE FROM movies WHERE id= 6;
DELETE FROM movies WHERE id= 10;
-- Write a query where the first three appear
SELECT*FROM movies
WHERE id IN(1,2,3);
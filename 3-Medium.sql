-- Medium: Create a table with your top 10 movies. Include title, release date, and rating. Create a query that pulls all movies, 
-- in order of release date, where the title includes the letter “s”.

SHOW DATABASES;
CREATE DATABASE gi_medium_movies;

USE gi_medium_movies;

SELECT*FROM movies;

CREATE TABLE movies(
id int(10) NOT NULL AUTO_INCREMENT,
movie_title VARCHAR(50),
release_date DATE,
movie_rating VARCHAR(15),
PRIMARY KEY(id)
);
SELECT*FROM movies;

INSERT INTO movies(movie_title,release_date,movie_rating)
VALUES('Shrek',20010518,'7.9/10'),('Shrek 2',20040519,'7.3/10'),('Shrek 3',20070518,'7/10'),('Spiderman:No Way Home',20211217,'8.4/10'),('Spiderman: Into the spiderverse',20181214,'8.4/10'),('A Silent Voice',20160916,'8.1/10'),('Spirited Away',20010620,'8.6/10'),('Grave of the Fireflies',19880316,'8.5/10')
,('Black Panther',20180216,'7.3/10'),('The Avengers',20120504,'8/10');

SELECT * FROM movies
WHERE movie_title LIKE 'S%'
ORDER BY release_date ASC;


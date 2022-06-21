-- Easy: Create a table with your top five favorite books with Title, Publish Date, and
-- Author First/Last Name Create a query to add in two new books Remove the oldest book 
-- Provide an additional query giving the sum of all books
USE favorite_books;
SHOW DATABASES;
CREATE DATABASE favorite_books;

SELECT*FROM books;

CREATE TABLE books(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(30),
published_date DATE,
author_firstName VARCHAR(20),
author_lastName VARCHAR(20)
);

INSERT INTO books(title,published_date,author_firstName,author_lastName)VALUES('Javascript Coding For Teens',20220111,'Andrew','Yueh'),('JS Beginner to Professional',20221201,'Laurence','Lars'),('Another random book',20220111,'Jose','Portillo'),('Random Book #2',20200115,'Jose','Portillo'),('Random Book #3',20200215,'Jose','Portillo');

SELECT*FROM books;

INSERT INTO books(title,published_date,author_firstName,author_lastName)
VALUES('Cant think of any books',19970111,'Jose','P'),('Something',20220911,'J','Portillo');

SELECT*FROM books
ORDER BY published_date ASC; -- oldest book is 'Cant think of any books' id=11

DELETE FROM books WHERE id = 11; -- deleting the oldest date book

SELECT COUNT(title)
FROM books; -- Returns 6 because their are 6 titles of books


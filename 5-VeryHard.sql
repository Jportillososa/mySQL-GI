-- Very Hard: Copy the table from your Very Easy Challenge Write a query to add in three cars at once Write a query to
--  add in prices and colors for each of these cars Write a query to put the Make and Model together in one column Create
--  a new query that adds an additional column to the results to show how many cars have the same Make.

USE gi_Challenge_Cars;
SELECT*FROM cars;

-- Write a query to add in three cars at once
INSERT INTO cars(car_make,car_model,car_year)
VALUES('Honda','Civic',2022),('Toyota','Corolla',2014),('Lexus','is 350',2022);
-- Write a query to add in prices and colors for each of these cars 
ALTER TABLE cars
ADD COLUMN prices INT;
ALTER TABLE cars
ADD COLUMN color VARCHAR(20);

UPDATE cars
SET prices = 36000
WHERE id = 8;

-- Write a query to put the Make and Model together in one column
ALTER TABLE cars
ADD COLUMN MAKE_MODEL VARCHAR(50);
SELECT concat(car_make,' ',car_model) MAKE_MODEL
FROM cars;
-- I DID IT!! (Down below is the correct query)
UPDATE cars
SET MAKE_MODEL = concat(car_make,' ',car_model)
WHERE id IN(1,2,3,4,5,6,7,8);

UPDATE cars SET same_make = CONCAT(make, ' ', model);

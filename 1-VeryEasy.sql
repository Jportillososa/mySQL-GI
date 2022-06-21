SHOW DATABASES;

CREATE DATABASE gi_Challenge_Cars;

USE gi_Challenge_Cars;

CREATE TABLE cars(
id INT AUTO_INCREMENT PRIMARY KEY,
car_make VARCHAR(20),
car_model VARCHAR(20),
car_year YEAR
);

SHOW TABLES;
SELECT*FROM cars;

INSERT INTO cars(car_make,car_model,car_year)
VALUES('Ford','Focus RS',2022),('Mercedes','AMG A 45 HatchBack',2022),('BMW','M135i',2022);

SELECT*FROM cars;
INSERT INTO cars(car_make,car_model,car_year)
VALUES('Ford','Ranger',2005),('Jeep','Wrangler',1990)



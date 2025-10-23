
USE CARS;

select count(*) from car_sales_data ;
use cars;
--total numbber of records
select count(*) from car_sales_data ;
select * from car_sales_data;
select avg(price) from car_sales_data;
-- Average price of cars per year
SELECT year_of_manufacture, ROUND(AVG(price), 2) AS avg_price
FROM car_sales_data
GROUP BY year_of_manufacture
ORDER BY year_of_manufacture;
-- Count of cars per model
SELECT model, COUNT(*) AS total_sales
FROM car_sales_data
GROUP BY model
ORDER BY total_sales DESC;
-- Count of cars by fuel type
SELECT fuel_type, COUNT(*) AS total
FROM car_sales_data
GROUP BY fuel_type
ORDER BY total DESC;
--Total cars per manufacturer
SELECT manufacturer, COUNT(*) AS total
FROM car_sales_data
GROUP BY manufacturer
ORDER BY total DESC;
--Cars with mileage less than 50,000
SELECT *
FROM car_sales_data
WHERE mileage < 50000
ORDER BY mileage ASC;
--Average engine size per fuel type
SELECT fuel_type, ROUND(AVG(engine_size), 2) AS avg_engine_size
FROM car_sales_data
GROUP BY fuel_type;
--Cars by year, sorted by price descending
SELECT *
FROM car_sales_data
ORDER BY year_of_manufacture DESC, price DESC;
--Cars per fuel type per year
SELECT year_of_manufacture, fuel_type, COUNT(*) AS total
FROM car_sales_data
GROUP BY year_of_manufacture, fuel_type
ORDER BY year_of_manufacture;
--Average price and mileage per manufacturer
SELECT manufacturer, ROUND(AVG(price), 2) AS avg_price, ROUND(AVG(mileage), 2) AS avg_mileage
FROM car_sales_data
GROUP BY manufacturer;

CREATE TABLE car(
name TEXT,
year INT,
selling_price BIGINT,
km_driven BIGINT,
fuel VARCHAR(20),
seller_type VARCHAR(50),
transmission VARCHAR(20),
owner VARCHAR(20),
car_age INT,
price_category VARCHAR(20)
);
select * from car;

COPY car
FROM 'C:\MAIN\Used_Car_Analysis_project 1.csv'
DELIMITER ','
CSV HEADER

SELECT * FROM car;

--TOTAL CARS
SELECT COUNT(*) AS Total_Cars
FROM car;

--AVERAGE SELLING PRICE
SELECT ROUND(AVG(selling_price),2)AS
Avg_selling_price
FROM car;

--AVERAGE KM DRIVEN
SELECT ROUND(AVG(km_driven),2) AS 
Avg_km_driven
FROM car;

--CARS BY FUEL TYPE
SELECT fuel,
      COUNT(*) AS Total_cars
	 FROM car
	 GROUP BY fuel
	 ORDER BY Total_cars DESC;

--AVERAGE SELLING PRICE BY FUEL TYPE
SELECT fuel,
   ROUND(AVG(selling_price),2) AS 
   Avg_price
   FROM car
   GROUP BY fuel
   ORDER BY Avg_price DESC;

--CARS BY TRANSMISSION
SELECT transmission,
    COUNT(*) AS Total_cars
	FROM car
	GROUP BY transmission;

--AVERAGE PRICE BY OWNER TYPE
SELECT owner,
     ROUND(AVG(selling_price),2) AS
     Avg_price
	 FROM car
	 GROUP BY owner
	 ORDER BY Avg_price DESC;

--PRICE TREND BY MANUFACTURING YEAR
SELECT year,
      ROUND(AVG(selling_price),2) AS
	  Avg_price
	  FROM car
	  GROUP BY YEAR
	  ORDER BY YEAR;

--TOP 10 MOST EXPENSIVE CAR
SELECT name,
    selling_price
	FROM car
	ORDER BY selling_price DESC
	LIMIT 10;

--Top 10 Most Common car brands
SELECT name,
     COUNT(*) AS total_cars
	 FROM car
	 GROUP BY name
	 ORDER BY total_cars DESC
	 LIMIT 10;

--Year wise number of car listed
SELECT year,
      COUNT(*) AS total_cars
	  FROM car
	  GROUP BY year
	  ORDER BY year;

--Fuel type vs average selling price
SELECT fuel,
       ROUND(AVG(selling_price),2) AS avg_price
	   FROM car
	   GROUP BY fuel
	   ORDER BY avg_price;

	 

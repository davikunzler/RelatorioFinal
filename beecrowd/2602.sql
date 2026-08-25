-- beecrowd SQL | 2602
-- Basic Select
-- Paulo R. Rodegheri BR Brazil

-- Timelimit: 1
-- Your company is doing a survey of how many customers are registered in the states, however, lacked to raise the data of the state of the 'Rio Grande do Sul'.

-- Then, you must show the names of all customers whose state is 'RS'.

SELECT name FROM customers WHERE state = 'RS'



-- beecrowd SQL | 2603
-- Customer Address
-- Paulo R. Rodegheri BR Brazil

-- Timelimit: 1
-- The company will make an event celebrating the 20th anniversary of the market, and for that we will make a great celebration in the city of Porto Alegre. We also invite all our customers who are enrolled in this city.

-- Your job is in having the names and addresses of customers who live in 'Porto Alegre', to deliver the invitations personally.


SELECT name, street FROM customers WHERE city = 'Porto Alegre'


-- beecrowd SQL | 2604
-- Under 10 or Greater Than 100
-- Paulo R. Rodegheri BR Brazil

-- Timelimit: 1
-- The financial sector of the company needs a report that shows the ID and the name of the products whose price is less than 10 or greater than 100.


SELECT id, name FROM products WHERE price < 10 OR 100 < price


-- beecrowd SQL | 2605
-- Executive Representatives
-- Paulo R. Rodegheri BR Brazil

-- Timelimit: 1
-- The financial sector needs a report on the providers of the products we sell. The reports include all categories, but for some reason, providers of products whose category is the executive, are not in the report.

-- Your job is to return the names of the products and providers whose category ID is 6.

SELECT products.name, providers.name
FROM products
JOIN providers ON products.id_providers = providers.id
WHERE products.id_categories = 6;


-- beecrowd SQL | 2606
-- Categories
-- Paulo R. Rodegheri BR Brazil

-- Timelimit: 1
-- When the data were migrated to the database, there was a small misunderstanding on the DBA.

-- Your boss needs you to select the ID and the name of the products, whose categorie name start with 'super'.



SELECT
products.id, products.name
FROM products
JOIN categories 
ON products.id_categories = categories.id
WHERE categories.name LIKE 'super%'

-- beecrowd SQL | 2607
-- Providers' City in Alphabetical Order
-- Paulo R. Rodegheri BR Brazil

-- Timelimit: 1
-- Every month the company asks for a report from the cities that providers are registered. So, do a query that returns all the cities of the providers, but in alphabetical order.

-- OBS: You must not show repeated cities.


SELECT city
FROM providers
ORDER BY city ASC 


-- beecrowd SQL | 2608
-- Higher and Lower Price
-- Paulo R. Rodegheri BR Brasil

-- Timelimit: 1
-- The financial sector of our company, wants to know the smaller and higher values of the products, which we sell.

-- For this you must display only the highest and lowest price of the products table.



SELECT MAX(price), MIN(price)
FROM products


-- beecrowd SQL | 2609
-- Products by Categories
-- Paulo R. Rodegheri BR Brasil

-- Timelimit: 1
-- As usual the sales industry is doing an analysis of how many products we have in stock, and you can help them.

-- Then your job will display the name and amount of products of each category.



SELECT categories.name, SUM(products.amount)
FROM products
JOIN categories
ON products.id_categories = categories.id
GROUP BY categories.name

-- beecrowd SQL | 2610
-- Average Value of Products
-- Paulo R. Rodegheri BR Brasil

-- Timelimit: 1
-- In the company that you work is being done a survey on the values of the products that are marketed.

-- To help the industry that is doing this survey you should calculate and display the average value of the price of the products.

-- OBS: Show the value with two numbers after the period.

SELECT ROUND(AVG(price), 2)
FROM products


-- beecrowd SQL | 2611
-- Action Movies
-- Paulo R. Rodegheri BR Brasil

-- Timelimit: 1
-- A video store contractor hired her services to catalog her movies. 
-- They need you to select the code and the name of the movies whose description
-- of the genre is 'Action'.



SELECT movies.id, movies.name
FROM movies
JOIN genres
ON movies.id_genres = genres.id
WHERE genres.description = 'Action'


-- beecrowd SQL | 2613
-- Cheap Movies
-- Paulo R. Rodegheri BR Brasil

-- Timelimit: 1
-- In the past the studio has made an event where several movies were on sale, we want to know what movies these were.

-- Your job to help us is to select the ID and name of movies whose price is less than 2.00.


SELECT movies.id, movies.name
FROM movies
JOIN prices
ON movies.id_prices = prices.id
WHERE prices.value < 2.00

-- beecrowd SQL | 2614
-- September Rentals
-- Paulo R. Rodegheri BR Brasil

-- Timelimit: 1
-- The video store is making its semi-annual report and needs your help. All you have to do is select the name of the clients and the date of rental, from the rentals made in September 2016.


SELECT customers.name, rentals.rentals_date
FROM customers
JOIN rentals ON customers.id = rentals.id_customers
WHERE EXTRACT(MONTH FROM rentals.rentals_date) = 9
  AND EXTRACT(YEAR FROM rentals.rentals_date) = 2016;

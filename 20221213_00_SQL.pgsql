------------------------------------------------------------------------
-- Query is not evaluated from left to right
-- specific sequence >> from, where, group by, having, select, order by
------------------------------------------------------------------------
------------------------------------------------------------------------
--------- KEYWORDS, SUBQUERY -------------------------------------------
-- *** De keuze tss subquery en JOINs is subjectief en hangt af van 
-- *** de operator 
------------------------------------------------------------------------


------------------------------------------------------------------------
---*******************************  05 ******************************---
------------------------------------------------------------------------
-- 1.  Geef de naam van klanten die in Spanje wonen.
--     Geef naam en adres van klanten die in Madrid wonen.
--     Geef het aantal klanten per stad in Spanje.
-- 2.  Wat is de voornaam en naam van de klant met de het langste email adres?
--     Wat is de voornaam en naam van de klant met de het kortste email adres?
-- 3.  Geef al de categorieën die niet op een "y" eindigen.
--     Geef het aantal films per categorie. Soorteer op aantal films van groot naar klein.
--     Geef de gemiddelde prijs per categorie.
--     Geef de naam van de film die het meeste opbracht.
--     Geef de top 10 van films die het minste opbrachten.
-- 4.  Welke store heeft het meeste ACTIE films.
--     Geef het adres van de store met het meeste DRAMA films.
--     In welk land ligt de store met de minste HORROR films?
-- 5.  Geef de naam van de film en de bijhorende categorie.
--     Soorteer op categorie.
--     Geef de naam van de klant en naam van de gehuurde filmen voor alle verhuurbeurten met een bedrag groter dan 5.
-- 6.  Geef de naam van de klant die het meeste heeft gehuurd.
--     Geef de naam van landen en hun totale omzet.
--     Geef de naam van de steden, bijhorende land en de total opbrengst voor deze stad.

------------------------------------------------------------------------
-- 1.  Geef de naam van klanten die in Spanje wonen.
--     Geef naam en adres van klanten die in Manchester wonen.
--     Geef het aantal klanten per stad in Spanje.

-- SELECT customer.last_name, customer.first_name, country.country FROM customer
-- JOIN address ON customer.address_id = address.address_id
-- JOIN city ON address.city_id = city.city_id
-- JOIN country ON city.country_id = country.country_id
-- WHERE country.country='Spain';

-- SELECT * FROM city;
-- SELECT customer.last_name, customer.first_name, city.city FROM customer
-- JOIN address ON customer.address_id = address.address_id
-- JOIN city ON address.city_id = city.city_id
-- WHERE city.city='Manchester';

-- SELECT customer.last_name, customer.first_name, city.city FROM customer
-- JOIN address ON customer.address_id = address.address_id
-- JOIN city ON address.city_id = city.city_id
-- JOIN country ON city.country_id = country.country_id
-- WHERE country.country='Spain';


-- SELECT city.city, COUNT(customer) FROM customer
-- JOIN address ON customer.address_id=address.address_id
-- JOIN city ON address.city_id=city.city_id
-- JOIN country ON city.country_id=country.country_id
-- WHERE country.country='Spain'
-- GROUP BY city.city;

------------------------------------------------------------------------
-- 2.  Wat is de voornaam en naam van de klant met de het langste email adres?
--     Wat is de voornaam en naam van de klant met de het kortste email adres?


-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT * FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_TYPE = 'BASE TABLE';
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer';
-- SELECT * FROM customer;

-- SELECT customer.first_name, customer.last_name, customer.email, length(customer.email) FROM customer
-- -- WHERE length(customer.email) = (SELECT max(length(customer.email)) FROM customer)
-- WHERE length(customer.email) = (SELECT min(length(customer.email)) FROM customer)
-- GROUP BY customer.first_name, customer.last_name, customer.email;

-- SELECT customer.first_name, customer.last_name, email, length(email) FROM customer
-- WHERE length(email) >= ALL (SELECT length(email) FROM customer);

------------------------------------------------------------------------
-- 3.  Geef al de categorieën die niet op een "y" eindigen.
--     Geef het aantal films per categorie. Soorteer op aantal films van groot naar klein.
--     Geef de gemiddelde prijs per categorie.
--     Geef de naam van de film die het meeste opbracht.
--     Geef de top 10 van films die het minste opbrachten.

-- SELECT * FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_TYPE = 'BASE TABLE';
-- SELECT * FROM film_category;
-- SELECT * FROM category;
-- SELECT * FROM film;
-- SELECT * FROM payment;

-- SELECT category.name FROM category
-- WHERE category.name NOT LIKE '%y';

-- SELECT film_category.category_id, category.name, count(film_category.category_id) NumberOfFilms FROM film_category
-- JOIN category ON film_category.category_id = category.category_id
-- GROUP by film_category.category_id, category.name
-- ORDER BY NumberOfFilms DESC;

-- SELECT film_category.category_id, category.name, round(avg(film.rental_rate), 2) average FROM film_category
-- JOIN category ON film_category.category_id = category.category_id
-- JOIN film ON film_category.film_id = film.film_id
-- GROUP by film_category.category_id, category.name;

-- SELECT film_category.film_id, film.title, film.rental_rate FROM film_category, film
-- WHERE  film_category.film_id = film.film_id; 







------------------------------------------------------------------------
---*******************************  07 ******************************---
------------------------------------------------------------------------
-- 1.  Selecteer alle films, id en inventory_id.
-- 2.  Geef de films die niet in de inventory voorkomen.
-- 3.  Geef de films met een verhuurprijs groter dan de gemiddelde verhuurprijs. (Gebruik een subquery)
-- 4.  Geef de id en titel van de films die zijn teruggebracht tss '2005_05_29' en '2005_05_30'. (Gebruik een subquery)


------------------------------------------------------------------------
-- 1.  Selecteer alle films, id en inventory_id.

-- SELECT * FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_TYPE = 'BASE TABLE';
-- SELECT * FROM inventory;
-- SELECT * FROM film;

-- SELECT film.title, film.film_id, inventory.inventory_id FROM film
-- LEFT JOIN inventory ON film.film_id = inventory.film_id
-- ORDER BY film.film_id;

------------------------------------------------------------------------
-- 2.  Geef de films die niet in de inventory voorkomen.
-- SELECT film.title, film.film_id, inventory.inventory_id FROM film
-- LEFT JOIN inventory ON film.film_id = inventory.film_id
-- WHERE inventory.inventory_id IS NULL
-- ORDER BY film.film_id;

------------------------------------------------------------------------
-- 3.  Geef de films met een verhuurprijs groter dan de gemiddelde verhuurprijs. (Gebruik een subquery)
-- SELECT film.title film.rental_rate FROM film
-- WHERE film.rental_rate > (SELECT avg(rental_rate) FROM film);

------------------------------------------------------------------------
-- 4.  Geef de id en titel van de films die zijn teruggebracht tss '2005_05_29' en '2005_05_30'. (Gebruik een subquery)

-- SELECT rental.inventory_id FROM rental
-- WHERE rental.return_date BETWEEN '2005_05_29' AND '2005_05_30';



------------------------------------------------------------------------
------------------------------------------------------------------------
--------- FUNCTION -----------------------------------------------------

-- CREATE FUNCTION get_film_count(len_from int, len_to int)
-- RETURNS int
-- LANGUAGE plpgsql
-- AS
--     $$
--     DECLARE film_count INTEGER;
--     BEGIN
--         SELECT count(*) INTO .....


-- CREATE FUNCTION get_film_table(rate int)
-- RETURNS TABLE
-- LANGUAGE plpgsql
-- AS
-- $$
-- DECLARE films_tbl table;
-- BEGIN
--     SELECT * FROM film INTO films_tbl FROM film;
--     RETURN films_tbl;
-- END
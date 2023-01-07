------------------------------------------------------------------------
-- Query is not evaluated from left to right
-- specific sequence >> from, where, group by, having, select, order by
------------------------------------------------------------------------
------------------------------------------------------------------------
--------- KEYWORDS, SUBQUERY -------------------------------------------
-- *** De keuze tss subquery en JOINs is subjectief en hangt af van 
-- *** de operator 
------------------------------------------------------------------------
-- SELECT * FROM newlang_tbl;
-- SELECT * FROM authors_tbl;
-- SELECT * FROM proglang_tbl;

------------------------------------------------------------------------
-- ************************* keyword > 'IN'
-- SELECT * FROM authors_tbl;
-- SELECT author FROM authors_tbl
-- WHERE language_id IN (
--     SELECT id FROM newlang_tbl
--     WHERE language='Tcl'
--     OR language='Prolog');

------------------------------------------------------------------------
-- ************************* Subquery
-- SELECT * FROM newlang_tbl;
-- SELECT author, language
-- FROM    authors_tbl a, 
--         (SELECT id, language
--         FROM newlang_tbl
--         WHERE year > 1980) new
-- WHERE a.language_id = new.id;    

------------------------------------------------------------------------
-- ************************* keyword > 'EXIST'
-- SELECT * FROM authors_tbl;
-- SELECT * FROM newlang_tbl;
-- SELECT language, year
-- FROM newlang_tbl
-- -- WHERE NOT EXISTS
-- WHERE EXISTS (
--     SELECT * FROM authors_tbl
--     WHERE newlang_tbl.id = language_id);

------------------------------------------------------------------------
-- ************************* Subquery
-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES (9, 'Wirth', 
--                 (SELECT id FROM newlang_tbl
--                 ??????));

------------------------------------------------------------------------
-- ************************* keyword > 'ANY'
-- SELECT * FROM newlang_tbl;
-- SELECT language FROM newlang_tbl
-- -- WHERE year > ANY (SELECT year FROM newlang_tbl);
-- -- WHERE year < ANY (SELECT year FROM newlang_tbl);
-- WHERE year = ANY (SELECT year FROM newlang_tbl);

------------------------------------------------------------------------
-- ************************* keyword > 'ALL'
-- SELECT * FROM newlang_tbl;
-- SELECT language FROM newlang_tbl
-- WHERE year <= ALL (
--     SELECT year FROM newlang_tbl);


------------------------------------------------------------------------
---*******************************  04 ******************************---
------------------------------------------------------------------------
-- 1.  Geef een lijst van de steden waar onze klanten uitkomen.
-- 2.  Geef een lijst van films met een verhuurwaarde groter dan 5
--     Geef de namen van de films met een duur tussen 80 en 90 minuten.
-- 3.  Geef alle landen die een "e" op positie 2 hebben.
--     Geef alle landen met minder dan 5 letters.
-- 4.  Geef me dan id van de fims, van groot naar klein, waar die een verhuurwaarde hebben kleiner als 3 of groter als 6.
-- 5.  Welke adressen hebben geen postcode?
--     Welke klanten  ......
-- 6.  Geef de namen van de films in de store met id = 1.
--     Geef het aantal films van deze store per categorie.
-- 7.  Geef de naam en voornaam van de klanten die in totaal voor meer dan 10€ hebben gehuurd.
-- 8.  Geef hoeveel heeft elke verkoper in totaal verhuurd. aantal films + totaal bedrag.

------------------------------------------------------------------------
-- 1.  Geef een lijst van de steden waar onze klanten uitkomen.

-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT * FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_TYPE = 'BASE TABLE';
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'address';
-- SELECT * FROM customer;
-- SELECT * FROM city;
-- SELECT * FROM address;

-- SELECT DISTINCT(city.city) FROM customer
-- JOIN address ON customer.address_id = address.address_id
-- JOIN city ON address.city_id = city.city_id;

------------------------------------------------------------------------
-- 2.  Geef een lijst van films met een verhuurwaarde groter dan 5
--     Geef de namen van de films met een duur tussen 80 en 90 minuten.

-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT * FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_TYPE = 'BASE TABLE';
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'film';
-- SELECT * FROM film;

-- SELECT film.title, film.rental_rate FROM film
-- WHERE film.rental_rate > 5;
-- SELECT film.title, film.length FROM film
-- WHERE film.length > 80 AND film.length < 90;
-- WHERE film.length BETWEEN 81 AND 89;

------------------------------------------------------------------------
-- 3.  Geef alle landen die een "e" op positie 2 hebben.
--     Geef alle landen met minder dan 5 letters.

-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT * FROM INFORMATION_SCHEMA.TABLES
-- WHERE TABLE_TYPE = 'BASE TABLE';
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'country';

-- SELECT country.country FROM country
-- WHERE SUBSTRING(country, 2, 1) = 'e';
-- SELECT country.country FROM country
-- WHERE length(country) < 5;

------------------------------------------------------------------------
-- 4.  Geef me dan id van de fims, van groot naar klein, waar die een verhuurwaarde hebben kleiner als 3 of groter als 6.

-- SELECT film.film_id FROM film
-- WHERE film.rental_rate < 3 OR film.rental_rate > 6
-- ORDER BY film.film_id DESC;

------------------------------------------------------------------------
-- 5.  Welke adressen hebben geen postcode?
--     Welke klanten  hebben geen postcode?

-- SELECT address.address FROM address
-- WHERE address.postal_code ='';
-- SELECT * FROM address
-- WHERE postal_code IS NULL OR LENGTH(postal_code) = 0;

-- SELECT customer.first_name, customer.last_name FROM customer JOIN address
-- ON customer.address_id = address.address_id
-- WHERE address.postal_code ='';

------------------------------------------------------------------------
-- 6.  Geef de namen van de films in de store met id = 1.
--     Geef het aantal films van deze store per categorie.

-- SELECT DISTINCT inventory.store_id, film.title FROM film
-- JOIN inventory ON film.film_id = inventory.film_id
-- WHERE inventory.store_id = 1;

-- SELECT category.name, COUNT (*) as films_per_category FROM inventory
-- JOIN film ON film.film_id = inventory.film_id
-- JOIN film_category ON film_category.film_id = film.film_id
-- JOIN category ON film_category.category_id = category.category_id
-- GROUP BY inventory.store_id, category.name
-- HAVING inventory.store_id = 1
-- ORDER BY category.name;

------------------------------------------------------------------------
-- 7.  Geef de naam en voornaam van de klanten die in totaal voor meer dan 10€ hebben gehuurd.

-- SELECT * FROM customer;
-- SELECT * FROM payment;

-- SELECT customer.last_name, customer.first_name, SUM(payment.amount) FROM customer
-- JOIN payment ON customer.customer_id = payment.customer_id
-- GROUP BY customer.customer_id
-- HAVING sum(payment.amount) > 10
-- ORDER BY customer.last_name, customer.first_name;

------------------------------------------------------------------------
-- 8.  Hoeveel heeft elke verkoper in totaal verhuurd. aantal films + totaal bedrag.

-- SELECT * FROM payment;
-- SELECT * FROM rental;
-- SELECT * FROM inventory;

-- SELECT staff.last_name, staff.first_name, count(rental.rental_id), sum(payment.amount) FROM staff
-- JOIN rental ON staff.staff_id = rental.staff_id
-- LEFT JOIN payment ON rental.rental_id = payment.rental_id
-- GROUP BY staff.last_name, staff.first_name









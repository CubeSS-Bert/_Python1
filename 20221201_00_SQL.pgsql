------------------------------------------------------------------------
---*******************************  01 ******************************---
------------------------------------------------------------------------
-- 1.
-- a) maak een lijst met de namen van alle landen
-- b) hoeveel landen zijn er in totaal ?
-- c) voeg het land 'Belgium' toe met de eerstvolgende nummer voor primary key
-- d) wat is de waarde voor last_update van België? Wat is het datatype van last_update?
------------------------------------------------------------------------
-- a) maak een lijst met de namen van alle landen
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'country';
-- SELECT country FROM country;

------------------------------------------------------------------------
-- b) hoeveel landen zijn er in totaal ?
-- SELECT country FROM country;
-- SELECT count(country) FROM country;
-- SELECT count(*) FROM country;

------------------------------------------------------------------------
-- c) voeg het land 'Belgium' toe met de eerstvolgende nummer voor primary key
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'country';
-- SELECT * FROM country;

-- INSERT INTO country
--     (country)
--     VALUES
--     ('Belgium');

-- SELECT * FROM country;

------------------------------------------------------------------------
-- d) wat is de waarde voor last_update van België? Wat is het datatype van last_update?
-- SELECT * FROM country;
-- SELECT last_update FROM country
-- WHERE country = 'Belgium';

------------------------------------------------------------------------
------------------------------------------------------------------------
-- 2. 
-- a) Maak een tabel "accounts" aan met volgende kolommen:
-- "user_id" als primary key, een unieke "username", een "password" en een uniek "email". Er moet altijd worden ingevoegd. (gebruik serial bij het id om deze automatisch te laten verhogen)
-- b) voeg de username "joske_vermeulen" toe. Je mag de rest zelf verzinnen. (de user_id laat je automatisch toevoegen)
-- c) voeg jezelf toe. (geef je paswoord niet vrij ;-) (de user_id laat je automatisch toevoegen)
-- d) check of de user_id automatisch is toegevoegd.
-- e) Check of je een derde account kan toevoegen met als user_id = 5
-- d) Voeg nu opnieuw een account toe waarbij je de user_id opnieuw automatisch laat toevoegen. 
-- f) wat is de user_id van deze laatst toegevoegde account?
------------------------------------------------------------------------
-- a) Maak een tabel "accounts" aan met volgende kolommen:
-- "user_id" als primary key, een unieke "username", een "password" en een uniek "email".
-- Er moet altijd worden ingevoegd.
-- (gebruik serial bij het id om deze automatisch te laten verhogen)

-- CREATE TABLE accounts (
--         user_id         SERIAL         NOT NULL    PRIMARY KEY,
--         username        VARCHAR(25)     NOT NULL    UNIQUE,
--         password        VARCHAR(25)     NOT NULL,
--         email           VARCHAR(35)     NOT NULL    UNIQUE);

-- SELECT * FROM accounts;

------------------------------------------------------------------------
-- b) voeg de username "joske_vermeulen" toe. Je mag de rest zelf verzinnen.
-- (de user_id laat je automatisch toevoegen)

-- INSERT INTO accounts
--     (username, password, email)
--     VALUES
--     ('joske_vermeulen', '123456', 'joske_vermeulen@gmail.com');
-- SELECT * FROM accounts;

------------------------------------------------------------------------
-- c) voeg jezelf toe. (geef je paswoord niet vrij ;-)
-- (de user_id laat je automatisch toevoegen)
-- d) check of de user_id automatisch is toegevoegd.

-- INSERT INTO accounts
--     (username, password, email)
--     VALUES
--     ('bert_paelinckx', '*', 'bert_paelinckx@gmail.com');
-- SELECT * FROM accounts;

------------------------------------------------------------------------
-- e) Check of je een derde account kan toevoegen met als user_id = 5
-- d) Voeg nu opnieuw een account toe waarbij je de user_id opnieuw automatisch laat toevoegen. 
-- f) wat is de user_id van deze laatst toegevoegde account?

-- INSERT INTO accounts
--     (user_id, username, password, email)
--     VALUES
--     (5, 'kathy_nuytinck', '123456', 'kathy_nuytinck@gmail.com');
-- SELECT * FROM accounts;

-- INSERT INTO accounts
--     (username, password, email)
--     VALUES
--     ('wim_oostvogels', '123456', 'wim_oostvogels@gmail.com');
-- SELECT * FROM accounts;

------------------------------------------------------------------------
------------------------------------------------------------------------
-- 3.
-- a) Wat zijn de voornamen van de klanten
-- b) Maak een lijst met de volledige namen van de klanten.
-- c) maak een lijst met de volledige namen van de acteurs.
-- d) maak een lijst met de volledige namen en email van de klanten.
-- e) hoeveel kolommen heeft de tabel customer?

------------------------------------------------------------------------
-- a) Wat zijn de voornamen van de klanten
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer';
-- -- WHERE   TABLE_NAME = 'customer_list';
-- -- SELECT * FROM customer_list;
-- SELECT * FROM customer;

-- SELECT DISTINCT (first_name)
-- FROM customer
-- ORDER BY first_name;

------------------------------------------------------------------------
-- b) Maak een lijst met de volledige namen van de klanten.
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer_list';
-- SELECT * FROM customer_list;

-- SELECT DISTINCT (name)
-- FROM customer_list
-- ORDER BY name;

------------------------------------------------------------------------
-- c) maak een lijst met de volledige namen van de acteurs.
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- -- WHERE   TABLE_NAME = 'actor';
-- WHERE   TABLE_NAME = 'actor_info';
-- SELECT * FROM actor;
-- SELECT first_name, last_name FROM actor;

------------------------------------------------------------------------
-- d) maak een lijst met de volledige namen en email van de klanten.
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer_list';
-- -- SELECT * FROM customer;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer';

-- SELECT customer_list.name, customer.email FROM customer_list, customer
-- WHERE customer_list.id = customer.customer_id;

------------------------------------------------------------------------
-- e) hoeveel kolommen heeft de tabel customer?
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer';
-- -- SELECT * FROM customer;
-- SELECT  count(COLUMN_NAME) 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer';

------------------------------------------------------------------------
---*******************************  02 ******************************---
------------------------------------------------------------------------
-- 1.  Geef naam en voornbaam van alle klanten zet alfabetisch op naam 
-- 2.  Geef naam en voornaam van alle klanten waarvan de naam begint met een L
--     en zet alfabetisch op voornaam
-- 3.  Hoeveel landen zijn er in de db ?
-- 4.  Hoeveel filmen zijn er die met een "A" beginnen?
--     Hoeveel hiervan hebben een rental_rate hoger dan 3?
--     En hoveel hiervan duren minder lang dan 60 minuten?
-- 5.  Welke categorieën heb je die met een "G" beginnen? 
-- 6.  Verhoog de verhuurprijs met 10%.
-- 7.  Voeg een column toe in de tabel bij film waarin je het jaar van aankoop (2020) zet.

------------------------------------------------------------------------
-- 1.  Geef naam en voornaam van alle klanten zet alfabetisch op naam 
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'customer';
-- SELECT * FROM customer;

-- SELECT last_name, first_name FROM customer
-- ORDER by last_name;

------------------------------------------------------------------------
-- 2.  Geef naam en voornaam van alle klanten waarvan de naam begint met een L
--     en zet alfabetisch op voornaam
-- SELECT * FROM customer;

-- SELECT last_name, first_name FROM customer
-- WHERE last_name LIKE 'L%'
-- ORDER by first_name;

------------------------------------------------------------------------
-- 3.  Hoeveel landen zijn er in de db ?
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'country';
-- SELECT count(country) FROM country;

------------------------------------------------------------------------
-- 4.  Hoeveel filmen zijn er die met een "A" beginnen?
--     Hoeveel hiervan hebben een rental_rate hoger dan 3?
--     En hoveel hiervan duren minder lang dan 60 minuten?
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'film_list';
-- WHERE   TABLE_NAME = 'nicer_but_slower_film_list';
-- WHERE   TABLE_NAME = 'film_category';
-- SELECT * FROM film_list;
-- SELECT * FROM film;
-- SELECT * FROM nicer_but_slower_film_list;

-- SELECT title, rental_rate, length FROM film
-- SELECT count(title) FROM film
-- WHERE title LIKE 'A%'; 
-- WHERE rental_rate > 3 AND title LIKE 'A%'; 
-- WHERE rental_rate > 3 AND title LIKE 'A%' AND length < 60; 

------------------------------------------------------------------------
-- 5.  Welke categorieën heb je die met een "G" beginnen? 
-- SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'film_list';
-- -- SELECT * FROM film_category;
-- SELECT * FROM film_list;
-- SELECT category FROM film_list;
-- SELECT DISTINCT category FROM film_list
-- WHERE category LIKE 'G%';

------------------------------------------------------------------------
-- 6.  Verhoog de verhuurprijs met 10%.
-- UPDATE ? SET ?? = ??*1.1
SELECT TABLES FROM INFORMATION_SCHEMA.TABLES;
-- SELECT  COLUMN_NAME 
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   TABLE_NAME = 'inventory';
-- SELECT price FROM film_list;
-- -- UPDATE film_list SET price = price * 1.1;
-- SELECT price FROM film_list
-- WHERE price = price * 1.1;

------------------------------------------------------------------------
-- 7.  Voeg een column toe in de tabel bij film waarin je het jaar van aankoop (2020) zet.
-- ALTER TABLE ?? ADD




------------------------------------------------------------------------
---*******************************  03 ******************************---
------------------------------------------------------------------------
-- 1.  Voeg een kolom "iso_code" toe aan de landen.
--     Zet in deze kolom de eerste 2 letters van de landen.
-- 2.  Geef een lijst van alle steden met hun landen erbij.
--     Geef een lijst van alle steden in SPANJE
--     Voeg Belgie en Mechelen toe (link Belgie aan Mechelen).
--     (stel dat je het id van Belgie niet weet)
-- 3.  Geef een lijst met naam, voornaam en stad voor alle klanten waarvan de achternaam begint met een B.
-- 4.  Naar welke store gaat "Elizabeth Brown"?
--     Waar (stad, land) is deze store gelegen?

------------------------------------------------------------------------
-- 1.  Voeg een kolom "iso_code" toe aan de landen.
--     Zet in deze kolom de eerste 2 letters van de landen.

-- ..,??????????????????????????????
-- ALTER TABLE country
-- ADD iso_code VARCHAR(10);
-- UPDATE country SET
-- iso_code = left(country,2);
-- ..,??????????????????????????????

------------------------------------------------------------------------
-- 2.  Geef een lijst van alle steden met hun landen erbij.
--     Geef een lijst van alle steden in SPANJE
--     Voeg Belgie en Mechelen toe (link Belgie aan Mechelen).
--     (stel dat je het id van Belgie niet weet)

-- ..,??????????????????????????????
-- select city.city, country.country
-- from city, country
-- where city.country_id = country.country_id;
-- ..,??????????????????????????????
-- select city.city, country.country
-- from city, country
-- where city.country_id = country.country_id
-- AND country = 'Spain';
-- ..,??????????????????????????????
-- INSERT INTO city
-- VALUES
--  (601, 'Mechelen',
-- (SELECT country_id from country where country='Belgium'));
-- ..,??????????????????????????????

------------------------------------------------------------------------
-- 3.  Geef een lijst met naam, voornaam en stad voor alle klanten
-- waarvan de achternaam begint met een B.

-- ..,??????????????????????????????
-- SELECT customer.last_name, customer.first_name, city.city FROM customer JOIN address
-- ON customer.address_id = address.address_id
-- JOIN city
-- ON address.city_id = city.city_id
-- WHERE last_name LIKE 'B%';
-- ..,??????????????????????????????


------------------------------------------------------------------------
-- 4.  Naar welke store gaat "Elizabeth Brown"?
--     Waar (stad, land) is deze store gelegen?

-- ..,??????????????????????????????
-- SELECT customer.store_id, city.city, country.country FROM customer JOIN store
-- ON customer.store_id = store.store_id
-- JOIN address
-- ON store.address_id = address.address_id
-- JOIN city
-- ON address.city_id = city.city_id
-- JOIN country
-- ON city.country_id = country.country_id
-- WHERE customer.first_name = 'Elizabeth' AND customer.last_name = 'Brown';
-- ..,??????????????????????????????














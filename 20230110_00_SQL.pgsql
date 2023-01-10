------------------------------------------------------------------------
---***************************  PostgreSQL **************************---
------------------------------------------------------------------------
-- 1. 
SELECT last_name, first_name
FROM actor
WHERE last_name LIKE 'C%' AND last_name LIKE '_%a%';

-- 2. 
SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'C%' AND last_name LIKE '_%a%';

-- 3. 
SELECT DISTINCT fa.film_id, f.title, f.release_year
FROM actor a
INNER JOIN film_actor fa
ON a.actor_id = fa.actor_id
INNER JOIN film f
ON fa.film_id = f.film_id
WHERE a.last_name LIKE 'C%' AND a.last_name LIKE '_%a%'
ORDER BY fa.film_id;

-- 4. 
SELECT a.actor_id, a.last_name, a.first_name, COUNT(fa.film_id) AS numberoffilms
FROM actor a
INNER JOIN film_actor fa
ON a.actor_id = fa.actor_id
WHERE a.last_name LIKE 'C%' AND a.last_name LIKE '_%a%'
GROUP BY a.actor_id, a.last_name, a.first_name;

-- 5.
SELECT a.last_name, a.first_name, COUNT(fa.film_id) AS numberoffilms, fc.category_id
FROM actor a
INNER JOIN film_actor fa
ON a.actor_id = fa.actor_id
RIGHT OUTER JOIN film_category fc
ON fa.film_id = fc.film_id
GROUP BY a.last_name, a.first_name, fc.category_id
HAVING COUNT(fa.film_id) > 5 AND a.last_name LIKE 'C%' AND a.last_name LIKE '_%a%'
ORDER BY COUNT(fa.film_id) DESC;

-- 6.
WITH short_list AS (SELECT a.last_name, a.first_name, a.actor_id, COUNT(fa.film_id) AS numberoffilms, fc.category_id
                    FROM actor a
                    INNER JOIN film_actor fa
                    ON a.actor_id = fa.actor_id
                    RIGHT OUTER JOIN film_category fc
                    ON fa.film_id = fc.film_id
                    GROUP BY a.last_name, a.first_name, a.actor_id, fc.category_id
                    HAVING COUNT(fa.film_id) > 5 AND a.last_name LIKE 'C%' AND a.last_name LIKE '_%a%'
                    ORDER BY COUNT(fa.film_id) DESC)


-- SELECT sl.last_name, sl.first_name, sl.actor_id, COUNT(fa.film_id) AS numberofilms
-- FROM short_list sl
-- INNER JOIN film_actor fa
-- ON sl.actor_id = fa.actor_id
-- GROUP BY sl.last_name, sl.first_name, sl.actor_id;

SELECT COUNT(fa.film_id) / 10 AS percentage
FROM short_list sl
INNER JOIN film_actor fa
ON sl.actor_id = fa.actor_id;

-- 7.
SELECT DISTINCT f.film_id
FROM film f
INNER JOIN film_actor fa
ON f.film_id = fa.film_id
WHERE fa.actor_id = 3 OR fa.actor_id = 86;




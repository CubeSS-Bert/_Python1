------------------------------------------------------------------------
-- Query is not evaluated from left to right
-- specific sequence >> from, where, group by, having, select, order by
------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------
-- DROP TABLE proglang_tbl;

-- CREATE TABLE proglang_tbl (
--         id              INTEGER         NOT NULL        PRIMARY KEY,
--         language        VARCHAR(20)     NOT NULL        UNIQUE,
--         author          VARCHAR(25)     NOT NULL,
--         year            INTEGER         NOT NULL,
--         standard        VARCHAR(10)     NULL);

-- INSERT INTO proglang_tbl
--         (id, language, author, year, standard)
--         VALUES
--         (1, 'Prolog', 'Colmerauer', 1972, 'ISO'),
--         (2, 'Perl', 'Wall', 1987, null),
--         (3, 'ANSI', 'Iverson', '1964', 'APL'),
--         (4, 'JOVIAL', 'Schwartz', 1959, 'US-DOD'),
--         (5, 'APT', 'Ross', 1959, 'ISO'),
--         (6, 'Forth', 'Moore', 1973, 'ANSI'),
--         (7, 'Tcl', 'Ousterhout', 1988, NULL),
--         (8, 'PL/I', 'IBM', 1964, 'ECMA'),
--         (9, 'Fortran', 'Backus', 1957, 'ANSI');

------------------------------------------------------------------------
------------------------------------------------------------------------
-- SELECT * FROM proglang_tbl;
-- SELECT AVG(year) FROM proglang_tbl;
-- SELECT * FROM proglang_tbl
-- WHERE year > (SELECT AVG(year) FROM proglang_tbl);

------------------------------------------------------------------------
-- SELECT * FROM proglang_tbl;
-- SELECT count(year) FROM proglang_tbl;
-- SELECT count(DISTINCT year) FROM proglang_tbl;

------------------------------------------------------------------------
-- Aggregate-function maakt 1 waarde van een tabel (zoals aangemaakt door 'select' of 'order by')
-- SELECT * FROM proglang_tbl;
-- SELECT standard, count(*), min(year) FROM proglang_tbl
-- GROUP BY standard;

------------------------------------------------------------------------
-- !! 'JOIN'-operator > data halen uit meerdere tabellen, en combineren in 1 tabel
-- !! Moet een gemeenschappelijke kolom zijn
-- SELECT * FROM proglang_tbl;
-- SELECT * FROM authors_tbl;
-- SELECT * FROM newlang_tbl;

-- SELECT author, language
-- FROM authors_tbl, newlang_tbl
-- -- 'JOIN'-condition > WHERE =
-- -- WHERE language_id = id;
-- -- Volgorde is niet belangrijk, zolang ze maar bestaan
-- -- WHERE id = language_id;
-- -- Beste manier
-- WHERE newlang_tbl.id = authors_tbl.language_id;

------------------------------------------------------------------------
-- SELECT * FROM authors_tbl;
-- SELECT * FROM newlang_tbl;

-- -- SELECT * FROM authors_tbl JOIN newlang_tbl
-- SELECT author, language FROM authors_tbl JOIN newlang_tbl
-- ON authors_tbl.language_id = newlang_tbl.id;
-- -- Zowel 'jOIN' als 'ON' kunnen parameters omgedraaid worden

------------------------------------------------------------------------
-- !! 'JOIN' > Inner-join, 
-- SELECT * FROM authors_tbl;
-- SELECT * FROM newlang_tbl;

-- SELECT author, language FROM authors_tbl INNER JOIN newlang_tbl
-- ON authors_tbl.language_id = newlang_tbl.id;

------------------------------------------------------------------------
------------------------------------------------------------------------
-- CREATE TABLE languages_tbl
-- (language_id INTEGER, language VARCHAR(20));

-- INSERT INTO languages_tbl VALUES (4, 'Tcl');
------------------------------------------------------------------------
------------------------------------------------------------------------
-- SELECT * FROM languages_tbl;
-- SELECT * FROM authors_tbl;

-- -- SELECT author, language FROM authors_tbl JOIN languages_tbl
-- -- ON authors_tbl.language_id = languages_tbl.language_id;
-- -- !! Werken met alias'en kan ook !!
-- SELECT author, language FROM authors_tbl a JOIN languages_tbl l
-- ON a.language_id = l.language_id;

------------------------------------------------------------------------
------------------------------------------------------------------------
-- INSERT INTO newlang_tbl
--     (id, language, year)
--     VALUES
--     (6, 'X_XX', 1988);

-- INSERT INTO newlang_tbl
--     (id, language, year)
--     VALUES
--     (7, 'AAAAA', 1988);

-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES (7, 'Jef', null);

-- INSERT INTO newlang_tbl
-- VALUES (8, 'Lisp', 1958, 'ANSI');
------------------------------------------------------------------------
------------------------------------------------------------------------
-- !! 'JOIN' > Inner-join, left/right-outer-join, full-join, cross-join, self-join
-- SELECT * FROM languages_tbl;
-- SELECT * FROM authors_tbl;
-- SELECT * FROM newlang_tbl;

-- !! 'INNER' 
-- SELECT author, language FROM authors_tbl a JOIN languages_tbl l
-- ON a.language_id = l.language_id;

-- !! 'LEFT OUTER' 
-- SELECT author, language FROM authors_tbl a LEFT OUTER JOIN newlang_tbl l
-- ON a.language_id = l.id;

-- !! 'RIGHT OUTER' 
-- SELECT author, language FROM authors_tbl a RIGHT OUTER JOIN newlang_tbl l
-- ON a.language_id = l.id;

-- !! 'FULL'
-- SELECT author, language FROM authors_tbl a FULL JOIN newlang_tbl l
-- ON a.language_id = l.id;

-- !! 'CROSS'
-- SELECT author, language, year FROM authors_tbl, newlang_tbl;
-- SELECT author, language, year FROM authors_tbl CROSS JOIN newlang_tbl;

------------------------------------------------------------------------
------------------------------------------------------------------------
-- CREATE TABLE inflang_tbl (id INTEGER    PRIMARY KEY,
--         language VARCHAR(20) NOT NULL,
--         influenced_by INTEGER);

-- INSERT INTO inflang_tbl (id, language)
--         VALUES (1, 'Fortran');

-- INSERT INTO inflang_tbl (id, language, influenced_by)
--         VALUES (2, 'Pascal', 3);

-- INSERT INTO inflang_tbl (id, language, influenced_by)
--         VALUES (3, 'Algol', 1);
------------------------------------------------------------------------
------------------------------------------------------------------------
-- !! 'SELF'
-- SELECT * FROM inflang_tbl;

-- SELECT  l1.id,
--         l1.language,
--         l2.language AS influenced
-- FROM inflang_tbl l1, inflang_tbl l2
-- WHERE l1.id = l2.influenced_by;

-- SELECT  l1.id,
--         l1.language,
--         l2.language AS influenced
-- FROM inflang_tbl l1, inflang_tbl l2
-- WHERE l2.id = l1.influenced_by;
------------------------------------------------------------------------
-- SELECT * FROM authors_tbl;
-- SELECT * FROM newlang_tbl;

-- -- SELECT  id,
-- --         author_id,
-- --         author,
-- --         language
-- -- FROM authors_tbl, newlang_tbl
-- -- WHERE id < author_id;

-- SELECT  l.id,
--         a.author_id,
--         a.author,
--         l.language
-- FROM authors_tbl a, newlang_tbl l
-- WHERE l.id < a.author_id
-- AND l.id = a.language_id;
------------------------------------------------------------------------


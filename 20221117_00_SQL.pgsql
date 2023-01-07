------------------------------------------------------------------------
-- SELECT * FROM proglang_tblcopy;

-- INSERT INTO
-- proglang_tblcopy (id, language, author, year, standard)
-- VALUES
-- (4, 'JVIAL', 'Schwartz', 1959, 'US-DOD'),
-- (5, 'APT', 'Ross', 1959, 'ISO');

-- UPDATE proglang_tbl SET
-- standard ='ISO'
-- where id = 1;
------------------------------------------------------------------------
-- SELECT * FROM proglang_tblcopy;
-- SELECT * FROM proglang_tblcopy;
------------------------------------------------------------------------
-- CREATE TABLE stdlang_tbl
-- (language varchar(20),
-- standard varchar(10));

-- INSERT INTO stdlang_tbl
-- SELECT language, standard
-- FROM proglang_tblcopy
-- WHERE standard IS NOT NULL;

-- SELECT * FROM proglang_tblcopy;
-- SELECT * FROM stdlang_tbl;
------------------------------------------------------------------------
-- DROP TABLE stdlang_tbl;

-- CREATE TABLE stdlang_tbl
-- (language varchar(20) PRIMARY KEY,
-- standard varchar(10));

-- INSERT INTO stdlang_tbl
-- SELECT language, standard
-- FROM proglang_tblcopy
-- WHERE standard IS NOT NULL;

-- SELECT * FROM proglang_tblcopy;
-- SELECT * FROM stdlang_tbl;
------------------------------------------------------------------------
-- CREATE TABLE stdlang_tbl
-- (language varchar(20) UNIQUE,
-- standard varchar(10));

-- INSERT INTO stdlang_tbl
-- SELECT language, standard
-- FROM proglang_tblcopy
-- WHERE standard IS NOT NULL;

-- SELECT * FROM proglang_tblcopy;
-- SELECT * FROM stdlang_tbl;
------------------------------------------------------------------------
-- CREATE TABLE proglang_tbluk (
--         id              INTEGER         NOT NULL        PRIMARY KEY,
--         language        VARCHAR(20)     NOT NULL        UNIQUE,
--         author          VARCHAR(25)     NOT NULL,
--         year            INTEGER         NOT NULL,
--         standard        VARCHAR(10)     NULL);

-- INSERT INTO proglang_tbluk
--         (id, language, author, year, standard)
--         VALUES
--         (1, 'Prolog', 'Colmerauer', 1972, 'ISO'),
--         (2, 'Perl', 'Wall', 1987, null),
--         (3, 'ANSI', 'Iverson', '1964', 'APL'),
--         (4, 'JOVIAL', 'Schwartz', 1959, 'US-DOD'),
--         (5, 'APT', 'Ross', 1959, 'ISO')
--                 ;

-- SELECT * FROM proglang_tbluk;
------------------------------------------------------------------------
-- CREATE TABLE standardizing_bodies
-- (name varchar(10) UNIQUE);

-- -- INSERT INTO standardizing_bodies
-- -- SELECT standard FROM proglang_tblcopy
-- -- WHERE standard IS NOT NULL;

-- SELECT * FROM proglang_tblcopy;
-- SELECT * FROM proglang_tbluk;
-- SELECT * FROM stdlang_tbl;
-- SELECT * FROM standardizing_bodies;
------------------------------------------------------------------------
-- DROP TABLE stdlang_tbl;

-- CREATE TABLE stdlang_tbl
-- (language varchar(20) PRIMARY KEY,
-- standard varchar(10));

-- INSERT INTO stdlang_tbl
-- SELECT language, standard
-- FROM proglang_tblcopy
-- WHERE standard IS NOT NULL;

-- CREATE TABLE standardizing_bodies
-- (name varchar(10) UNIQUE);

-- INSERT INTO standardizing_bodies
-- SELECT standard FROM proglang_tblcopy
-- WHERE standard IS NOT NULL;

-- INSERT INTO proglang_tblcopy
--         (id, language, author, year, standard)
--         VALUES
--         (6, 'Forth', 'Moore', 1973, NUll),
--         (7, 'Tcl', 'Ousterhout', 1988, NULL);

-- SELECT * FROM proglang_tblcopy;
-- SELECT * FROM stdlang_tbl;
------------------------------------------------------------------------
-- UPDATE proglang_tblcopy SET
-- year = year - 10;

-- INSERT INTO proglang_tbluk
--         (id, language, author, year, standard)
--         VALUES
--         (6, 'Forth', 'Moore', 1973, NUll),
--         (7, 'Tcl', 'Ousterhout', 1988, NULL);

-- CREATE TABLE test_tbl
-- AS
-- SELECT * FROM proglang_tbluk;

-- SELECT * FROM proglang_tbluk;
-- SELECT * FROM test_tbl;
------------------------------------------------------------------------
-- UPDATE proglang_tblcopy SET
--     year = 1973,
--     standard = 'ANSI'
--     where language = 'Forth';

-- DELETE FROM stdlang_tbl;
-- SELECT * FROM stdlang_tbl;
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
-- CREATE TABLE newlang_tbl (
--     id          INTEGER     NOT NULL    PRIMARY KEY,
--     language    VARCHAR(20) NOT NULL,
--     year        INTEGER     NOT NULL,
--     standard    VARCHAR(10) NULL                
-- );

-- CREATE TABLE authors_tbl (
--     author_id   INTEGER     NOT NULL,
--     author      VARCHAR(25) NOT NULL,
--     language_id INTEGER REFERENCES newlang_tbl(id)
-- );

-- INSERT INTO newlang_tbl
--     (id, language, year, standard)
--     VALUES
--     (5, 'BASIC', 1964, 'ANSI');


-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES
--     (5, 'Kemeny', 5);

-- INSERT INTO newlang_tbl
--     (id, language, year, standard)
--     VALUES
--     (1, 'Prolog', 1972, 'ISO');

-- INSERT INTO newlang_tbl
--     (id, language, year)
--     VALUES
--     (2, 'Perl', 1987);

-- INSERT INTO newlang_tbl
--     (id, language, year, standard)
--     VALUES
--     (3, 'APL', 1964, 'ANSI');

-- INSERT INTO newlang_tbl
--     (id, language, year)
--     VALUES
--     (4, 'Tcl', 1988);

-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES (6, 'Kurtz', 5);

-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES (1, 'Colmerauer', 1);

-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES (2, 'Wall', 2);

-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES (3, 'Ousterhout', 4);

-- INSERT INTO authors_tbl
--     (author_id, author, language_id)
--     VALUES (4, 'Iverson', 3);


-- SELECT * FROM newlang_tbl;
-- SELECT * FROM authors_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT count(standard) FROM proglang_tbl;
-- SELECT count(*) FROM proglang_tbl;

-- INSERT INTO proglang_tbl
--     (id, language, author, year, standard)
--     VALUES
--     (8, 'PL/I', 'IBM', 1964, 'ECMA');

-- SELECT * FROM proglang_tbl;
-- SELECT DISTINCT (year)
-- FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT count(year) FROM proglang_tbl;
-- SELECT count(DISTINCT year)
-- FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT DISTINCT (standard)
-- FROM proglang_tbl
-- WHERE standard is NOT NULL
-- ORDER BY standard;

-- SELECT * FROM proglang_tbl;
-- SELECT  id,
--         language,
--         author AS creator
--         FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- ALTER TABLE proglang_tbl
-- RENAME COLUMN auth TO author;
-- SELECT * FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT  column_name,
--         data_type,
--         character_maximum_length
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   table_name = 'proglang_tbl';

-- SELECT * FROM proglang_tbl;
-- SELECT  *
-- FROM    INFORMATION_SCHEMA.COLUMNS
-- WHERE   table_name = 'proglang_tbl';
-- SELECT  *
-- FROM    INFORMATION_SCHEMA.TABLES
-- WHERE   table_name = 'proglang_tbl';

------------------------------------------------------------------------
-- Query is not evaluated from left to right
-- specific sequence >> from, where, group by, having, select, order by
------------------------------------------------------------------------
-- SELECT * FROM proglang_tbl;
-- SELECT  id,
--         language,
--         author AS creator
--         FROM proglang_tbl
--         WHERE creator = 'Ross';     !!! kent hij hier nog niet !!!

-- SELECT * FROM proglang_tbl;
-- SELECT  id,
--         language,
--         author AS creator
--         FROM proglang_tbl
--         ORDER BY creator; !!! hier kent hij creator wel omdat order by laatst komt in sequence !!!

------------------------------------------------------------------------
-- SELECT * FROM proglang_tbl;
-- SELECT * FROM proglang_tbl
--     -- WHERE language LIKE 'P%';
--     -- WHERE language LIKE '%l';
--     WHERE language LIKE '%l%';

-- SELECT * FROM proglang_tbl;
-- SELECT * FROM proglang_tbl
--     -- WHERE year > 1980;
--     WHERE CAST(year AS text) LIKE '%59';

-- SELECT * FROM proglang_tbl;
-- SELECT * FROM proglang_tbl
--     WHERE language LIKE '__l';
    -- WHERE language NOT LIKE '__l';

------------------------------------------------------------------------
-- SELECT * FROM proglang_tbl;
-- SELECT language,
--     (year % 10) remainder
-- FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT language,
--     -- year - (year % 10) decade
--     (year / 10) * 10 decade
-- FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT language,
--     'The ' || (year / 10) * 10 || '''s' decade
        -- concat('The ', (year / 10) * 10, '''s') decade
-- FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT substr(language, 1, 2),
--     year
-- FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT UPPER(language),
--     lower(standard)
-- FROM proglang_tbl;

-- SELECT * FROM proglang_tbl;
-- SELECT  language,
--         year,
--         'AD' AD
-- FROM proglang_tbl;

------------------------------------------------------------------------
-- SELECT * FROM proglang_tbl;
-- SELECT avg(year) FROM proglang_tbl;
-- SELECT cast(avg(year) as INTEGER) FROM proglang_tbl;
-- SELECT sum(year) FROM proglang_tbl;
-- SELECT min(year), max(year) FROM proglang_tbl;
-- SELECT min(language), max(year) FROM proglang_tbl;
------------------------------------------------------------------------
------------------------------------------------------------------------
-- INSERT INTO proglang_tbl
--     (id, language, author, year, standard)
--     VALUES
--     (9, 'Fortran', 'Backus', 1957, 'ANSI');
------------------------------------------------------------------------
------------------------------------------------------------------------
-- SELECT * FROM proglang_tbl;
-- SELECT standard FROM proglang_tbl
-- -- WHERE standard is NOT NULL
-- GROUP BY standard;

-- SELECT * FROM proglang_tbl;
-- SELECT  standard,
--         language
--     FROM proglang_tbl
--     WHERE standard is NOT NULL
-- -- !!! dit lukt niet omdat er meerdere talen zijn bij dezelfde standard !!!
--     -- GROUP BY standard;
-- -- !!! dit lukt wel !!!
--     GROUP BY standard, language;

-- SELECT * FROM proglang_tbl;
-- SELECT  standard,
--         count(*)
-- FROM proglang_tbl
-- GROUP BY standard;

-- SELECT * FROM proglang_tbl;
-- SELECT  year,
--         min(language),
--         count(*)
-- FROM proglang_tbl
-- GROUP BY year;

-- SELECT * FROM proglang_tbl;
-- SELECT  language, standard, year
-- FROM proglang_tbl
-- GROUP BY standard, year, language
-- HAVING year < 1980;

-- -- SELECT * FROM proglang_tbl;
-- SELECT  language, standard, year
-- FROM proglang_tbl
-- -- -- !!! Gebruik aggregate niet mogelijk bij WHERE !!!
-- -- WHERE count(standard) > 1
-- -- -- !!! Gebruik aggregate niet mogelijk bij WHERE !!!
-- WHERE year < 1980
-- GROUP BY standard, year, language;
------------------------------------------------------------------------

























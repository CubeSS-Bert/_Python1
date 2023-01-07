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
-- ************************* UNION - UNION ALL - INTERSECTION - DIFFERENCE
-- *** UNION ALL > toont toch duplicaten, maar is sneller als UNION
-- *** DIFFERENCE > Niet commutatief, volgorde is belangrijk !!!
-- SELECT * FROM proglang_tbl;

-- SELECT standard FROM proglang_tbl
-- WHERE language = 'Fortran'
-- UNION
-- SELECT standard FROM proglang_tbl
-- WHERE language='APT';

-- SELECT standard FROM proglang_tbl
-- WHERE year=1964
-- -- UNION
-- -- UNION ALL
-- INTERSECT
-- SELECT standard FROM proglang_tbl
-- WHERE year=1957;


------------------------------------------------------------------------
-- ************************* IN - NOT IN - EXCEPT
-- SELECT * FROM proglang_tbl;

-- SELECT language, year FROM proglang_tbl
-- WHERE standard IN ('ISO') AND standard NOT IN ('ANSI');

-- SELECT language, year FROM proglang_tbl
-- WHERE standard NOT IN ('ANSI') AND standard IN ('ISO');

-- SELECT language, year FROM proglang_tbl
-- WHERE standard IN ('ISO')
-- EXCEPT 
-- SELECT language, year FROM proglang_tbl 
-- WHERE standard IN ('ANSI');

------------------------------------------------------------------------
-- ************************* VIEW
-- *** VIEW > Update oorsprong-tabel, wordt VIEW automatisch bijgewerkt !!! Omgekeerd ook (VIEW aanpassen = oorsprong tabel ook)
-- SELECT * FROM proglang_tbl;

-- CREATE VIEW language_chronology AS
-- SELECT language, year
-- FROM proglang_tbl
-- ORDER BY year ASC;

-- SELECT * FROM language_chronology;

-- CREATE VIEW language_decade AS
-- SELECT language, 'The'||((year/10)*10)||'s' decade
-- FROM proglang_tbl;

-- SELECT * FROM language_decade;

-- CREATE VIEW standards AS
-- SELECT standard, count(*)
-- FROM proglang_tbl
-- GROUP BY standard;

-- SELECT * FROM standards;
-- DROP VIEW standards;

-- SELECT * FROM INFORMATION_SCHEMA.COLUMNS
-- WHERE table_name = 'language_chronology';

-- SELECT definition FROM pg_views
-- WHERE viewname = 'language_chronology';

------------------------------------------------------------------------
-- ************************* INDEX - EXPLAIN
-- SELECT * FROM proglang_tbl;
-- CREATE INDEX language_idx ON proglang_tbl(language);

-- SELECT  a.language,
--         b.author,
--         c.year,
--         d.standard,
--         e.id
-- INTO biglang_tbl
-- FROM proglang_tbl a, proglang_tbl b, proglang_tbl c, proglang_tbl d, proglang_tbl e;

-- SELECT * FROM biglang_tbl;

-- EXPLAIN
-- SELECT * FROM biglang_tbl
-- WHERE language='Fortran';

-- CREATE INDEX biglang_idx
-- ON biglang_tbl (language);

-- SELECT pg_size_pretty(pg_relation_size('biglang_tbl'));
-- SELECT pg_size_pretty(pg_relation_size('biglang_idx'));












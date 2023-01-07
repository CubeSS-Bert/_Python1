-- SELECT * FROM proglang_tblcopy;

-- INSERT into proglang_tblcopy
-- 	(id, language, author, year)
-- 	VALUES 
-- 	(2, 'Perl', 'Wall', 1987);
	
-- INSERT into proglang_tblcopy
-- 	(id, year, standard, language, author)
-- 	VALUES 
-- 	(3, 1964, 'ANSI', 'APL', 'Iverson');


-- CREATE TABLE proglang_constraints (
-- 	id INTEGER NOT NULL,
-- 	language VARCHAR(20) NOT NULL,
-- 	author VARCHAR(25) NOT NULL,
-- 	year INTEGER NOT NULL CHECK (year > 1950),
-- 	standard VARCHAR(10) NULL
-- 	);
	
-- INSERT into proglang_constraints
-- -- 	(id, language, author, year)
-- 	VALUES 
-- 	(1, 'Short Code', 'Mauchly', 1951);



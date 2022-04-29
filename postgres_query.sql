-- CREATE TABLE lessons (
--   id integer PRIMARY KEY,
--   name character varying(255) NOT NULL,
--   description text,
--   front_end boolean DEFAULT false,
--   back_end boolean DEFAULT false,
--   created_at timestamp without time zone NOT NULL,
--   updated_at timestamp without time zone NOT NULL
-- );

-- INSERT INTO lessons (
--   id,
--   name,
--   description,
--   front_end,
--   back_end,
--   created_at,
--   updated_at
-- ) VALUES (
--   11,
--   'Ruby',
--   'A General purpose language use for making sofrwares',
--   true,
--   true,
--   current_timestamp,
--   current_timestamp
-- );

-- DROP TABLE students;
-- Student Table 
-- CREATE TABLE students (
--   id SERIAL PRIMARY KEY,
--   first_name character varying(255) NOT NULL,
--   middle_name character varying(255) DEFAULT '',
--   last_name character varying(255) NOT NULL,
--   age integer,
--   location character varying(255) NOT NULL
-- );

-- INSERT INTO students (
--   first_name,
--   middle_name,
--   last_name,
--   age,
--   location
-- ) VALUES (
--   'Finn',
--   '',
--   'Lam',
--    25,
--   'Manila'
-- );

-- UPDATE students
-- SET
--   first_name = 'Ivan',
--   middle_name = 'Ingram',
--   last_name = 'Howard',
--   age = 25,
--   location = 'Bulacan'
-- WHERE id = 1;

-- DELETE FROM students WHERE id IN (
--   SELECT id FROM students ORDER by id LIMIT 1
-- );

-- Student count
-- SELECT COUNT(id) FROM lessons; 

-- Sudent from Manila
-- SELECT * FROM students WHERE location = 'Manila';

-- Student Average Age
-- SELECT AVG(age) FROM students;

-- Order of student in decending orde rusing id
-- SELECT * FROM students ORDER by id desc;

-- SELECT * FROM students;

-- SELECT AVG(id) from lessons;

-- SELECT * from lessons;


-- SELECT * FROM students;

-- CREATE TABLE classrooms (
--   id integer PRIMARY KEY,
--   student_id integer, 
--   section character varying(255),
--   created_at timestamp without time zone NOT NULL,
--   updated_at timestamp without time zone NOT NULL
-- );

-- INSERT INTO classrooms (
--   id,
--   student_id,
--   section,
--   created_at,
--   updated_at
-- ) VALUES (
--   10,
--   10,
--   'C',
--   current_timestamp,
--   current_timestamp
-- );

-- SELECT * FROM classrooms;
-- SELECT * FROM students;

-- SELECT 
-- c.id, c.section, 
-- s.first_name, 
-- s.last_name 
-- FROM 
-- students s 
-- INNER JOIN 
--   classrooms c 
-- ON 
--   c.id = s.id;

-- SELECT 
-- c.id, c.section, 
-- s.first_name, 
-- s.last_name 
-- FROM 
-- students s 
-- LEFT JOIN 
--   classrooms c 
-- ON 
--   c.id = s.id;

-- SELECT 
-- c.id, c.section, 
-- s.first_name, 
-- s.last_name 
-- FROM 
-- students s 
-- RIGHT JOIN 
--   classrooms c 
-- ON 
--   c.id = s.id;

-- SELECT
--   c.id, c.section,
--   s.first_name,
--   s.last_name
-- FROM
--   students s
--FULL JOIN
--   classrooms c
-- ON

--   c.id = s.id
-- ORDER by c.section
-- LIMIT 1;

SELECT * FROM lessons;


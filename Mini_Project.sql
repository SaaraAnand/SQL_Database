CREATE DATABASE STUDENTS;

USE STUDENTS;

CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(100),
  date_of_birth DATE,
  email VARCHAR(100),
  major VARCHAR(50)
);


CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100),
  credit_hours INT,
  instructor VARCHAR(100)
);

INSERT INTO Students (student_id, student_name, date_of_birth, email, major)
VALUES
  (1, 'John Doe', '1998-07-15', 'john.doe@example.com', 'Computer Science'),
  (2, 'Jane Smith', '1999-03-22', 'jane.smith@example.com', 'Mathematics'),
  (3, 'Michael Johnson', '2000-11-08', 'michael.johnson@example.com', 'Computer Science'),
  (4, 'Emily Williams', '2001-05-01', 'emily.williams@example.com', 'Physics');

INSERT INTO Courses (course_id, course_name, credit_hours, instructor)
VALUES
  (101, 'Database Management', 3, 'Prof. Brown'),
  (102, 'Programming Fundamentals', 4, 'Prof. White'),
  (103, 'Calculus I', 4, 'Prof. Smith'),
  (104, 'Physics I', 4, 'Prof. Johnson');

SELECT * FROM Students;

SELECT * FROM Courses;

SELECT * FROM Students WHERE major = 'Computer Science';

SELECT * FROM Students WHERE date_of_birth < '2000-01-01';

SELECT * FROM Courses WHERE instructor = 'Prof. Smith';

SELECT major, COUNT(*) AS total_students FROM Students GROUP BY major;

SELECT * FROM Courses ORDER BY credit_hours DESC LIMIT 1;

SELECT * FROM Students ORDER BY date_of_birth ASC LIMIT 1; -- Oldest student
SELECT * FROM Students ORDER BY date_of_birth DESC LIMIT 1; -- Youngest student

INSERT INTO Students (student_id, student_name, date_of_birth, email, major)
VALUES (5, 'William Johnson', '2002-09-12', 'william.johnson@example.com', 'Computer Science');

UPDATE Students SET email = 'jane.smith@gmail.com' WHERE student_id = 2;

SELECT * FROM Students WHERE student_id IN (SELECT student_id FROM Courses WHERE course_id = 101);






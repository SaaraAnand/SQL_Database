CREATE DATABASE Candidat;
CREATE DATABASE Wor;

USE Candidat; 
CREATE TABLE Candidat.Emp1 ( 
S_no INT, 
Name VARCHAR(255), 
Occupation VARCHAR(255), 
Age INT, Contact_no VARCHAR(255) 
); 
CREATE TABLE Candidat.Emp2 ( 
S_no INT, 
Name VARCHAR(255), 
Occupation VARCHAR(255), 
Age INT, Contact_no VARCHAR(255) 
); 

INSERT INTO Candidat.Emp1 (S_no, Name, Occupation, Age, Contact_no) 
VALUES 
(1, 'Tom', 'Engineer', 25, '8142685950'), 
(2, 'Victor', 'Designer', 29, '7413695122'), 
(3, 'Jack', 'Business Analyst', 29, '8790572656'),
(4, 'Thomas', 'Teacher', 25, '8142685990');


INSERT INTO Candidat.Emp2 (S_no, Name, Occupation, Age, Contact_no) 
VALUES 
(1, 'Tomy', 'teacher', 25, '8142685950'), 
(2, 'Vica', 'Designer', 29, '7413695122'), 
(3, 'Jacky', 'Business Analyst', 29, '8790572656'),
(4, 'Thom', 'Teacher', 25, '8142685990'), 
(5, 'Samy', 'Analyst', 29, '7413695199'), 
(6, 'Paul', 'Doctor', 29, '8790572672');

SELECT * FROM Emp1;
-- Insert the data

SELECT Name, Age 
FROM Emp1 
UNION 
SELECT Name,Age 
FROM Emp2; 

SELECT Emp1.*, Emp2.*
FROM Candidat.Emp1
INNER JOIN Candidat.Emp2 ON Emp1.S_no = Emp2.S_no;

SELECT Emp1.*, Emp2.*
FROM Candidat.Emp1
LEFT JOIN Candidat.Emp2 ON Emp1.S_no = Emp2.S_no;

SELECT Emp1.*, Emp2.*
FROM Candidat.Emp1
RIGHT JOIN Candidat.Emp2 ON Emp1.S_no = Emp2.S_no;

SELECT Emp1.*, Emp2.*
FROM Candidat.Emp1
LEFT JOIN Candidat.Emp2 ON Emp1.S_no = Emp2.S_no
UNION
SELECT Emp1.*, Emp2.*
FROM Candidat.Emp1
RIGHT JOIN Candidat.Emp2 ON Emp1.S_no = Emp2.S_no;








CREATE DATABASE Candidatez;
CREATE DATABASE Workz;

USE Candidatez; 
CREATE TABLE Candidatez.Em ( 
S_no INT, 
Name VARCHAR(255), 
Occupation VARCHAR(255), 
Age INT, 
Contact_no VARCHAR(255) 
); 

INSERT INTO Candidatez.Em (S_no, Name, Occupation, Age, Contact_no) 
VALUES 
(1, 'Tom', 'Engineer', 25, '8142685950'), 
(2, 'Victor', 'Designer', 29, '7413695122'), 
(3, 'Jack', 'Business Analyst', 29, '8790572656'),
(4, 'Thomas', 'Teacher', 25, '8142685990'), 
(5, 'Sam', 'Analyst', 29, '7413695199'), 
(6, 'Paul', 'Doctor', 29, '8790572672');

SELECT * FROM Em;

SELECT *
FROM Em
WHERE Name='Tom'

ORDER BY Age DESC;

SELECT *
FROM Em
ORDER BY Name
LIMIT 2;

SELECT Contact_no AS Mobile_no
FROM Em;

SELECT DISTINCT Occupation
FROM Em;

SELECT COUNT(*)
FROM Em
WHERE Age = '25';

SELECT AVG(Age) AS Average_age
FROM Em;

SELECT CONCAT(Name, ' ', Age) AS Full_name
FROM Em;

SELECT LENGTH(Name) AS name_length
FROM Em;

SELECT UPPER(Name) AS Upper_case_first_name
FROM Em;

SELECT CURRENT_DATE() AS Current_date;  

SELECT ROUND(Age, 2) AS Rounded_age
FROM Em;

SELECT MAX(Age) AS "Maximum age"
FROM Em;

SELECT MIN(Age) AS "Minimum age"
FROM Em;

SELECT SUM(Age) AS "Sum of ages"
FROM Em;

SELECT DATABASE() AS CurrentDatabase;

SELECT USER() AS CurrentUser;

SELECT *
FROM Em
WHERE Name LIKE 'T%';

SELECT *
FROM Em
WHERE Age > '25';

SELECT *
FROM Em
WHERE Name LIKE '%k';





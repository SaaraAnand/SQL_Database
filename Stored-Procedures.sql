CREATE DATABASE Candidatezz11;
CREATE DATABASE Workzz11;

USE Candidatezz11; 
CREATE TABLE Candidatezz11.Emz11 ( 
S_no INT, 
Name VARCHAR(255), 
Occupation VARCHAR(255), 
Age INT, 
Contact_no VARCHAR(255) 
); 

INSERT INTO Candidatezz11.Emz11 (S_no, Name, Occupation, Age, Contact_no) 
VALUES 
(1, 'Tom', 'Engineer', 25, '8142685950'), 
(2, 'Victor', 'Designer', 29, '7413695122'), 
(3, 'Jack', 'Business Analyst', 29, '8790572656'),
(4, 'Thomas', 'Teacher', 25, '8142685990'), 
(5, 'Sam', 'Analyst', 29, '7413695199'), 
(6, 'Paul', 'Doctor', 29, '8790572672');

SELECT * FROM Emz11;

SELECT COUNT(*) AS Count_s
FROM Emz11
WHERE Age BETWEEN 25 AND 27;

SELECT Occupation FROM Emz11 WHERE Age = (SELECT MIN(Age) FROM Emz11);

SELECT * FROM Emz11 WHERE Age <> '25';



-- Create the stored procedure in the Candidatezz1 database
USE Candidatezz11;

DELIMITER //

CREATE PROCEDURE GetEmz11Details ()
BEGIN
    SELECT S_no, Name, Occupation, Age, Contact_no
    FROM Emz11;
END;
//

DELIMITER ;

CALL GetEmz11Details;


-- Create the stored procedure in the Candidatezz1 database
USE Candidatezz11;

DELIMITER //

CREATE PROCEDURE CalculateAvgAge ()
BEGIN
    DECLARE average_age DECIMAL(10, 2);
    
    SELECT AVG(Age) INTO average_age
    FROM Emz11;
    
    SELECT average_age AS AvgAge;
END;
//

DELIMITER ;

CALL CalculateAvgAge;




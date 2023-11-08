-- Create a Numbers table to store the numbers from 1 to 10
CREATE DATABASE NUM;
USE NUM;
CREATE TABLE Numbers (
    Number INT
);

-- Insert numbers from 1 to 10 into the Numbers table
INSERT INTO Numbers (Number)
VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

-- Use a CTE to calculate the sum of the numbers
WITH NumbersCTE AS (
    SELECT Number
    FROM Numbers
)
SELECT SUM(Number) AS SumOfNumbers
FROM NumbersCTE;


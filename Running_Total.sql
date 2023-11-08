-- Create a Sales table
CREATE DATABASE S;
USE S;
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    SaleDate DATE,
    Amount DECIMAL(10, 2)
);

-- Insert 5 sample records into the Sales table
INSERT INTO Sales (SaleID, SaleDate, Amount)
VALUES
    (1, '2023-11-01', 100.50),
    (2, '2023-11-02', 75.25),
    (3, '2023-11-03', 220.75),
    (4, '2023-11-04', 150.00),
    (5, '2023-11-05', 300.99);
    
WITH RunningTotalCTE AS (
    SELECT
        SaleID,
        SaleDate,
        Amount,
        SUM(Amount) OVER (ORDER BY SaleDate) AS RunningTotal
    FROM Sales
)
SELECT SaleID, SaleDate, Amount, RunningTotal
FROM RunningTotalCTE
ORDER BY SaleDate;

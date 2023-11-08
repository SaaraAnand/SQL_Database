CREATE DATABASE COMPp;
USE COMPp;

-- Create an Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

-- Insert 5 entries into the Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID)
VALUES
    (1, 'John Smith', NULL), 
    (2, 'Jane Doe', 1),      -- Jane Doe reports to John Smith (ManagerID = 1)
    (3, 'Bob Johnson', 1),   -- Bob Johnson also reports to John Smith (ManagerID = 1)
    (4, 'Alice Brown', 2),   -- Alice Brown reports to Jane Doe (ManagerID = 2)
    (5, 'Charlie Davis', 3); -- Charlie Davis reports to Bob Johnson (ManagerID = 3);

-- Now, use a CTE to retrieve the manager hierarchy for 'Alice Brown'
WITH ManagerHierarchy AS (
    SELECT EmployeeID, EmployeeName, ManagerID
    FROM Employees
    WHERE EmployeeName = 'Alice Brown'
    
    UNION ALL
    
    SELECT e.EmployeeID, e.EmployeeName, e.ManagerID
    FROM Employees e
    JOIN ManagerHierarchy m ON e.EmployeeID = m.ManagerID
)
SELECT EmployeeName, ManagerID
FROM ManagerHierarchy;



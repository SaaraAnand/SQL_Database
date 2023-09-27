CREATE TABLE emp1 (
  empno INT PRIMARY KEY,
  empname VARCHAR(50),
  job VARCHAR(50),
  basic DECIMAL(10,2),
  da DECIMAL(10,2),
  hra DECIMAL(10,2),
  pf DECIMAL(10,2),
  grosspay DECIMAL(10,2),
  netpay DECIMAL(10,2)
);

-- insert 5 records and calculate grosspay and netpay
INSERT INTO emp1 (empno, empname, job, basic, pf)
VALUES
  (1, 'John Doe', 'Manager', 50000, 1800),
  (2, 'Jane Smith', 'Developer', 40000, 1440),
  (3, 'Mike Johnson', 'Accountant', 35000, 1260),
  (4, 'Sarah Lee', 'Salesperson', 30000, 1080),
  (5, 'David Kim', 'Marketing', 45000, 1620);

-- finding employees who have the lowest basic in each department
UPDATE emp1 SET da = 0.3 * basic, hra = 0.4 * basic, grosspay = basic + da + hra - pf, netpay = grosspay - pf;
SELECT grosspay FROM emp1;
SELECT netpay FROM emp1;

-- if net pay is less than 10000, add special allowance of 1200
SELECT e.empno, e.empname, e.job, e.basic, (e.netpay + IF(e.netpay < 10000, 1200, 0)) AS netpay
FROM emp1 e
WHERE e.basic IN (
  SELECT MIN(sub_e.basic)
  FROM emp1 sub_e
  WHERE sub_e.job = e.job
)
AND (e.netpay + IF(e.netpay < 10000, 1200, 0)) < 10000;
SELECT * FROM emp1;

SELECT grosspay from emp1;
SELECT netpay from emp1;
SELECT * FROM emp1;


CREATE DATABASE B;
USE B;
-- Create a Students table
CREATE TABLE ExamResults (
    StudentName VARCHAR(50),
    Score INT
);

-- Insert data for 5 students into the Students table
INSERT INTO ExamResults (StudentName, Score)
VALUES
    ('Alice', 85),
    ('Bob', 92),
    ('Charlie', 78),
    ('David', 95),
    ('Eve', 88);
SELECT StudentName, Score, RANK() OVER (ORDER BY Score DESC) AS Rank
FROM ExamResults;
SELECT StudentName, Score, DENSE_RANK() OVER (ORDER BY Score DESC) AS DenseRank
FROM ExamResults;
SELECT StudentName, Score, NTILE(4) OVER (ORDER BY Score DESC) AS Quartile
FROM ExamResults;
SELECT StudentName, Score, ROW_NUMBER() OVER (ORDER BY Score DESC) AS RowNum
FROM ExamResults;


 




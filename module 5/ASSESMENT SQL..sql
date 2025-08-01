create database assesment;
use assesment;
drop table worker;
CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY DECIMAL(10,2),
    JOINING_DATE DATE,
    DEPARTMENT VARCHAR(50)
);

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES 
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-06-11 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');



select* from worker;

SELECT * 
FROM Worker 
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

SELECT * 
FROM Worker 
WHERE FIRST_NAME IN ('Vipul', 'Satish');

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%h';

SELECT *
FROM Worker
WHERE SALARY > 1;

SELECT *
FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

SELECT FIRST_NAME, COUNT(*)
FROM Worker
GROUP BY FIRST_NAME
HAVING COUNT(*) > 1;

SELECT * 
FROM Worker 
LIMIT 6;

SELECT DEPARTMENT, COUNT(*) as DeptCount
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

SELECT DEPARTMENT, COUNT(*) as NumOfWorkers
FROM Worker
GROUP BY DEPARTMENT;

SELECT w.FIRST_NAME, w.LAST_NAME, w.DEPARTMENT, w.SALARY
FROM Worker w
JOIN (
    SELECT DEPARTMENT, MAX(SALARY) AS MaxSalary
    FROM Worker
    GROUP BY DEPARTMENT
) t ON w.DEPARTMENT = t.DEPARTMENT AND w.SALARY = t.MaxSalary;


CREATE TABLE STUDENT (
    StdID INT,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage INT,
    Class VARCHAR(10),
    Sec CHAR(1),
    Stream VARCHAR(20),
    DOB DATE
);

INSERT INTO STUDENT (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
VALUES
(1001, 'Surekha Joshi', 'Female', 82, '12 A', 'A', 'Science', '1998-03-08'),
(1002, 'MAAHI AGARWAL', 'Female', 56, '11 C', 'C', 'Commerce', '2006-11-23'),
(1003, 'Sanam Verma', 'Male', 59, '11 C', 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 79, '11 C', 'C', 'Commerce', '1997-05-23'),
(1005, 'Dipesh Pulkit', 'Male', 78, '11 B', 'B', 'Science', '2003-09-14'),
(1006, 'JAHANVI Puri', 'Female', 63, '12 F', 'F', 'Commerce', '1998-03-08'),
(1007, 'Sanam Kumar', 'Male', 53, '12 F', 'F', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 56, '11 C', 'C', 'Commerce', '2008-11-07'),
(1009, 'AKSHRA AGARWAL', 'Female', 72, '12 B', 'B', 'Commerce', '1996-10-17'),
(1010, 'SUTI MISHRA', 'Female', 39, '11 F', 'F', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 42, '11 C', 'C', 'Science', '2008-03-08'),
(1012, 'NIKUNJ AGARWAL', 'Male', 49, '12 C', 'C', 'Commerce', '1998-06-28'),
(1013, 'AKRITI SAXENA', 'Female', 89, '12 A', 'A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, '12 A', 'A', 'Science', '2008-11-23');

select* from student;

SELECT StdName, DOB FROM STUDENT;

SELECT * 
FROM STUDENT
WHERE Percentage >= 80;

SELECT StdName, Stream, Percentage
FROM STUDENT
WHERE Percentage > 80;

SELECT *
FROM STUDENT
WHERE Stream = 'Science' AND Percentage > 75;


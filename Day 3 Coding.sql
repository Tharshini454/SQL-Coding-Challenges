-- Day 30: Clauses & Operators --

Create database UniversityDB;
use UniversityDB;

Create table Departments (
    DeptID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

Create table Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Email VARCHAR(100),
    CourseID VARCHAR(10),
    GPA DECIMAL(3,2)
);

INSERT INTO Departments (DeptID, DepartmentName) VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'EEE'),
(4, 'CSE'),
(5, 'Mech');

INSERT INTO Students (StudentID, StudentName, Email, CourseID, GPA) VALUES
(101, 'Anand', 'anand@mail.com', 'C101', 7.8),
(102, 'Ram', NULL, 'C202', 6.9),
(103, 'Swathi', 'swathi@mail.com', 'C303', 8.5),
(104, 'Moni', NULL, 'C404',8.0),
(105, 'Tharshini', 'tharz@mail.com', 'C101', 9.5);

-- DISTINCT & WHERE --
SELECT DISTINCT DepartmentName
FROM Departments;

SELECT * FROM departments WHERE DepartmentName = 'CSE' ;

-- IS NULL & NOT NULL --
SELECT StudentID, StudentName, Email
FROM Students
WHERE Email IS NULL;

SELECT StudentID, StudentName, Email
FROM Students
WHERE Email IS NOT NULL;

-- IN, BETWEEN, NOT BETWEEN --
SELECT StudentID, StudentName, CourseID
FROM Students
WHERE CourseID IN ('C101', 'C202', 'C303');

SELECT StudentID, StudentName, GPA
FROM Students
WHERE GPA BETWEEN 8.0 AND 9.0;

SELECT StudentID, StudentName, GPA
FROM Students
WHERE GPA NOT BETWEEN 8.0 AND 9.0;











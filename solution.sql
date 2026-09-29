CREATE DATABASE StudentDB;

USE StudentDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    CourseID INT,
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);

INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Commerce');


INSERT INTO Faculty (FacultyID, FacultyName, DepartmentID)
VALUES
(101, 'Science Faculty', 1),
(102, 'Technology Faculty', 2),
(103, 'Commerce Faculty', 3);



INSERT INTO Course (CourseID, CourseName, FacultyID)
VALUES
(201, 'BCA', 101),
(202, 'B.Sc IT', 102),
(203, 'B.Com', 103);



INSERT INTO Student (StudentID, StudentName, CourseID)
VALUES
(1001, 'Ravi', 201),
(1002, 'Priya', 201),
(1003, 'Arun', 202),
(1004, 'Kavya', 203);



SELECT * FROM Student;

SELECT * FROM Course;

SELECT * FROM Faculty;

SELECT * FROM Department;



SELECT
    s.StudentID,
    s.StudentName,
    c.CourseName,
    f.FacultyName,
    d.DepartmentName
FROM Student s
JOIN Course c
    ON s.CourseID = c.CourseID
JOIN Faculty f
    ON c.FacultyID = f.FacultyID
JOIN Department d
    ON f.DepartmentID = d.DepartmentID;


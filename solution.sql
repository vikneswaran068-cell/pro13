CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    FacultyName VARCHAR(100) NOT NULL,
    DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    CourseID INT,
    
    CONSTRAINT FK_Student_Course
        FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);


INSERT INTO Course
    (CourseID, CourseName, FacultyName, DepartmentName)
VALUES
    (101, 'Computer Science', 'Dr. Kumar', 'Computer Science'),
    (102, 'Information Technology', 'Dr. Ravi', 'Information Technology'),
    (103, 'Commerce', 'Dr. Priya', 'Commerce');


INSERT INTO Student
    (StudentID, StudentName, CourseID)
VALUES
    (1, 'Arun', 101),
    (2, 'Bala', 102),
    (3, 'Chitra', 101),
    (4, 'Divya', 103),
    (5, 'Karthik', 102);

SELECT * FROM Student;



SELECT * FROM Course;



SELECT
    Student.StudentID,
    Student.StudentName,
    Course.CourseName,
    Course.FacultyName,
    Course.DepartmentName
FROM Student
JOIN Course
    ON Student.CourseID = Course.CourseID;

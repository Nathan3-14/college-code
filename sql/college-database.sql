CREATE TABLE students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    DOB DATE,
    CourseDeptID INT
);
CREATE TABLE teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    HireDate DATE,
	DeptID INT
);
CREATE TABLE departments (
    DeptID INT AUTO INCREMENT PRIMARY KEY,
    DeptName VARCHAR(20),
    OfficeLocation VARCHAR(20)
);
CREATE TABLE courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(20),
    UCASCredits INT
);
CREATE TABLE enrolments (
    EnrolmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Term VARCHAR(20),
    AvgGCSEGrade FLOAT
);
-- StudentID: 1xx
-- TeacherID: 2xx
-- CourseID:  3xx
-- DeptID: x
-- EnrolmentID: 4xx
INSERT INTO students VALUES
(101, "James", "Smith", "2009-01-01", 1),
(102, "Becky", "Johnson", "2008-10-14", 1),
(103, "John", "Doe", "2009-07-21", 1),
(104, "Bob", "Layton", "2009-06-05", 2),
(105, "Amy", "Smith", "2009-03-21", 3),
(106, "Lily", "Rose", "2008-12-27", 3);

INSERT INTO teachers VALUES
(201, "Alfred", "Addicoat", "2019-11-03", 1),
(202, "Charlie", "Lacks", "2023-09-01", 2),
(203, "Jane", "Saull", "2012-06-30", 3);

INSERT INTO courses VALUES
(301, "Calculus I", 10),
(302, "Calculus II", 10),
(303, "Shakespeare", 15),
(304, "Quantum Mechanics I", 5);

INSERT INTO departments VALUES
(1, "Mathematics", 10),
(2, "English", 10),
(3, "Physics", 15);

INSERT INTO enrolments VALUES
(401, 101, 301, "Autumn 2025", 8.1),
(402, 102, 301, "Autumn 2025", 6.0),
(403, 103, 302, "Autumn 2025", 3.7),
(404, 104, 303, "Autumn 2025", 5.6),
(405, 105, 304, "Autumn 2025", 8.2),
(406, 106, 304, "Autumn 2025", 8.6);


--UPDATE teachers
--SET FirstName = "old hire"
--WHERE HireDate < "2020-01-01";
--SELECT FirstName, LastName, HireDate FROM teachers WHERE HireDate > "2019-01-01";
--SELECT FirstName, LastName, DOB FROM students WHERE DOB > "2009-01-01"
--SELECT CourseName FROM courses WHERE CourseID IN (SELECT CourseID FROM enrolments WHERE AvgGCSEGrade > 7)
--SELECT FirstName, LastName FROM students WHERE StudentID IN (SELECT StudentID FROM enrolments WHERE AvgGCSEGrade > 7)
--SELECT FirstName, LastName FROM teachers WHERE DeptID IN (SELECT CourseDeptID FROM students)

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(30),
    AuthorID INT,
    Genre VARCHAR(30),
    Year YEAR
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(40),
    Country VARCHAR(30)
);

CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY,
    Name VARCHAR(40),
    Email VARCHAR(40)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    BorrowerID INT,
    LoanDate DATE,
    ReturnDate DATE
);

--Book      - 1xx
--Author    - 2xx
--Borrowers - 3xx
--Loans     - 4xx
INSERT INTO Books VALUES
(101, "Cool Book", 201, "Awesome Books", 2017),
(102, "Bad Book", 202, "Stupid Books", 2018),
(103, "Vicious Vikings", 203, "History", 1994),
(104, "Vile Victorians", 203, "History", 1994),
(105, "Angry Aztecs", 203, "History", 1997);

INSERT INTO Authors VALUES
(201, "Nathan the Super Cool", "UK"),
(202, "James", "France"),
(203, "Terry Deary", "UK");

INSERT INTO Borrowers VALUES
(301, "test", "testuser@gmail.com"),
(302, "dasd", "dast@eemail.com"),
(303, "asda", "info@asda.com");

INSERT INTO Loans VALUES
(401, 101, 301, "2025-09-12", "2025-09-26"),
(402, 102, 301, "2025-09-14", "2025-09-28"),
(403, 104, 302, "2024-02-02", "2024-02-23"),
(404, 103, 303, "2025-08-17", "2025-10-21"),
(405, 105, 303, "2025-08-17", "2025-09-20");

SELECT Name FROM Borrowers WHERE (SELECT ReturnDate FROM Loans WHERE BorrowerID = BorrowerID) < "2025-09-25";

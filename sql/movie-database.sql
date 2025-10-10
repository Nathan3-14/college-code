CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Address VARCHAR(50)
);
INSERT INTO Customers VALUES
(1, "John", "Smith", "1 High Street"),
(2, "Mary", "Jones", "14 Acacia Avenue"),
(3, "John", "Smith", "23 Maple Drive");

CREATE TABLE Downloads (
    DownloadID INT PRIMARY KEY,
    MovieID INT, --FK
    CustomerID INT, --FK
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Downloads VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 2, 2),
(6, 5, 3),
(7, 4, 3);

CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    MovieTitle VARCHAR(40),
    Genre VARCHAR(30),
    FormatID INT, --FK
    FOREIGN KEY (FormatID) REFERENCES Formats(FormatID)
);
INSERT INTO Movies VALUES
(1, "The Hangover", "Comedy", 1),
(2, "22 Jump Street", "Comedy", 1),
(3, "The Hunger Games", "Sci-Fi", 2),
(4, "Robocop", "Sci-Fi", 2),
(5, "How to Train your Dragon", "Children", 2);

CREATE TABLE Formats (
    FormatID INT PRIMARY KEY,
    Format VARCHAR(10),
    FileType VARCHAR(10)
);
INSERT INTO Formats VALUES
(1, "LowRes", "MPEG-2"),
(2, "HighRes", "MPEG-4");

SELECT Customers.FirstName, Customers.LastName, Movies.MovieTitle FROM Customers JOIN Downloads ON Customers.CustomerID=Downloads.CustomerID JOIN Movies ON Downloads.MovieId=Movies.MovieID;

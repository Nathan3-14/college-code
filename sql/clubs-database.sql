CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    StudentYearGroup INT,
    StudentEmail VARCHAR(50)
);
INSERT INTO Students VALUES
(),
();

CREATE TABLE Clubs (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(30),
    ClubDescription VARCHAR(100),
    ClubTeacherId INT
);
INSERT INTO Clubs VALUES
(),
();

CREATE TABLE Memberships (
    StudentID INT,
    ClubID INT,
    StudentRole VARCHAR(30),
    StudentJoinDate DATE
);
INSERT INTO Memberships VALUES
(),
();

CREATE TABLE Meetings (
    MeetingID INT PRIMARY KEY,
    CLubID INT,
    MeetingDate DATE,
    MeetingLocation VARCHAR(30)
);
INSERT INTO Meetings VALUES
(),
();

CREATE TABLE Attendance (
    MeetingID INT,
    StudentID INT,
    DidAttend BOOl
);
INSERT INTO Attendance VALUES
(),
();

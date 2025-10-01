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
(1, "Robotics", "Create cool robots", 201),
(2, "Art", "Create art in various mediums, all skill levels welcome", 202),
(3, "Football", "Participate in friendly matches and competitions, anyone welcome", 203);

CREATE TABLE Memberships (
    StudentID INT,
    ClubID INT,
    StudentRole VARCHAR(30),
    StudentJoinDate DATE
);
INSERT INTO Memberships VALUES
(101, 1, "Electronics Designer", "2024-01-23"),
(102, 1, "Researcher", "2024-01-30"),
(103, 2, "Oil Paints", "2023-04-01"),
(104, 2, "Oil Paints", "2025-10-21"),
(105, 2, "Clay", "2025-10-21"),
(106, 3, "Captain", "2022-09-03");

CREATE TABLE Meetings (
    MeetingID INT PRIMARY KEY,
    CLubID INT,
    MeetingDate DATE,
    MeetingLocation VARCHAR(30)
);
INSERT INTO Meetings VALUES
(911, 1, "2025-09-12", "B102"),
(912, 1, "2025-09-19", "B102"),
(921, 2, "2025-09-13", "C201"),
(922, 2, "2025-09-20", "C202"),
(931, 3, "2025-09-04", "E1"),
(932, 3, "2025-09-11", "E1"),
(933, 3, "2025-09-18", "E2");

CREATE TABLE Attendance (
    MeetingID INT,
    StudentID INT,
    DidAttend BOOl
);
INSERT INTO Attendance VALUES
(911, 101, true),
(911, 102, true),
(912, 101, false),
(912, 102, true),
(921, 103, false),
(921, 104, true),
(921, 105, true),
(922, 103, true),
(922, 104, true),
(922, 105, false),
(931, 106, true),
(932, 106, true),
(933, 106, true);

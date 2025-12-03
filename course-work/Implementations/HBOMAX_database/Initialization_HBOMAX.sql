CREATE DATABASE IF NOT EXISTS hbomaxdb;
USE hbomaxdb;

CREATE TABLE User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Subscription (
    SubscriptionID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    PlanType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Profile (
    ProfileID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    ProfileName VARCHAR(50),
    AgeRestriction INT,
    Avatar VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

CREATE TABLE Genre (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Discription TEXT,
    PopularityIndex INT
);

CREATE TABLE Movie (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Description TEXT,
    ReleaseYear INT,
    DurationMinutes INT,
    Language VARCHAR(50),
    IsActive BOOLEAN DEFAULT TRUE
);

CREATE TABLE MovieGenre (
    MovieGenreID INT AUTO_INCREMENT PRIMARY KEY,
    MovieID INT NOT NULL,
    GenreID INT NOT NULL,
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

CREATE TABLE ViewingHistory (
    HistoryID INT AUTO_INCREMENT PRIMARY KEY,
    ProfileID INT NOT NULL,
    MovieID INT NOT NULL,
    WatchedAt DATETIME,
    WatchedDuration INT,
    DeviceType VARCHAR(50),
    FOREIGN KEY (ProfileID) REFERENCES Profile(ProfileID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);
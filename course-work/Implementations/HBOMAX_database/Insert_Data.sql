USE hbomaxdb;


INSERT INTO User (Email, PasswordHash, FirstName, LastName)
VALUES 
('user1@mail.com','hash1','Ivan','Petrov'),
('user2@mail.com','hash2','Maria','Dimitrova'),
('user3@mail.com','hash3','Georgi','Stoyanov'),
('user4@mail.com','hash4','Elena','Koleva'),
('user5@mail.com','hash5','Pesho','Iliev'),
('user6@mail.com','hash6','Nikolay','Nikolov'),
('user7@mail.com','hash7','Stanimir','Bonev'),
('user8@mail.com','hash8','Raya','Petkova'),
('user9@mail.com','hash9','Kristina','Mateva'),
('user10@mail.com','hash10','Kaloyan','Todorov');

INSERT INTO Subscription (UserID, PlanType, StartDate, EndDate)
VALUES
(1,'Premium','2024-01-01','2025-01-01'),
(2,'Basic','2024-03-10','2025-03-10'),
(3,'Standard','2023-12-01','2024-12-01'),
(4,'Premium','2024-02-20','2025-02-20'),
(5,'Basic','2024-05-01','2024-11-01'),
(6,'Standard','2024-06-15','2025-06-15'),
(7,'Premium','2024-08-01','2025-08-01'),
(8,'Basic','2024-09-10','2025-09-10'),
(9,'Standard','2024-10-01','2025-10-01'),
(10,'Premium','2024-11-01','2025-11-01');

INSERT INTO Profile (UserID, ProfileName, AgeRestriction, Avatar)
VALUES
(1,'Ivan Jr',12,'avatar1.png'),
(1,'Family',0,'avatar2.png'),
(2,'Maria',18,'avatar3.png'),
(3,'Geo',16,'avatar4.png'),
(4,'Eli',0,'avatar5.png'),
(5,'Pesho Kid',7,'avatar6.png'),
(6,'Nick',12,'avatar7.png'),
(7,'Stan',16,'avatar8.png'),
(8,'Raya',0,'avatar9.png'),
(9,'Krisi',12,'avatar10.png');

INSERT INTO Genre (Name, Discription, PopularityIndex)
VALUES
('Action','Action movies',90),
('Comedy','Funny movies',85),
('Drama','Dramatic movies',80),
('Horror','Scary movies',70),
('Sci-Fi','Futuristic',95),
('Fantasy','Magic worlds',88),
('Romance','Love stories',75),
('Thriller','Suspense',82),
('Animation','Cartoons',93),
('Documentary','Real stories',60);

INSERT INTO Movie (Title, Description, ReleaseYear, DurationMinutes, Language)
VALUES
('Movie A','Description A',2020,120,'English'),
('Movie B','Description B',2021,90,'English'),
('Movie C','Description C',2019,110,'Bulgarian'),
('Movie D','Description D',2018,130,'English'),
('Movie E','Description E',2022,100,'German'),
('Movie F','Description F',2017,140,'French'),
('Movie G','Description G',2023,95,'Spanish'),
('Movie H','Description H',2024,150,'English'),
('Movie I','Description I',2020,80,'Italian'),
('Movie J','Description J',2021,125,'English');

INSERT INTO MovieGenre (MovieID, GenreID) VALUES
(1,1),
(2,2),
(3,3),
(4,5),
(5,1),
(6,9),
(7,4),
(8,5),
(9,7),
(10,6);

INSERT INTO ViewingHistory (ProfileID, MovieID, WatchedAt, WatchedDuration, DeviceType)
VALUES
(1,1,NOW(),60,'TV'),
(2,3,NOW(),45,'PC'),
(3,2,NOW(),90,'Phone'),
(4,5,NOW(),110,'TV'),
(5,4,NOW(),100,'Tablet'),
(6,6,NOW(),70,'TV'),
(7,1,NOW(),55,'PC'),
(8,9,NOW(),80,'Laptop'),
(9,10,NOW(),120,'TV'),
(10,8,NOW(),66,'Phone');
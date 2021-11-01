CREATE DATABASE IF NOT EXISTS msisdb;
USE msisdb;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Referees;
DROP TABLE IF EXISTS Assignments;
DROP TABLE IF EXISTS Games;
DROP TABLE IF EXISTS `Fields`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE IF NOT EXISTS Referees (
    refereeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    refereeLastName varchar(255) NOT NULL,
    refereeFirstName varchar(255) NOT NULL,
    refereeAge int,
    refereeGrade int
);

CREATE TABLE IF NOT EXISTS `Fields` (
    fieldID INT NOT NULL AUTO_INCREMENT primary key,
    fieldName varchar(255),
    fieldLocation varchar(255)
);

CREATE TABLE IF NOT EXISTS Games (
    gameID INT NOT NULL AUTO_INCREMENT primary key,
    gameLevel int,
    gameDateTime DateTime,
    fieldID int,
    FOREIGN KEY (fieldID) REFERENCES `Fields`(fieldID) ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Teams (
	teamId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	teamName VARCHAR(50),
	clubName VARCHAR(50),
	manager VARCHAR(50),
);
CREATE TABLE IF NOT EXISTS Assignments (
    assignmentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assignmentStatus varchar(255) NOT NULL,
    refereeID int,
    gameID int,
    FOREIGN KEY (refereeID) REFERENCES Referees(refereeID) ON UPDATE CASCADE,
    FOREIGN KEY (gameID) REFERENCES Games(gameID) ON UPDATE CASCADE,
    FOREIGN KEY (gameDate) REFERENCES Games(gameDateTime) ON UPDATE CASCADE,
    FOREIGN KEY (teamNames) REFERENCES Teams(teamName) ON UPDATE CASCADE,


);


insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (1, 'Minyx', '7th');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (2, 'Geba', 'Carberry');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (3, 'Twimm', 'Grim');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (4, 'Kwideo', 'Ryan');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (5, 'Oozz', 'Crest Line');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (6, 'Eare', 'Gina');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (7, 'Quinu', 'Lakewood Gardens');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (8, 'Tavu', 'Lotheville');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (9, 'Flashpoint', 'Rockefeller');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (10, 'Shuffletag', 'Dahle');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (11, 'Gabtune', 'Vera');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (12, 'Yata', 'Huxley');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (13, 'Centizu', 'Garrison');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (14, 'Jazzy', 'Declaration');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (15, 'Zoomcast', 'Prentice');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (16, 'Mybuzz', 'Loftsgordon');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (17, 'Brainbox', 'Talisman');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (18, 'Photobug', 'Talisman');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (19, 'Edgeify', 'Northview');

insert into
    `Fields` (fieldID, fieldName, fieldLocation)
values
    (20, 'Katz', 'Lake View');

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (1, 'Calida', 'Revans', 42, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (2, 'Barney', 'Boord', 35, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (3, 'Calvin', 'Reinger', 3, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (4, 'Kirby', 'Harkus', 7, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (5, 'Brandi', 'Presdee', 20, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (6, 'Emyle', 'Lattimer', 29, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (7, 'Paul', 'Oakly', 60, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (8, 'Jakie', 'Armall', 9, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (9, 'Kaitlynn', 'Hamsley', 62, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (10, 'Braden', 'Gowlett', 47, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (11, 'Stephie', 'Prince', 52, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (12, 'Calvin', 'Baudi', 56, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (13, 'Mikey', 'Otton', 33, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (14, 'Charmion', 'Fido', 37, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (15, 'Carri', 'Clubley', 10, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (16, 'Lila', 'Honnicott', 45, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (17, 'Brigitte', 'Torresi', 57, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (18, 'Lorne', 'Loveguard', 38, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (19, 'Gail', 'Heinel', 38, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (20, 'Tish', 'Mesant', 9, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (21, 'Rasla', 'Jeggo', 14, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (22, 'Ham', 'Gress', 8, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (23, 'Consolata', 'Johnigan', 27, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (24, 'Melvin', 'Ganter', 54, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (25, 'Matelda', 'Ditter', 4, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (26, 'Jaquith', 'McQuilkin', 25, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (27, 'Vance', 'Besse', 22, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (28, 'Pavia', 'Nursey', 62, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (29, 'Dillon', 'Pierrepoint', 35, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (30, 'Padriac', 'Turneaux', 39, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (31, 'Murielle', 'Glasper', 12, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (32, 'Rafaellle', 'Rubinsztein', 29, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (33, 'Debee', 'Traice', 36, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (34, 'Kurt', 'Harcombe', 7, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (35, 'Janella', 'Wing', 63, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (36, 'Maura', 'Ruffles', 60, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (37, 'Valdemar', 'Paffot', 47, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (38, 'Eleonora', 'McShea', 45, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (39, 'King', 'Fenner', 45, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (40, 'Edin', 'Danneil', 33, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (41, 'Penny', 'Linklet', 49, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (42, 'Micheline', 'Tyreman', 26, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (43, 'Joel', 'Mehaffey', 63, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (44, 'Crichton', 'Handford', 4, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (45, 'Marcellina', 'Holleran', 51, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (46, 'Sandro', 'Bouda', 59, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (47, 'Marsh', 'Male', 11, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (48, 'Harrie', 'Fleischer', 45, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (49, 'Abbey', 'Christophle', 34, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (50, 'Jaye', 'Ferreli', 1, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (51, 'Thatcher', 'Pietersma', 34, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (52, 'Toddy', 'Shuard', 17, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (53, 'Ewan', 'Heindle', 49, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (54, 'Alison', 'Longden', 60, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (55, 'Townsend', 'Moorhouse', 2, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (56, 'Ximenez', 'Andrys', 20, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (57, 'Benedict', 'Aulton', 43, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (58, 'Wernher', 'Trees', 9, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (59, 'Griff', 'Dracksford', 7, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (60, 'Modesta', 'Hawford', 64, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (61, 'Tirrell', 'Groucutt', 30, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (62, 'Cathee', 'Antic', 42, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (63, 'Janie', 'Absolom', 3, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (64, 'Charlene', 'Laidler', 17, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (65, 'Malissa', 'Keuneke', 63, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (66, 'Nicolette', 'Durham', 23, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (67, 'Ozzy', 'Klinck', 32, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (68, 'Madelin', 'Helling', 59, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (69, 'Maighdiln', 'Matthewman', 5, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (70, 'Lucine', 'Amsberger', 23, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (71, 'Jayson', 'Haire', 9, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (72, 'Garey', 'Udall', 26, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (73, 'Louisette', 'Glyn', 47, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (74, 'Clareta', 'Hum', 40, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (75, 'Trina', 'Learmonth', 35, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (76, 'Shepherd', 'Matchitt', 5, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (77, 'Norah', 'Iacobacci', 59, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (78, 'Nevile', 'Jacklings', 25, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (79, 'Lev', 'Chable', 8, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (80, 'Ingamar', 'Naper', 42, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (81, 'Erasmus', 'Simeonov', 21, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (82, 'Nicolea', 'Filewood', 12, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (83, 'Sonnie', 'Teece', 12, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (84, 'Albert', 'Haglington', 34, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (85, 'Kenon', 'Excell', 24, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (86, 'Rowan', 'Cheston', 61, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (87, 'Nanice', 'Cockton', 50, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (88, 'Freddy', 'Daw', 10, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (89, 'Morgan', 'Downer', 6, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (90, 'Waylan', 'McCuish', 14, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (91, 'Cindi', 'Gorini', 27, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (92, 'Arvie', 'McGucken', 37, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (93, 'Paton', 'Hales', 39, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (94, 'Thalia', 'Landeg', 53, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (95, 'Davie', 'Ruckert', 24, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (96, 'Ahmad', 'Saffrin', 41, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (97, 'Bridie', 'Sante', 21, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (98, 'Harriet', 'Scholard', 3, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (99, 'Vinita', 'Briton', 6, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (100, 'Haydon', 'Culpen', 4, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (101, 'Riobard', 'Philips', 33, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (102, 'Aloysia', 'Tuny', 37, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (103, 'Dory', 'Stanton', 36, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (104, 'Ardisj', 'Huyche', 32, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (105, 'Josefa', 'Andreu', 47, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (106, 'Karlik', 'Corro', 34, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (107, 'Douglas', 'Abram', 54, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (108, 'Christoph', 'Cathenod', 1, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (109, 'Gil', 'Boutton', 57, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (110, 'Birgit', 'Togher', 9, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (111, 'Sylvester', 'Heineken', 18, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (112, 'Kare', 'Lynam', 27, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (113, 'Caddric', 'Phillins', 35, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (114, 'Estelle', 'Cadlock', 26, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (115, 'Sean', 'Semper', 8, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (116, 'Tildi', 'Macknish', 50, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (117, 'Michaelina', 'Hollingdale', 14, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (118, 'Reinaldos', 'Maclean', 18, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (119, 'Mallissa', 'Weston', 1, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (120, 'Rod', 'Zannotelli', 22, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (121, 'Lillis', 'Slimon', 42, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (122, 'Aloin', 'Neem', 5, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (123, 'Shandee', 'Washbrook', 30, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (124, 'Anna-diana', 'Thorowgood', 30, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (125, 'Nonie', 'Mathys', 56, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (126, 'Caresa', 'Sheal', 24, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (127, 'Prentice', 'Putten', 45, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (128, 'Jillian', 'Hartmann', 51, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (129, 'Caren', 'Shobbrook', 14, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (130, 'Kendre', 'Lacase', 58, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (131, 'Johnathan', 'Scraney', 8, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (132, 'Katharyn', 'Iianon', 35, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (133, 'Yves', 'Gillespie', 50, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (134, 'Mason', 'Nucciotti', 15, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (135, 'Rozalin', 'Warboys', 8, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (136, 'Carolin', 'Norton', 56, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (137, 'Cornall', 'Allcroft', 47, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (138, 'Dom', 'Goodredge', 52, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (139, 'Alvie', 'Huntriss', 37, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (140, 'Trumaine', 'Brumwell', 29, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (141, 'Harlen', 'Dossit', 58, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (142, 'Ikey', 'Senior', 22, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (143, 'Lib', 'Buessen', 47, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (144, 'Rockie', 'Prendergast', 20, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (145, 'Omero', 'Schmidt', 20, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (146, 'Raphael', 'Whimper', 56, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (147, 'Brianna', 'Warke', 58, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (148, 'Bank', 'Bennallck', 50, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (149, 'Jordon', 'Gyurko', 51, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (150, 'Margo', 'Kersaw', 57, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (151, 'Anna-maria', 'Nolder', 52, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (152, 'Calvin', 'Tregien', 41, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (153, 'Hobart', 'McIlreavy', 24, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (154, 'Mariejeanne', 'Montrose', 45, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (155, 'Miner', 'McEllen', 16, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (156, 'Godard', 'Turnpenny', 33, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (157, 'Iseabal', 'Faier', 40, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (158, 'Concordia', 'Liversidge', 30, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (159, 'Donetta', 'Benian', 56, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (160, 'Jeremy', 'Headland', 14, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (161, 'Mirna', 'Banville', 63, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (162, 'Dilly', 'Abreheart', 62, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (163, 'Glenine', 'Neads', 3, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (164, 'Keenan', 'Pay', 11, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (165, 'Marge', 'Hanratty', 33, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (166, 'Gerty', 'Dumpleton', 21, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (167, 'Pavlov', 'Goodbar', 43, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (168, 'Nelli', 'Congram', 14, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (169, 'Tresa', 'Gillespey', 59, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (170, 'Emelen', 'Linbohm', 34, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (171, 'Alanson', 'Bodocs', 9, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (172, 'Jackie', 'Havoc', 46, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (173, 'Ephrem', 'Van Hove', 52, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (174, 'Brenda', 'Rakestraw', 6, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (175, 'Alex', 'Scroggs', 21, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (176, 'Elyse', 'Eglington', 13, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (177, 'Wendy', 'Reach', 9, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (178, 'Deina', 'Haisell', 46, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (179, 'Morgen', 'Hubbis', 9, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (180, 'Gaye', 'Danilevich', 8, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (181, 'Jone', 'Sarre', 35, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (182, 'Kristan', 'Andreucci', 18, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (183, 'Kimbra', 'Ochterlony', 9, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (184, 'Say', 'Crowcombe', 45, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (185, 'Brent', 'Forri', 61, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (186, 'Ricky', 'Elphinstone', 53, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (187, 'Ravi', 'Iacopetti', 15, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (188, 'Son', 'Bartaletti', 24, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (189, 'Merline', 'Brind', 16, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (190, 'Rab', 'D''Elia', 27, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (191, 'Christel', 'Wane', 12, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (192, 'Agnella', 'O''Caherny', 5, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (193, 'Kevon', 'Gibbett', 9, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (194, 'Tory', 'Beavington', 16, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (195, 'Kelci', 'Stiell', 46, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (196, 'Carlen', 'Craik', 14, 1);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (197, 'Vidovic', 'Gratland', 45, 4);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (198, 'Adina', 'Cundict', 54, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (199, 'Jesse', 'Esgate', 35, 3);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (200, 'Kristofer', 'Dalgety', 16, 2);
    




insert into Teams (teamId, teamName, clubName, manager) values (1, 'Cat, native', 'Moldova State University of Medicine and Pharmacy "N. Testemitsanu"', 'Town Kubasiewicz');
insert into Teams (teamId, teamName, clubName, manager) values (2, 'Hottentot teal', 'Sanaag University of Science and Technology', 'Charleen Gobel');
insert into Teams (teamId, teamName, clubName, manager) values (3, 'Pheasant, common', 'Academy of International Economic and Political Relations, Gdynia', 'Barnabas Lembrick');
insert into Teams (teamId, teamName, clubName, manager) values (4, 'Rhea, greater', 'Fachhochschule Koblenz', 'Nolana Snalham');
insert into Teams (teamId, teamName, clubName, manager) values (5, 'Lapwing (unidentified)', 'Universidade Estadual do Oeste do Paraná', 'Livy Cullington');
insert into Teams (teamId, teamName, clubName, manager) values (6, 'Screamer, southern', 'Universidad Domingo Savio', 'Nert Tummond');
insert into Teams (teamId, teamName, clubName, manager) values (7, 'Potoroo', 'American University in Bulgaria', 'Annabal Rewan');
insert into Teams (teamId, teamName, clubName, manager) values (8, 'Superb starling', 'Brno University of Technology', 'Daryl Brundrett');
insert into Teams (teamId, teamName, clubName, manager) values (9, 'Turtle, snake-necked', 'Islamic Azad University, Hamedan', 'Jedediah MacDonagh');
insert into Teams (teamId, teamName, clubName, manager) values (10, 'Jackal, black-backed', 'Southwestern Christian College', 'Charyl Fawcus');
insert into Teams (teamId, teamName, clubName, manager) values (11, 'Glossy ibis', 'Northwest University Xi''an', 'Yulma Purnell');
insert into Teams (teamId, teamName, clubName, manager) values (12, 'Ringtail', 'MCI-Management Center Innsbruck', 'Florella Domenici');
insert into Teams (teamId, teamName, clubName, manager) values (13, 'Ringtail', 'St. John''s Seminary', 'Valentino Hayden');
insert into Teams (teamId, teamName, clubName, manager) values (14, 'Fox, arctic', 'Pontificia Università Lateranense', 'Edith MacGill');
insert into Teams (teamId, teamName, clubName, manager) values (15, 'Bontebok', 'Alcorn State University', 'Noreen Gaitone');
insert into Teams (teamId, teamName, clubName, manager) values (16, 'Black-tailed tree creeper', 'Mount Senario College', 'Lida Bodimeade');
insert into Teams (teamId, teamName, clubName, manager) values (17, 'King vulture', 'Chinese People''s Public Security University', 'Aubine Fronsek');
insert into Teams (teamId, teamName, clubName, manager) values (18, 'Large-eared bushbaby', 'McNeese State University', 'Nicolis Overshott');
insert into Teams (teamId, teamName, clubName, manager) values (19, 'Dragon, netted rock', 'China University of Mining Technology - Beijing', 'Lennie Dugget');
insert into Teams (teamId, teamName, clubName, manager) values (20, 'Bahama pintail', 'Kobe Women''s University', 'Shae Reddie');
insert into Teams (teamId, teamName, clubName, manager) values (21, 'Gerbil (unidentified)', 'Swansea Metropolitan University', 'Manfred Josilevich');
insert into Teams (teamId, teamName, clubName, manager) values (22, 'Raccoon, crab-eating', 'Institute for Advanced Studies Lucca', 'Chery Merricks');
insert into Teams (teamId, teamName, clubName, manager) values (23, 'Trumpeter, dark-winged', 'Kansas City Art Institute', 'Loydie Noraway');
insert into Teams (teamId, teamName, clubName, manager) values (24, 'Python (unidentified)', 'Bharath Institue Of Higher Education & Research', 'Bertina Vears');
insert into Teams (teamId, teamName, clubName, manager) values (25, 'Bandicoot, short-nosed', 'Sakushin Gakuin University', 'Kira Tolfrey');
insert into Teams (teamId, teamName, clubName, manager) values (26, 'Raven, cape', 'University of South Dakota', 'Arabelle Niaves');
insert into Teams (teamId, teamName, clubName, manager) values (27, 'Dragon, frilled', 'Universidad Latinoamericana de Ciencia y Tecnología', 'Janice Wickersley');
insert into Teams (teamId, teamName, clubName, manager) values (28, 'Egret, snowy', 'Auchi Polytechnic', 'Foss Tesh');
insert into Teams (teamId, teamName, clubName, manager) values (29, 'Black-throated cardinal', 'Universidad Nacional Agraria La Molina', 'Tilly Surr');
insert into Teams (teamId, teamName, clubName, manager) values (30, 'Southern black-backed gull', 'Karatina University', 'Alford Berkowitz');
insert into Teams (teamId, teamName, clubName, manager) values (31, 'Lechwe, kafue flats', 'Universidad Motolinía del Pedegral', 'Nye Mangenet');
insert into Teams (teamId, teamName, clubName, manager) values (32, 'Yellow-crowned night heron', 'National Open University', 'Clayson Janowicz');
insert into Teams (teamId, teamName, clubName, manager) values (33, 'Red kangaroo', 'Nagoya Gakuin University', 'Kent McKernon');
insert into Teams (teamId, teamName, clubName, manager) values (34, 'Heron, boat-billed', 'The Naropa Institute', 'Catha Woodage');
insert into Teams (teamId, teamName, clubName, manager) values (35, 'Macaque, japanese', 'Brexgata University Academy', 'Patience Capini');
insert into Teams (teamId, teamName, clubName, manager) values (36, 'Egyptian vulture', 'Northeastern State University', 'Mallory Radleigh');
insert into Teams (teamId, teamName, clubName, manager) values (37, 'Oryx, beisa', 'St. Matthews University', 'Renault Arpe');
insert into Teams (teamId, teamName, clubName, manager) values (38, 'Silver-backed jackal', 'Université de Valenciennes et du Hainaut-Cambrésis', 'Debby Itzkovitch');
insert into Teams (teamId, teamName, clubName, manager) values (39, 'Square-lipped rhinoceros', 'Fayetteville State University', 'Rosemary Balbeck');
insert into Teams (teamId, teamName, clubName, manager) values (40, 'Possum, western pygmy', 'Orissa University of Agriculture and Technology', 'Tamarah Keford');
insert into Teams (teamId, teamName, clubName, manager) values (41, 'Cook''s tree boa', 'Xi''an University of Architecture and Technology', 'Emylee Sibborn');
insert into Teams (teamId, teamName, clubName, manager) values (42, 'Secretary bird', 'Institue of Historical Research, University of London', 'Connie Oxshott');
insert into Teams (teamId, teamName, clubName, manager) values (43, 'Stork, greater adjutant', 'Ecole Normale Supérieure de Fontenay-Saint Cloud', 'Edward Pittway');
insert into Teams (teamId, teamName, clubName, manager) values (44, 'Striated heron', 'International Burch University', 'Gerri Fairbairn');
insert into Teams (teamId, teamName, clubName, manager) values (45, 'Cat, jungle', 'Universidad Autónoma de Guadalajara', 'Anna-diane Padden');
insert into Teams (teamId, teamName, clubName, manager) values (46, 'Blue and yellow macaw', 'Anglo-American University', 'Dode Tweedell');
insert into Teams (teamId, teamName, clubName, manager) values (47, 'Wallaby, agile', 'Université de Dschang', 'Madison Bowton');
insert into Teams (teamId, teamName, clubName, manager) values (48, 'Kinkajou', 'Toyama University', 'Nikki Joontjes');
insert into Teams (teamId, teamName, clubName, manager) values (49, 'Jungle kangaroo', 'Mondragon Univertsitatea', 'Nadiya Trunby');
insert into Teams (teamId, teamName, clubName, manager) values (50, 'Snake, carpet', 'Omsk State Technical University', 'Tonye Scawn');
insert into Teams (teamId, teamName, clubName, manager) values (51, 'Sportive lemur', 'Universidad San Martin de Porres', 'Konstance Penke');
insert into Teams (teamId, teamName, clubName, manager) values (52, 'Grey phalarope', 'St. Mary''s College Indiana', 'Forster Gavrieli');
insert into Teams (teamId, teamName, clubName, manager) values (53, 'Common goldeneye', 'Institute for the Economy in Transition', 'Ethe Junifer');
insert into Teams (teamId, teamName, clubName, manager) values (54, 'Bat, asian false vampire', 'Jahrom University of Medical Sciences', 'Nicholas Rudsdell');
insert into Teams (teamId, teamName, clubName, manager) values (55, 'Giraffe', 'Mount Royal College', 'Nessa Boni');
insert into Teams (teamId, teamName, clubName, manager) values (56, 'Galapagos albatross', 'American Indian College', 'Neda Christiensen');
insert into Teams (teamId, teamName, clubName, manager) values (57, 'Baboon, gelada', 'Brescia College', 'Merle Daggett');
insert into Teams (teamId, teamName, clubName, manager) values (58, 'Coot, red-knobbed', 'Mamasani University of Technology', 'Wolfy Haugg');
insert into Teams (teamId, teamName, clubName, manager) values (59, 'Gecko, barking', 'Belarussian State Medical University', 'Marnie Roussell');
insert into Teams (teamId, teamName, clubName, manager) values (60, 'Sea birds (unidentified)', 'De La Salle University', 'Cinderella Cannicott');
insert into Teams (teamId, teamName, clubName, manager) values (61, 'Swallow-tail gull', 'George Wythe College', 'Alford Avieson');
insert into Teams (teamId, teamName, clubName, manager) values (62, 'Ring-necked pheasant', 'Azerbaijan State Economic University', 'Urbanus Pittwood');
insert into Teams (teamId, teamName, clubName, manager) values (63, 'Red deer', 'Nagasaki Prefectural University', 'Annalise Bentall');
insert into Teams (teamId, teamName, clubName, manager) values (64, 'Ferruginous hawk', 'Universidad del Valle del Cauca', 'Phelia Gurnee');
insert into Teams (teamId, teamName, clubName, manager) values (65, 'Common turkey', 'Taif University', 'Damiano Bernade');
insert into Teams (teamId, teamName, clubName, manager) values (66, 'Fork-tailed drongo', 'National Aviation Univesity', 'Thaddus Skull');
insert into Teams (teamId, teamName, clubName, manager) values (67, 'Hottentot teal', 'Chongqing Normal University Foreign Trade and Business College', 'Merv Hillhouse');
insert into Teams (teamId, teamName, clubName, manager) values (68, 'Crab (unidentified)', 'City University of New York, Hunter College', 'Minette Sealove');
insert into Teams (teamId, teamName, clubName, manager) values (69, 'Yellow-bellied marmot', 'Universidad Nacional Hermilio Valdizan', 'Gearard Cammock');
insert into Teams (teamId, teamName, clubName, manager) values (70, 'Cape Barren goose', 'Odessa State Academy of Construction and Architecture', 'Lazarus Knapper');
insert into Teams (teamId, teamName, clubName, manager) values (71, 'Kalahari scrub robin', 'Concordia University, Mequon', 'Dreddy Martugin');
insert into Teams (teamId, teamName, clubName, manager) values (72, 'Grenadier, common', 'Universidad Católica Boliviana, La Paz', 'Ermanno Murty');
insert into Teams (teamId, teamName, clubName, manager) values (73, 'Weaver, sociable', 'Technological University (Hmawbi)', 'Wenda Seath');
insert into Teams (teamId, teamName, clubName, manager) values (74, 'Long-billed cockatoo', 'Sebha University', 'Myrlene Clears');
insert into Teams (teamId, teamName, clubName, manager) values (75, 'Common duiker', 'Dominica State College', 'Alysia Christene');
insert into Teams (teamId, teamName, clubName, manager) values (76, 'Glossy starling (unidentified)', 'Stockholm School of Economics in Riga', 'Camey Dillinger');
insert into Teams (teamId, teamName, clubName, manager) values (77, 'Yak', 'Central Buganda University', 'Benedikt Lawlee');
insert into Teams (teamId, teamName, clubName, manager) values (78, 'Western palm tanager (unidentified)', 'Emeishan Buddhist College', 'Ferdie Sockell');
insert into Teams (teamId, teamName, clubName, manager) values (79, 'Gemsbok', 'State University of New York College at Fredonia', 'Fidelity Camplen');
insert into Teams (teamId, teamName, clubName, manager) values (80, 'Squirrel, eastern fox', 'Xijiang University', 'Celinka Klimontovich');
insert into Teams (teamId, teamName, clubName, manager) values (81, 'Bird, pied butcher', 'Northern Sichuan Medical College', 'Cristal Leinweber');
insert into Teams (teamId, teamName, clubName, manager) values (82, 'Flicker, campo', 'Darul Ulum Islamic College', 'Terrijo Raiker');
insert into Teams (teamId, teamName, clubName, manager) values (83, 'Flightless cormorant', 'Business School Lausanne (BSL)', 'Barbara Janacek');
insert into Teams (teamId, teamName, clubName, manager) values (84, 'Indian red admiral', 'Kazakhstan Institute of Management, Economics, and Strategic Research', 'Ethelind Gaudin');
insert into Teams (teamId, teamName, clubName, manager) values (85, 'Cat, kaffir', 'Institute of Teachers Education, Islamic Education', 'Colly Dreini');
insert into Teams (teamId, teamName, clubName, manager) values (86, 'Burrowing owl', 'Makerere University', 'Marna McKeurtan');
insert into Teams (teamId, teamName, clubName, manager) values (87, 'Falcon, peregrine', 'Al Ghurair University', 'Ethelda Blakemore');
insert into Teams (teamId, teamName, clubName, manager) values (88, 'Grey lourie', 'Jawaharlal Nehru Centre for Advanced  Scientific Research', 'Joela Stebles');
insert into Teams (teamId, teamName, clubName, manager) values (89, 'Mudskipper (unidentified)', 'Moscow State Textile University A.N. Kosygin', 'Maurita Kristoffersson');
insert into Teams (teamId, teamName, clubName, manager) values (90, 'Black-tailed prairie dog', 'Universidad Central', 'Garrard Semrad');
insert into Teams (teamId, teamName, clubName, manager) values (91, 'Yellow-bellied marmot', 'Manhattan Christian College', 'Leese Fackrell');
insert into Teams (teamId, teamName, clubName, manager) values (92, 'Indian red admiral', 'Syktyvkar State University', 'Red Leteurtre');
insert into Teams (teamId, teamName, clubName, manager) values (93, 'Cockatoo, red-breasted', 'Sri Sathya Sai Institute of Higher Learning', 'Myranda Manssuer');
insert into Teams (teamId, teamName, clubName, manager) values (94, 'Kalahari scrub robin', 'Universidad Autónoma del Paraguay', 'Eduino McSperrin');
insert into Teams (teamId, teamName, clubName, manager) values (95, 'Eastern fox squirrel', 'Aichi Prefectural University of Fine Arts & Music', 'Marice Boss');
insert into Teams (teamId, teamName, clubName, manager) values (96, 'Iguana, common green', 'Salem State College', 'Bink Lightbourne');
insert into Teams (teamId, teamName, clubName, manager) values (97, 'Ring-tailed possum', 'Baze University Abuja', 'Letti Allitt');
insert into Teams (teamId, teamName, clubName, manager) values (98, 'Spur-winged goose', 'Jinan University', 'Honey Carrick');
insert into Teams (teamId, teamName, clubName, manager) values (99, 'Red and blue macaw', 'University of Sindh', 'Roxine Lavens');
insert into Teams (teamId, teamName, clubName, manager) values (100, 'Glider, squirrel', 'University Of Medical Sciences & Technology (UMST)', 'Bil Enevoldsen');

insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (1, 5, 4, '12/04/2021', 'Lizard, collared');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (2, 4, 5, '08/13/2022', 'Sea birds (unidentified)');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (3, 1, 9, '02/08/2022', 'Rabbit, eastern cottontail');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (4, 4, 7, '06/27/2022', 'Swamp deer');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (5, 3, 1, '07/05/2022', 'Pigeon, feral rock');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (6, 3, 8, '03/31/2022', 'Yellow-rumped siskin');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (7, 2, 9, '10/16/2022', 'Clark''s nutcracker');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (8, 3, 2, '04/03/2022', 'Frilled lizard');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (9, 3, 1, '03/20/2022', 'Siskin, yellow-rumped');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (10, 5, 4, '03/02/2022', 'European beaver');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (11, 3, 5, '09/15/2022', 'Western lowland gorilla');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (12, 2, 8, '03/01/2022', 'Black swan');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (13, 4, 9, '08/15/2022', 'Pie, indian tree');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (14, 4, 3, '11/12/2021', 'Gray heron');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (15, 1, 2, '08/04/2022', 'Crane, sarus');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (16, 4, 7, '09/22/2022', 'Blackbuck');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (17, 1, 8, '07/21/2022', 'Ocelot');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (18, 3, 6, '05/20/2022', 'Fox, bat-eared');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (19, 5, 2, '11/19/2021', 'Red howler monkey');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (20, 5, 6, '02/21/2022', 'Roan antelope');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (21, 3, 9, '05/12/2022', 'Moorhen, purple');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (22, 5, 3, '08/13/2022', 'Red-billed buffalo weaver');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (23, 1, 7, '01/12/2022', 'Sambar');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (24, 3, 7, '12/07/2021', 'Emerald-spotted wood dove');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (25, 4, 1, '01/19/2022', 'Snowy sheathbill');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (26, 1, 5, '01/05/2022', 'Southern white-crowned shrike');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (27, 4, 10, '02/18/2022', 'Magpie, australian');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (28, 2, 7, '06/03/2022', 'Common dolphin');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (29, 5, 1, '01/29/2022', 'Emerald-spotted wood dove');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (30, 3, 8, '10/21/2022', 'Golden eagle');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (31, 5, 4, '12/27/2021', 'Crowned eagle');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (32, 5, 6, '12/17/2021', 'White-rumped vulture');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (33, 3, 8, '05/23/2022', 'Marshbird, brown and yellow');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (34, 4, 5, '07/04/2022', 'Yak');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (35, 1, 5, '12/18/2021', 'Southern hairy-nosed wombat');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (36, 2, 2, '12/01/2021', 'Trumpeter swan');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (37, 2, 4, '07/20/2022', 'Rattlesnake, horned');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (38, 1, 8, '12/10/2021', 'Kangaroo, western grey');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (39, 2, 4, '06/05/2022', 'Kori bustard');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (40, 1, 9, '08/11/2022', 'Wolf, mexican');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (41, 4, 4, '09/04/2022', 'Downy woodpecker');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (42, 5, 8, '04/16/2022', 'Chacma baboon');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (43, 2, 8, '01/22/2022', 'Brush-tailed rat kangaroo');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (44, 5, 4, '03/16/2022', 'Long-necked turtle');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (45, 1, 4, '05/28/2022', 'Arboral spiny rat');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (46, 3, 9, '11/14/2021', 'Mourning collared dove');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (47, 5, 2, '05/09/2022', 'Mountain duck');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (48, 1, 9, '03/18/2022', 'Black-backed magpie');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (49, 3, 5, '12/10/2021', 'Raven, white-necked');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (50, 5, 4, '11/23/2021', 'Lemur, sportive');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (51, 2, 5, '06/19/2022', 'Lesser double-collared sunbird');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (52, 4, 3, '09/15/2022', 'Spoonbill, european');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (53, 2, 4, '08/16/2022', 'Native cat');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (54, 4, 5, '08/20/2022', 'Savanna fox');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (55, 2, 7, '03/31/2022', 'Finch, common melba');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (56, 4, 9, '08/31/2022', 'Hartebeest, red');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (57, 2, 6, '12/31/2021', 'White-throated kingfisher');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (58, 4, 7, '12/01/2021', 'Yellow-crowned night heron');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (59, 5, 4, '07/02/2022', 'Gazelle, grant''s');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (60, 5, 9, '11/16/2021', 'Crane, stanley');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (61, 3, 10, '12/20/2021', 'Roseat flamingo');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (62, 2, 5, '12/22/2021', 'Racer, american');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (63, 3, 4, '07/25/2022', 'Hanuman langur');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (64, 1, 7, '05/06/2022', 'Eland, common');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (65, 3, 2, '01/05/2022', 'Yellow-necked spurfowl');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (66, 2, 5, '05/21/2022', 'Dove, laughing');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (67, 2, 3, '08/14/2022', 'Phascogale, brush-tailed');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (68, 1, 1, '08/18/2022', 'Bee-eater, nubian');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (69, 3, 6, '09/21/2022', 'Spoonbill, european');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (70, 3, 9, '04/24/2022', 'Pine siskin');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (71, 1, 5, '12/27/2021', 'Violet-crested turaco');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (72, 2, 2, '09/21/2022', 'Tropical buckeye butterfly');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (73, 4, 5, '08/18/2022', 'White-necked raven');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (74, 3, 3, '07/23/2022', 'Squirrel, antelope ground');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (75, 5, 8, '02/16/2022', 'Tawny frogmouth');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (76, 4, 8, '07/01/2022', 'Eagle, long-crested hawk');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (77, 1, 9, '07/09/2022', 'South American meadowlark (unidentified)');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (78, 2, 7, '10/12/2022', 'Painted stork');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (79, 4, 2, '06/28/2022', 'Mourning collared dove');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (80, 4, 5, '02/10/2022', 'Klipspringer');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (81, 1, 1, '06/28/2022', 'Rhesus monkey');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (82, 4, 3, '10/02/2022', 'Golden eagle');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (83, 2, 9, '11/20/2021', 'Booby, blue-footed');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (84, 3, 6, '09/19/2022', 'Eastern fox squirrel');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (85, 1, 1, '10/10/2022', 'Miner''s cat');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (86, 3, 9, '10/05/2022', 'Australian sea lion');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (87, 4, 9, '11/01/2021', 'Hanuman langur');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (88, 5, 6, '07/11/2022', 'Capuchin, white-fronted');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (89, 2, 1, '07/14/2022', 'Vulture, black');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (90, 3, 6, '11/20/2021', 'Macaque, japanese');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (91, 5, 5, '11/08/2021', 'Timber wolf');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (92, 5, 6, '12/19/2021', 'Mouse, four-striped grass');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (93, 5, 3, '04/11/2022', 'Rhea, common');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (94, 4, 10, '01/11/2022', 'Greater flamingo');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (95, 1, 5, '06/29/2022', 'Ostrich');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (96, 3, 9, '01/03/2022', 'Four-spotted skimmer');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (97, 1, 9, '10/01/2022', 'Squirrel, palm');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (98, 3, 3, '12/26/2021', 'Eagle, long-crested hawk');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (99, 2, 1, '11/30/2021', 'Duck, white-faced whistling');
insert into Games (gameId, gameLevel, fieldID, gameDate, playingTeams) values (100, 5, 8, '12/29/2021', 'Dolphin, striped');

insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (1, 'Assigned', 187, 32, '05/20/2022', 'Copperbelt University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (2, 'Accepted', 195, 77, '03/06/2022', 'Hakodate University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (3, 'Unassigned', 117, 206, '07/01/2022', 'Takhar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (4, 'Assigned', 188, 175, '05/30/2022', 'Diyala University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (5, 'Assigned', 49, 166, '10/12/2022', 'East-West University, Mohakhali');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (6, 'Unassigned', 114, 297, '11/11/2021', 'Community College of Denver');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (7, 'Tentative', 115, 139, '12/28/2021', 'Universidad de San Carlos de Guatemala');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (8, 'Assigned', 142, 257, '09/30/2022', 'University of Switzerland');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (9, 'Accepted', 31, 159, '11/08/2021', 'Michigan School of Professional Psychology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (10, 'Unassigned', 12, 459, '02/24/2022', 'Ballsbridge University ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (11, 'Accepted', 154, 408, '07/25/2022', 'Tomsk State University of Control Systems and Radioelectronics');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (12, 'Assigned', 132, 90, '01/18/2022', 'Inner Mongolia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (13, 'Assigned', 124, 120, '09/29/2022', 'Hogeschool voor Wetenschap & Kunst');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (14, 'Assigned', 87, 96, '04/11/2022', 'Universidad Veritas');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (15, 'Tentative', 74, 319, '02/07/2022', 'Bakht Er-Ruda University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (16, 'Unassigned', 92, 369, '01/29/2022', 'Wright State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (17, 'Accepted', 124, 133, '05/17/2022', 'Russian Customs Academy, Vladivostok Branch');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (18, 'Unassigned', 89, 488, '09/09/2022', 'Beijing Information Science and Technology University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (19, 'Tentative', 33, 138, '05/07/2022', 'Ufuk University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (20, 'Accepted', 44, 19, '10/09/2022', 'Ozyegin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (21, 'Assigned', 39, 19, '02/16/2022', 'Khalifa University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (22, 'Accepted', 14, 132, '01/24/2022', 'University of Massachusetts (System)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (23, 'Tentative', 22, 339, '10/04/2022', 'Slovak Medical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (24, 'Assigned', 195, 148, '07/04/2022', 'Dokuz Eylül University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (25, 'Assigned', 189, 101, '04/26/2022', 'Moscow State University of Forestry Engineering');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (26, 'Accepted', 186, 80, '07/05/2022', 'Kyonggi University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (27, 'Tentative', 167, 42, '03/08/2022', 'Himeji Dokkyo University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (28, 'Assigned', 79, 435, '06/09/2022', 'University of Ruhuna');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (29, 'Accepted', 112, 451, '02/27/2022', 'Sami Shamoon College of Engineering');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (30, 'Accepted', 23, 443, '08/27/2022', 'Technische Universität Hamburg-Harburg');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (31, 'Tentative', 69, 132, '01/16/2022', 'Kar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (32, 'Assigned', 130, 1, '06/07/2022', 'Islamic Azad University, Tehran Science & Research Branch');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (33, 'Accepted', 147, 96, '11/25/2021', 'Novosibirsk State Music Academy M. Glinka');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (34, 'Assigned', 61, 311, '04/25/2022', 'Virginia International University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (35, 'Unassigned', 102, 63, '06/26/2022', 'Academy of Economic Studies of Moldova');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (36, 'Unassigned', 121, 257, '06/09/2022', 'Gediz University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (37, 'Unassigned', 182, 303, '10/19/2022', 'Rasmussen College, Illinois Campuses');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (38, 'Assigned', 130, 24, '03/11/2022', 'University of Wisconsin - Oshkosh');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (39, 'Unassigned', 128, 217, '02/26/2022', 'Georgia Southwestern University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (40, 'Unassigned', 96, 445, '03/20/2022', 'Dong-A University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (41, 'Tentative', 105, 82, '04/06/2022', 'Latvian Maritime Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (42, 'Unassigned', 82, 427, '08/06/2022', 'Fachhochschule Stuttgart, Hochschule der Medien');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (43, 'Tentative', 70, 197, '02/12/2022', 'St. Petersburg Institute of Sales Management and Economics');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (44, 'Assigned', 126, 457, '02/02/2022', 'National Yunlin University of Science and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (45, 'Tentative', 44, 495, '12/31/2021', 'University of the Gambia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (46, 'Assigned', 52, 353, '06/22/2022', 'Ecole Centrale de Lille');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (47, 'Accepted', 48, 113, '10/08/2022', 'Sage Graduate School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (48, 'Assigned', 159, 443, '11/14/2021', 'Universidad Nacional de Tres de Febrero');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (49, 'Unassigned', 31, 176, '09/04/2022', 'University of Mauritius');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (50, 'Tentative', 111, 403, '07/05/2022', 'St. Petersburg Repin State Academic Institute of Painting Sculpture and Achitecture');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (51, 'Assigned', 86, 373, '04/30/2022', 'Beijing University of Science and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (52, 'Unassigned', 78, 232, '01/12/2022', 'Kaluga State Pedagogical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (53, 'Assigned', 186, 337, '07/24/2022', 'University of Economics in Bratislava');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (54, 'Tentative', 20, 188, '07/06/2022', 'Seoul National University of Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (55, 'Unassigned', 168, 484, '04/10/2022', 'University of Massachusetts at Amherst');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (56, 'Accepted', 101, 21, '10/15/2022', 'University of Media Arts');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (57, 'Tentative', 13, 486, '09/19/2022', 'Shenkar School of Engineering & Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (58, 'Accepted', 158, 152, '01/10/2022', 'Universidade de Ribeirão Preto');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (59, 'Accepted', 189, 352, '10/05/2022', 'Universidad de Valparaiso');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (60, 'Assigned', 177, 3, '03/20/2022', 'Gifu Shotoku Gakuen University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (61, 'Tentative', 13, 318, '02/24/2022', 'Universitas Negeri Padang');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (62, 'Unassigned', 188, 22, '05/08/2022', 'Khazar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (63, 'Tentative', 84, 311, '03/07/2022', 'Shih Hsin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (64, 'Unassigned', 29, 300, '07/23/2022', 'University of Liverpool');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (65, 'Assigned', 50, 418, '01/25/2022', 'Academy of Art College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (66, 'Tentative', 2, 77, '10/12/2022', 'Bastyr University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (67, 'Tentative', 42, 363, '11/22/2021', 'Assosa University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (68, 'Assigned', 35, 116, '11/04/2021', 'Arab Open University, Kuwait Branch');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (69, 'Tentative', 45, 233, '12/19/2021', 'Colorado Christian University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (70, 'Unassigned', 6, 314, '02/13/2022', 'Universidad del Cine - Buenos Aires');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (71, 'Assigned', 104, 332, '12/04/2021', 'Universidad Tecnologica Israel');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (72, 'Unassigned', 126, 271, '06/03/2022', 'Tsukuba University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (73, 'Unassigned', 54, 255, '10/01/2022', 'Bilecik University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (74, 'Accepted', 57, 463, '12/22/2021', 'Banking University of Ho Chi Minh City');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (75, 'Accepted', 148, 62, '07/10/2022', 'University of Silvaner');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (76, 'Tentative', 184, 141, '11/10/2021', 'Universidade Vale do Rio dos Sinos');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (77, 'Tentative', 109, 276, '07/28/2022', 'Arab American University - Jenin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (78, 'Unassigned', 148, 354, '02/23/2022', 'Georgetown University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (79, 'Unassigned', 70, 345, '07/16/2022', 'University of Iceland');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (80, 'Unassigned', 135, 282, '05/24/2022', 'Nippon Medical School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (81, 'Accepted', 83, 475, '02/28/2022', 'Medical Academy Karol Marcinkowski in Poznan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (82, 'Unassigned', 84, 407, '03/30/2022', 'Standford Online University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (83, 'Assigned', 67, 136, '11/15/2021', 'Ecole Nationale Supérieur des Ingénieur des Etudes et Techniques d''Armement');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (84, 'Unassigned', 197, 268, '11/26/2021', 'Universidad Pedagógica Veracruzana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (85, 'Assigned', 178, 321, '10/26/2022', 'American Jewish University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (86, 'Tentative', 91, 203, '03/16/2022', 'Murdoch University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (87, 'Tentative', 192, 481, '11/23/2021', 'Ecole Supérieure de Physique et de Chimie Industrielles');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (88, 'Accepted', 21, 93, '10/06/2022', 'La Roche College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (89, 'Unassigned', 26, 465, '04/18/2022', 'Hamilton Technical College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (90, 'Assigned', 101, 402, '08/05/2022', 'Loras College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (91, 'Accepted', 120, 358, '12/25/2021', 'Technological University (Pinlon)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (92, 'Assigned', 16, 72, '05/15/2022', 'Universidad del Valle del Cauca');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (93, 'Tentative', 68, 254, '01/27/2022', 'Shanghai Second Medical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (94, 'Assigned', 159, 289, '05/02/2022', 'Universidad de Oriente');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (95, 'Assigned', 41, 275, '03/14/2022', 'Lalit Narayan Mithila University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (96, 'Unassigned', 161, 110, '01/09/2022', 'Georg-August Universität Göttingen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (97, 'Unassigned', 87, 386, '03/12/2022', 'University of Turin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (98, 'Assigned', 105, 451, '05/31/2022', 'Kyrgyz State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (99, 'Assigned', 37, 213, '12/05/2021', 'Kermanshah University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (100, 'Tentative', 182, 434, '10/01/2022', 'University of Aberdeen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (101, 'Accepted', 183, 129, '06/08/2022', 'Ghulam Ishaq Khan Institute of Science & Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (102, 'Accepted', 120, 16, '03/02/2022', 'Mississippi Valley State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (103, 'Unassigned', 180, 483, '01/30/2022', 'Anhui University of Traditional Chinese Medicine');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (104, 'Accepted', 66, 176, '03/04/2022', 'Université Sorbonne-Nouvelle (Paris III)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (105, 'Assigned', 158, 194, '10/26/2022', 'Moscow State Technical University of Civil Aviation');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (106, 'Accepted', 131, 6, '11/26/2021', 'Hotelschool The Hague');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (107, 'Tentative', 177, 227, '07/10/2022', 'St. Louis University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (108, 'Accepted', 1, 262, '08/13/2022', 'University of Science and Culture');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (109, 'Unassigned', 65, 63, '04/19/2022', 'Embry Riddle Aeronautical University, Prescott');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (110, 'Assigned', 144, 464, '07/22/2022', 'Osaka University of Foreign Studies');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (111, 'Unassigned', 6, 217, '10/09/2022', 'Xi''an Highway University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (112, 'Assigned', 26, 328, '10/14/2022', 'University Vitez In Travnik');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (113, 'Assigned', 182, 343, '01/08/2022', 'St. Paul''s College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (114, 'Accepted', 109, 24, '07/23/2022', 'Governors State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (115, 'Unassigned', 25, 359, '09/13/2022', 'St. Petersburg College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (116, 'Accepted', 116, 187, '04/08/2022', 'Université Dr Tahar Moulay');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (117, 'Accepted', 183, 432, '02/13/2022', 'Tikrit University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (118, 'Tentative', 135, 424, '08/24/2022', 'Ho Chi Minh City University of Transport');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (119, 'Tentative', 25, 132, '05/08/2022', 'Damghan University of Basic Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (120, 'Unassigned', 68, 483, '10/05/2022', 'Franklin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (121, 'Tentative', 87, 432, '12/22/2021', 'Kwara State University ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (122, 'Accepted', 171, 377, '10/06/2022', 'Ecole Nationale d''Ingénieurs de Metz');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (123, 'Accepted', 77, 416, '12/25/2021', 'Azusa Pacific University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (124, 'Accepted', 149, 172, '02/25/2022', 'Memphis College of Art');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (125, 'Accepted', 155, 69, '12/07/2021', 'Suzuka International University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (126, 'Tentative', 170, 178, '08/09/2022', 'Warner Southern College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (127, 'Unassigned', 50, 66, '03/18/2022', 'Humphreys College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (128, 'Assigned', 198, 212, '09/11/2022', 'Rogers State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (129, 'Tentative', 131, 30, '02/05/2022', 'Universidad de Granma');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (130, 'Tentative', 110, 363, '06/10/2022', 'Mohan Lal Sukhadia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (131, 'Accepted', 3, 107, '08/01/2022', 'Southwestern University School of Law');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (132, 'Unassigned', 38, 8, '06/25/2022', 'Universidad Adventista de Colombia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (133, 'Accepted', 72, 369, '03/12/2022', 'University of Tennessee - Chattanooga');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (134, 'Accepted', 122, 350, '02/04/2022', 'Université Blaise Pascal (Clermont-Ferrand II)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (135, 'Accepted', 47, 232, '10/01/2022', 'Tusculum College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (136, 'Unassigned', 120, 427, '12/09/2021', 'Moscow External University of the Humanities');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (137, 'Assigned', 19, 325, '11/04/2021', 'University College of Trollhättan/Uddevalla');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (138, 'Accepted', 25, 476, '08/07/2022', 'Universidad de Zaragoza');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (139, 'Unassigned', 156, 3, '01/01/2022', 'Celal Bayar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (140, 'Assigned', 86, 236, '10/16/2022', 'University of Agriculture and Veterinary Medicine Iasi');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (141, 'Accepted', 44, 436, '02/18/2022', 'Hellenic Open University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (142, 'Tentative', 116, 219, '04/06/2022', 'Universidad Central de Nicaragua');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (143, 'Tentative', 5, 290, '11/16/2021', 'Shokei College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (144, 'Assigned', 197, 54, '03/14/2022', 'Faculdades Integradas Curitiba');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (145, 'Unassigned', 151, 157, '04/02/2022', 'University of Belize');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (146, 'Assigned', 130, 166, '07/17/2022', 'University for Peace');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (147, 'Assigned', 18, 228, '12/26/2021', 'Universität Stuttgart');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (148, 'Accepted', 92, 492, '12/10/2021', 'International University College of Nursing (IUCN)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (149, 'Assigned', 66, 138, '10/18/2022', 'Universidade Federal do Maranhão');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (150, 'Unassigned', 81, 18, '07/19/2022', 'Universitat Rámon Llull');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (151, 'Assigned', 52, 208, '02/15/2022', 'Newcastle University, Medicine Malaysia ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (152, 'Accepted', 40, 279, '03/12/2022', 'Rhode Island School of Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (153, 'Assigned', 196, 429, '01/19/2022', 'Tyumen State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (154, 'Unassigned', 36, 70, '02/17/2022', 'Oglethorpe University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (155, 'Unassigned', 197, 68, '06/20/2022', 'Ozyegin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (156, 'Unassigned', 172, 82, '11/30/2021', 'Musashi University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (157, 'Accepted', 135, 166, '12/31/2021', 'Macon State College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (158, 'Accepted', 188, 157, '01/30/2022', 'Ecole Supérieure des Sciences et Technologie de l''Ingénieur de Nancy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (159, 'Tentative', 38, 132, '07/29/2022', 'Washington and Lee University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (160, 'Assigned', 154, 434, '07/14/2022', 'Ecole Mohammadia d''Ingénieurs');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (161, 'Assigned', 177, 432, '10/25/2022', 'University of Dallas');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (162, 'Assigned', 186, 116, '03/20/2022', 'Manchester College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (163, 'Tentative', 29, 59, '04/27/2022', 'University of North Carolina at Charlotte');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (164, 'Unassigned', 92, 216, '03/06/2022', 'Abu Dhabi University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (165, 'Tentative', 124, 442, '02/20/2022', 'Ajayi Crowther University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (166, 'Accepted', 149, 6, '05/06/2022', 'International University of Fundamental Studies, St. Petersburg');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (167, 'Tentative', 91, 34, '11/11/2021', 'Sakhalin State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (168, 'Assigned', 137, 299, '07/20/2022', 'Asa University Bangladesh');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (169, 'Unassigned', 10, 317, '12/03/2021', 'Université Hassan Ier - Settat');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (170, 'Accepted', 106, 398, '04/08/2022', 'Kawamura Gakuen Woman''s University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (171, 'Tentative', 88, 202, '01/17/2022', 'University of Lethbridge');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (172, 'Accepted', 122, 407, '03/07/2022', 'Islamic Azad University, Roodehen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (173, 'Unassigned', 57, 9, '05/26/2022', 'Bahria University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (174, 'Tentative', 68, 290, '07/04/2022', 'Our Lady of Holy Cross College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (175, 'Unassigned', 110, 180, '10/21/2022', 'University of Groningen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (176, 'Accepted', 129, 103, '06/22/2022', 'Universitas Cenderawasih');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (177, 'Assigned', 198, 370, '02/17/2022', 'University of Northumbria at Newcastle');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (178, 'Tentative', 30, 242, '09/17/2022', 'University of Bedfordshire');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (179, 'Tentative', 105, 70, '11/02/2021', 'Politécnico de Guanajuato');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (180, 'Accepted', 166, 460, '11/17/2021', 'Jahangirnagar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (181, 'Assigned', 64, 367, '09/15/2022', 'Ecole Catholique d''Arts & Metiers');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (182, 'Accepted', 101, 394, '04/05/2022', 'Fahad Bin Sultan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (183, 'Assigned', 18, 102, '08/31/2022', 'Mae Fah Luang University ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (184, 'Assigned', 5, 140, '05/30/2022', 'Rheinisch Westfälische Technische Hochschule Aachen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (185, 'Accepted', 189, 136, '10/11/2022', 'University of Oklahoma');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (186, 'Accepted', 86, 157, '08/16/2022', 'Kumamoto Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (187, 'Tentative', 79, 141, '05/13/2022', 'Virginia Commonwealth University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (188, 'Assigned', 185, 478, '10/03/2022', 'Universidade Regional de Blumenau');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (189, 'Tentative', 155, 36, '03/29/2022', 'Universität Duisburg-Essen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (190, 'Assigned', 3, 253, '12/09/2021', 'Pittsburg State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (191, 'Accepted', 150, 116, '02/24/2022', 'Ecole Supérieure de Commerce de Lyon');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (192, 'Assigned', 88, 274, '03/19/2022', 'University of Illinois at Chicago');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (193, 'Assigned', 56, 112, '05/15/2022', 'Universidad Nacional Agraria La Selva');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (194, 'Unassigned', 87, 363, '03/02/2022', 'Soka University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (195, 'Assigned', 177, 109, '03/05/2022', 'Universidad Dominicana O&M');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (196, 'Unassigned', 37, 48, '12/09/2021', 'Georgia Southwestern University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (197, 'Unassigned', 106, 211, '11/10/2021', 'Sukhothai Thammathirat Open University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (198, 'Accepted', 81, 377, '12/25/2021', 'Universiti Tun Hussein Onn Malaysia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (199, 'Accepted', 143, 1, '09/26/2022', 'National Agricultural University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (200, 'Unassigned', 69, 226, '10/19/2022', 'Bowdoin College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (201, 'Tentative', 169, 371, '05/29/2022', 'Alfred Adler Graduate School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (202, 'Accepted', 45, 287, '01/10/2022', 'Algonquin College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (203, 'Accepted', 44, 84, '11/22/2021', 'Harris-Stowe State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (204, 'Unassigned', 43, 250, '01/22/2022', 'The College of St. Scholastica');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (205, 'Assigned', 74, 468, '08/11/2022', 'International Buddhist College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (206, 'Unassigned', 139, 321, '07/06/2022', 'Atatürk University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (207, 'Unassigned', 76, 380, '06/03/2022', 'Technical University of Radom');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (208, 'Tentative', 166, 341, '11/06/2021', 'Nagaoka University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (209, 'Accepted', 66, 309, '06/17/2022', 'Heythrop College, University of London');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (210, 'Tentative', 128, 69, '07/15/2022', 'University of the Philippines Baguio');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (211, 'Tentative', 46, 407, '02/05/2022', 'University of Texas Pan American');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (212, 'Assigned', 124, 257, '07/18/2022', 'University of East Asia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (213, 'Tentative', 37, 279, '07/16/2022', 'Beijing Medical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (214, 'Unassigned', 3, 55, '08/11/2022', 'The Emirates Academy of Hotel Managment');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (215, 'Tentative', 190, 109, '11/03/2021', 'Irkutsk State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (216, 'Accepted', 180, 152, '12/09/2021', 'Tyumen State University of Gas and Oil');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (217, 'Assigned', 191, 411, '04/27/2022', 'Singhania University Rajasthan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (218, 'Accepted', 42, 164, '04/12/2022', 'Milwaukee Institute of Art and Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (219, 'Accepted', 129, 289, '09/22/2022', 'Universidad Olmeca');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (220, 'Accepted', 26, 127, '10/05/2022', 'Kun Shan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (221, 'Unassigned', 120, 317, '09/04/2022', 'Universidad Nacional Experimental de los Llanos Occidentales "Ezequiel Zamora"');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (222, 'Assigned', 174, 233, '11/20/2021', 'Fukui University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (223, 'Tentative', 54, 401, '05/15/2022', 'Rakuno Gakuen University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (224, 'Assigned', 180, 354, '03/15/2022', 'National Pedagogical University M. Dragomanov ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (225, 'Accepted', 135, 467, '05/18/2022', 'Universidade Salvador');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (226, 'Unassigned', 92, 224, '08/27/2022', 'Rocky Mountain College of Art and Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (227, 'Tentative', 144, 3, '09/30/2022', 'Universitas Widya Gama Malang');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (228, 'Assigned', 128, 261, '06/28/2022', 'Universidade Lusófona de Humanidades e Technologias');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (229, 'Unassigned', 101, 132, '11/25/2021', 'Fachhochschule Hildesheim/Holzminden/Göttingen, Hochschule für angewandte Wissenschaft und Kunst');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (230, 'Tentative', 139, 497, '02/28/2022', 'Universidad Autónoma del Beni "José Ballivián"');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (231, 'Accepted', 11, 223, '08/20/2022', 'Samara State Agricultural Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (232, 'Assigned', 192, 427, '11/18/2021', 'City University of Hong Kong');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (233, 'Assigned', 145, 387, '11/07/2021', 'Bohai University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (234, 'Unassigned', 156, 479, '01/15/2022', 'The College of Insurance');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (235, 'Tentative', 124, 142, '01/07/2022', 'University of Sierra Leone');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (236, 'Assigned', 136, 148, '01/19/2022', 'St. Bernard''s Institute');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (237, 'Unassigned', 165, 262, '08/11/2022', 'Fachhochschule Lübeck');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (238, 'Unassigned', 184, 180, '09/06/2022', 'University of Minnesota - Morris');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (239, 'Tentative', 4, 407, '12/13/2021', 'National Mining University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (240, 'Assigned', 121, 9, '12/02/2021', 'Universidad Nacional de Villa María');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (241, 'Tentative', 102, 338, '03/24/2022', 'Acharya Ranga Agricultural University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (242, 'Accepted', 200, 375, '04/30/2022', 'Instituto Politécnico de Santarém');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (243, 'Unassigned', 11, 345, '02/02/2022', 'Ulaanbaatar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (244, 'Unassigned', 43, 209, '03/08/2022', 'COMSATS Institute of Information Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (245, 'Assigned', 12, 107, '09/22/2022', 'Pacific University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (246, 'Accepted', 103, 301, '05/21/2022', 'Assiut University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (247, 'Accepted', 79, 463, '06/20/2022', 'Universidad del Cine - Buenos Aires');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (248, 'Tentative', 62, 392, '05/25/2022', 'Universidad del Cine - Buenos Aires');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (249, 'Unassigned', 34, 246, '02/12/2022', 'Collège Boréal');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (250, 'Accepted', 183, 221, '10/13/2022', 'South East European University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (251, 'Accepted', 33, 236, '07/24/2022', 'Pontifícia Universidade Católica de Minas Gerais');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (252, 'Assigned', 109, 437, '11/16/2021', 'Universidad de Santiago de Chile');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (253, 'Accepted', 173, 192, '12/25/2021', 'Universidad Isaac Newton');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (254, 'Accepted', 163, 449, '10/26/2022', 'Korea National University of Physical Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (255, 'Unassigned', 19, 335, '05/23/2022', 'Saga Medical School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (256, 'Assigned', 36, 86, '09/10/2022', 'Jikei University School of Medicine');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (257, 'Unassigned', 31, 217, '12/12/2021', 'International Medical & Technological University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (258, 'Tentative', 169, 272, '04/16/2022', 'Kendall College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (259, 'Assigned', 196, 90, '01/14/2022', 'Universitas Islam Jakarta');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (260, 'Accepted', 161, 103, '03/18/2022', 'Institute of Science and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (261, 'Assigned', 81, 153, '02/06/2022', 'Huaihai Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (262, 'Tentative', 112, 52, '09/29/2022', 'Qinghai University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (263, 'Unassigned', 102, 35, '04/20/2022', 'Universidad Central');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (264, 'Assigned', 7, 402, '08/07/2022', 'Health sciences University of Mongolia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (265, 'Unassigned', 133, 38, '07/13/2022', 'The Scripps Research Institute');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (266, 'Unassigned', 66, 87, '08/24/2022', 'Institut Supérieure d''Electronique du Nord');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (267, 'Assigned', 156, 256, '09/26/2022', 'Université d''Etat d''Haiti');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (268, 'Assigned', 84, 411, '10/04/2022', 'University of Ghana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (269, 'Tentative', 16, 495, '02/18/2022', 'San Francisco Art Institute');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (270, 'Unassigned', 117, 114, '09/01/2022', 'Free University Institute "Carlo Cattaneo"');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (271, 'Accepted', 142, 384, '10/25/2022', 'Islamic Azad University, Fars Science & Research Branch');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (272, 'Accepted', 157, 73, '01/16/2022', 'Université de Limoges');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (273, 'Assigned', 61, 401, '02/19/2022', 'Rajiv Gandhi Technical University (University of Technology of Madhya Pradesh)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (274, 'Assigned', 12, 366, '10/13/2022', 'Florida Memorial College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (275, 'Accepted', 103, 345, '05/06/2022', 'University Canada West');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (276, 'Accepted', 162, 216, '06/18/2022', 'Tiffin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (277, 'Unassigned', 42, 433, '08/11/2022', 'Alice Lloyd College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (278, 'Tentative', 162, 233, '08/22/2022', 'Paktia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (279, 'Accepted', 191, 278, '06/12/2022', 'Old Dominion University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (280, 'Assigned', 104, 398, '07/24/2022', 'Centre College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (281, 'Unassigned', 183, 107, '06/16/2022', 'London School of Business & Finance');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (282, 'Assigned', 78, 239, '09/25/2022', 'Fachhochschule Krems');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (283, 'Tentative', 170, 258, '12/30/2021', 'Université Moulay Ismail Meknès');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (284, 'Unassigned', 106, 299, '02/03/2022', 'Ecole Normale Supérieure de Fontenay-Saint Cloud');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (285, 'Assigned', 73, 260, '02/10/2022', 'Technical University in Kosice');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (286, 'Accepted', 67, 481, '06/16/2022', 'Pyramid Education Center');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (287, 'Tentative', 106, 254, '05/20/2022', 'Universidad de Costa Rica');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (288, 'Tentative', 35, 165, '10/10/2022', 'Curtin University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (289, 'Accepted', 199, 62, '03/30/2022', 'Universidad Técnica del Norte');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (290, 'Tentative', 166, 14, '05/23/2022', 'Hanoi Medical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (291, 'Tentative', 63, 430, '07/10/2022', 'Hochschule Albstadt-Sigmaringen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (292, 'Accepted', 99, 138, '06/26/2022', 'Taipei Medical College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (293, 'Assigned', 24, 327, '01/24/2022', 'University of Agriculture Abeokuta');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (294, 'Unassigned', 154, 367, '11/11/2021', 'Laurentian University of Sudbury');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (295, 'Unassigned', 190, 366, '01/30/2022', 'Université Kongo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (296, 'Tentative', 56, 211, '06/03/2022', 'National American University, Albuquerque');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (297, 'Unassigned', 88, 133, '10/10/2022', 'Chia Nana College of Pharmacy and Science');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (298, 'Accepted', 20, 269, '10/29/2022', 'Universidad Eugenio Maria de Hostos');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (299, 'Accepted', 45, 309, '08/27/2022', 'Dixie College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (300, 'Tentative', 6, 481, '07/01/2022', 'Brunel University Uxbridge');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (301, 'Tentative', 130, 181, '01/13/2022', 'Yamanashi Gakuin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (302, 'Unassigned', 148, 191, '07/15/2022', 'Nippon Dental University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (303, 'Unassigned', 10, 338, '08/07/2022', 'Chongqing University of Post and Telecommunications');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (304, 'Unassigned', 171, 318, '09/17/2022', 'Saito College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (305, 'Tentative', 174, 404, '04/22/2022', 'Fachhochschule Vorarlberg');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (306, 'Unassigned', 103, 338, '09/30/2022', 'Universidad Autónoma de Ciudad Juárez');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (307, 'Assigned', 85, 309, '10/10/2022', 'Orenburg State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (308, 'Assigned', 162, 258, '01/02/2022', 'Seattle University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (309, 'Unassigned', 88, 297, '10/27/2022', 'Universidad del Pacifico');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (310, 'Unassigned', 61, 159, '11/11/2021', 'West Suburban College of Nursing');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (311, 'Unassigned', 61, 90, '02/16/2022', 'Mordovian State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (312, 'Unassigned', 71, 324, '02/21/2022', 'Yildirim Beyazit University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (313, 'Assigned', 158, 421, '09/15/2022', 'Samara State Agricultural Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (314, 'Tentative', 87, 265, '03/15/2022', 'Chongqing University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (315, 'Accepted', 165, 437, '03/29/2022', 'Yasar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (316, 'Unassigned', 105, 251, '10/19/2022', 'Universidad de Magallanes');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (317, 'Assigned', 68, 21, '10/07/2022', 'Friends University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (318, 'Accepted', 186, 92, '08/16/2022', 'Hogeschool voor Wetenschap & Kunst');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (319, 'Assigned', 63, 114, '10/19/2022', 'Tezukayama Gakuin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (320, 'Tentative', 189, 456, '12/01/2021', 'Jishou University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (321, 'Tentative', 193, 270, '07/14/2022', 'Eastern Asia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (322, 'Accepted', 122, 62, '02/11/2022', 'University of North Bengal');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (323, 'Accepted', 65, 222, '12/18/2021', 'Maharaja Sayajirao University of Baroda');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (324, 'Tentative', 116, 64, '02/17/2022', 'Okanagan University College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (325, 'Assigned', 161, 290, '11/10/2021', 'Iranian Academy of Persian Language and Literature');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (326, 'Tentative', 17, 184, '12/01/2021', 'William Penn College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (327, 'Accepted', 95, 358, '08/04/2022', 'DeVry Institute of Technology, Pomona');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (328, 'Tentative', 151, 357, '01/26/2022', 'University of Anbar');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (329, 'Accepted', 59, 166, '11/13/2021', 'Royal Danish School of Educational Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (330, 'Assigned', 32, 267, '06/30/2022', 'University of the West Indies, Mona');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (331, 'Tentative', 179, 358, '01/16/2022', 'Fachhochschule Münster');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (332, 'Tentative', 164, 57, '05/11/2022', 'Japan Women''s University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (333, 'Unassigned', 120, 474, '09/01/2022', 'Sabzevar School of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (334, 'Tentative', 139, 81, '09/25/2022', 'Milwaukee Institute of Art and Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (335, 'Tentative', 92, 246, '07/09/2022', 'Université d''Alger');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (336, 'Assigned', 195, 49, '06/17/2022', 'Wakayama Medical College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (337, 'Accepted', 119, 226, '07/27/2022', 'University of Medicine and Pharmacy of Iasi');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (338, 'Unassigned', 40, 61, '01/29/2022', 'American College of Thessaloniki');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (339, 'Tentative', 28, 391, '08/03/2022', 'Institut Commercial de Nancy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (340, 'Unassigned', 171, 400, '07/03/2022', 'Université Claude Bernard (Lyon I)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (341, 'Tentative', 152, 382, '03/12/2022', 'Malaspina University College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (342, 'Unassigned', 59, 21, '12/09/2021', 'Hashemite University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (343, 'Accepted', 189, 85, '04/06/2022', 'University of Sindh');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (344, 'Unassigned', 105, 26, '08/27/2022', 'College of Idaho');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (345, 'Assigned', 67, 375, '10/17/2022', 'Belarussian State University of Informatics and Radioelectronics');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (346, 'Unassigned', 176, 251, '02/28/2022', 'Union College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (347, 'Tentative', 31, 197, '07/13/2022', 'Omsk State Transport University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (348, 'Assigned', 160, 301, '09/07/2022', 'African University of Science and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (349, 'Accepted', 93, 19, '08/28/2022', 'Sage Graduate School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (350, 'Tentative', 176, 256, '03/13/2022', 'Universidad Capitain General Gerardo Barrios');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (351, 'Unassigned', 175, 51, '06/23/2022', 'Universidad Europea de Madrid');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (352, 'Assigned', 117, 488, '07/14/2022', 'Chosun University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (353, 'Assigned', 38, 177, '01/23/2022', 'Central America Health Sciences University (Belize Medical College)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (354, 'Accepted', 175, 11, '10/16/2022', 'Niagara University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (355, 'Accepted', 12, 338, '12/01/2021', 'Nairobi Institute of Business Studies ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (356, 'Tentative', 66, 408, '02/24/2022', 'Rochester Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (357, 'Assigned', 84, 298, '10/02/2022', 'Universidad Tecnológica del Sur');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (358, 'Assigned', 168, 413, '08/19/2022', 'Grodno State Medical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (359, 'Tentative', 172, 401, '07/19/2022', 'Belarussian State Agricultural Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (360, 'Tentative', 33, 484, '09/17/2022', 'Chu Hai College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (361, 'Unassigned', 9, 59, '04/01/2022', 'National University of Kiev-Mohyla Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (362, 'Accepted', 36, 411, '04/25/2022', 'Fourah Bay College, University of Sierra Leone');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (363, 'Tentative', 83, 355, '09/23/2022', 'University of Texas Medical Branch Galveston');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (364, 'Assigned', 29, 113, '09/07/2022', 'New York School of Interior Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (365, 'Accepted', 148, 430, '06/04/2022', 'Islamic Azad University, Shabestar');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (366, 'Unassigned', 143, 434, '12/04/2021', 'Beijing University of Chinese Medicine and Pharmacology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (367, 'Assigned', 189, 453, '07/30/2022', 'Cumberland University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (368, 'Tentative', 141, 417, '03/02/2022', 'University of Primorska');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (369, 'Tentative', 26, 461, '08/25/2022', 'West Visayas State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (370, 'Accepted', 172, 168, '08/08/2022', 'University of Swaziland');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (371, 'Tentative', 35, 177, '05/12/2022', 'Universidad Popular Autonóma del Estado de Puebla');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (372, 'Unassigned', 180, 219, '06/02/2022', 'University of Palestine');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (373, 'Assigned', 58, 242, '04/19/2022', 'Pontifícia Universidade Católica de Campinas');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (374, 'Tentative', 148, 360, '08/18/2022', 'University of Kurdistan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (375, 'Accepted', 18, 178, '02/09/2022', 'Fachhochschule Nordostniedersachsen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (376, 'Unassigned', 182, 120, '10/23/2022', 'Universidad Nacional Pedro Ruíz Gallo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (377, 'Assigned', 112, 285, '07/12/2022', 'Universidad Interamericana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (378, 'Accepted', 49, 77, '10/27/2022', 'Pomona College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (379, 'Unassigned', 185, 47, '09/19/2022', 'Shimer College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (380, 'Accepted', 175, 299, '03/03/2022', 'Pitzer College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (381, 'Assigned', 183, 186, '06/05/2022', 'Örebro University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (382, 'Assigned', 167, 233, '08/01/2022', 'Nippon Veterinary and Animalscience University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (383, 'Assigned', 96, 438, '12/23/2021', 'Shuchiin College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (384, 'Accepted', 83, 29, '07/25/2022', 'Medical University Varna');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (385, 'Accepted', 71, 276, '04/25/2022', 'Swiss Business School Zurich (SBS)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (386, 'Assigned', 39, 5, '05/15/2022', 'Ukrainian Medical Stomatological Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (387, 'Unassigned', 3, 314, '09/25/2022', 'Universidad San Marcos');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (388, 'Tentative', 157, 29, '02/04/2022', 'Kalamazoo College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (389, 'Tentative', 129, 112, '09/07/2022', 'Latvian University of Agriculture');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (390, 'Accepted', 122, 462, '11/03/2021', 'Seoul National University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (391, 'Assigned', 148, 305, '06/26/2022', 'Western State University College of Law');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (392, 'Accepted', 70, 87, '09/11/2022', 'Athenaeum Pontificium Regina Apostolorum');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (393, 'Unassigned', 62, 350, '03/04/2022', 'Universitas Bakrie');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (394, 'Unassigned', 169, 262, '05/07/2022', 'Universidad Católica de Santiago del Estero');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (395, 'Accepted', 53, 70, '06/24/2022', 'EMESCAM - Escola Superior de Ciências da Santa Casa de Misericórdia de Vitória');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (396, 'Unassigned', 56, 431, '04/25/2022', 'Moulana Azad national Urdu University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (397, 'Assigned', 99, 44, '08/14/2022', 'Universidad de Extremadura');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (398, 'Tentative', 112, 127, '05/10/2022', 'Tafila Technical University ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (399, 'Assigned', 82, 279, '10/10/2022', 'Institut National de la Recherche Scientifique, Université du Québec');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (400, 'Assigned', 36, 143, '07/07/2022', 'American University of Sharjah');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (401, 'Tentative', 122, 494, '03/06/2022', 'Universidade Independente');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (402, 'Assigned', 89, 155, '08/21/2022', 'Duke University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (403, 'Tentative', 8, 327, '09/19/2022', 'Castleton State College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (404, 'Accepted', 80, 241, '09/15/2022', 'European University Institute');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (405, 'Tentative', 67, 473, '04/27/2022', 'King Khaled University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (406, 'Accepted', 10, 227, '07/12/2022', 'TPM College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (407, 'Accepted', 180, 63, '11/21/2021', 'University of Hertfordshire');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (408, 'Tentative', 69, 131, '11/15/2021', 'London College of Science & Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (409, 'Assigned', 35, 158, '10/13/2022', 'Wuhan University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (410, 'Accepted', 20, 365, '11/01/2021', 'University of Arkansas (System)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (411, 'Accepted', 154, 280, '03/12/2022', 'Jinan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (412, 'Accepted', 183, 47, '03/01/2022', 'Dnepropetrovsk National University of Railway Transport');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (413, 'Accepted', 16, 137, '10/15/2022', 'Acadia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (414, 'Accepted', 68, 159, '06/12/2022', 'Instituts Supérieurs de Formation des Maîtres');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (415, 'Tentative', 196, 192, '11/16/2021', 'Universidad Complutense de Madrid');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (416, 'Tentative', 93, 166, '04/08/2022', 'Islamic Azad University, Sowmesara');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (417, 'Unassigned', 154, 258, '06/16/2022', 'Fern-Fachhochschule Hamburg');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (418, 'Unassigned', 40, 48, '10/14/2022', 'Georgia Southern University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (419, 'Unassigned', 178, 369, '04/12/2022', 'Justus Liebig Universität Gießen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (420, 'Tentative', 133, 36, '11/24/2021', 'Universidad Notarial Argentina');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (421, 'Accepted', 146, 8, '01/29/2022', 'Ecole Nationale Supérieure des Telecommunications de Paris');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (422, 'Unassigned', 48, 364, '06/02/2022', 'Universidad de Deusto');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (423, 'Unassigned', 158, 328, '06/11/2022', 'Saint Louis University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (424, 'Assigned', 105, 215, '11/06/2021', 'North Central Bible College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (425, 'Accepted', 124, 49, '02/16/2022', 'Cambodian Mekong University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (426, 'Tentative', 17, 441, '08/02/2022', 'University Tun Abdul Razak');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (427, 'Assigned', 158, 325, '10/11/2022', 'Trinity Western University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (428, 'Assigned', 5, 285, '04/22/2022', 'Medical Academy in Gdansk');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (429, 'Tentative', 150, 325, '07/22/2022', 'Isra University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (430, 'Assigned', 34, 386, '12/17/2021', 'Hadhramout University of Science and Technology ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (431, 'Tentative', 7, 93, '09/03/2022', 'Universidad Dominicana O&M');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (432, 'Accepted', 98, 54, '12/07/2021', 'Shanghai Business School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (433, 'Tentative', 8, 337, '11/07/2021', 'Africa Nazarene University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (434, 'Assigned', 60, 394, '10/15/2022', 'South University of Science and Technology of China ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (435, 'Unassigned', 146, 366, '10/31/2021', 'Manila Central University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (436, 'Tentative', 183, 82, '02/12/2022', 'Banaras Hindu University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (437, 'Accepted', 82, 475, '04/26/2022', 'Jazan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (438, 'Assigned', 193, 260, '06/29/2022', 'Liaoning University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (439, 'Assigned', 127, 166, '05/16/2022', 'Christchurch Polytechnic Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (440, 'Tentative', 196, 259, '01/05/2022', 'Belarussian State Academy of Music');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (441, 'Unassigned', 56, 67, '08/19/2022', 'Govind Ballabh Pant University of Agriculture and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (442, 'Assigned', 150, 299, '07/25/2022', 'Dr. Ram Manohar Lohia Avadh University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (443, 'Unassigned', 62, 197, '07/09/2022', 'Rivers State University of Science and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (444, 'Assigned', 24, 300, '05/31/2022', 'Technical University of Koszalin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (445, 'Assigned', 91, 123, '08/11/2022', 'Universidade Federal Fluminense');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (446, 'Unassigned', 64, 105, '10/19/2022', 'Barton College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (447, 'Assigned', 88, 1, '06/21/2022', 'University for Information Science and Technology  "St. Paul The Apostle" ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (448, 'Assigned', 59, 364, '04/08/2022', 'Menoufia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (449, 'Accepted', 5, 9, '10/18/2022', 'Universidad de Artes, Ciencias y Comunicación');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (450, 'Accepted', 11, 257, '02/12/2022', 'Amber University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (451, 'Unassigned', 32, 124, '06/27/2022', 'Harbin University of Science and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (452, 'Accepted', 116, 10, '08/20/2022', 'Bauman Moscow State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (453, 'Assigned', 27, 301, '09/01/2022', 'Islamic Azad University, Ahar');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (454, 'Unassigned', 76, 332, '10/29/2022', 'Arkansas State University, Newport');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (455, 'Unassigned', 159, 39, '12/10/2021', 'Universidad del Valle de Toluca');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (456, 'Assigned', 98, 497, '03/13/2022', 'Institut Supérieure d''Electronique du Nord');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (457, 'Tentative', 90, 446, '05/25/2022', 'Université Protestante au Congo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (458, 'Assigned', 85, 373, '08/08/2022', 'Nova Scotia College of Art and Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (459, 'Tentative', 16, 483, '01/02/2022', 'Harrington Institute of Interior Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (460, 'Unassigned', 114, 252, '04/11/2022', 'Dibrugarh University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (461, 'Tentative', 28, 113, '05/21/2022', 'International University School of Medicine (IUSOM)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (462, 'Unassigned', 59, 456, '06/17/2022', 'George Mason University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (463, 'Tentative', 142, 303, '03/01/2022', 'Renaissance University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (464, 'Assigned', 40, 165, '08/28/2022', 'Full Sail University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (465, 'Tentative', 149, 358, '05/03/2022', 'Universidad de Oriente');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (466, 'Unassigned', 72, 180, '11/08/2021', 'Université de Haute-Alsace');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (467, 'Assigned', 55, 108, '10/10/2022', 'Botswana College of Agriculture');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (468, 'Tentative', 195, 186, '03/16/2022', 'Luther College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (469, 'Accepted', 96, 299, '03/15/2022', 'Manchester College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (470, 'Accepted', 179, 164, '10/01/2022', 'Sikha ''O'' Anushandhan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (471, 'Accepted', 119, 231, '04/16/2022', 'The Curtis Institute of Music');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (472, 'Accepted', 14, 376, '11/12/2021', 'National Chung Cheng University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (473, 'Tentative', 57, 454, '03/26/2022', 'Arthur C Clarke Institute of Modern Technologies');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (474, 'Assigned', 23, 263, '07/24/2022', 'Fachhochschule Nordostniedersachsen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (475, 'Tentative', 161, 479, '06/27/2022', 'Universidad Técnica de Cotopaxi');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (476, 'Assigned', 194, 213, '07/08/2022', 'Ecole Nationale d''Administration');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (477, 'Accepted', 167, 182, '11/19/2021', 'University of Namibia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (478, 'Accepted', 64, 392, '10/12/2022', 'Università Bocconi');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (479, 'Assigned', 61, 256, '10/13/2022', 'Jacksonville State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (480, 'Tentative', 185, 1, '06/08/2022', 'Thamar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (481, 'Accepted', 119, 125, '02/16/2022', 'University of Guyana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (482, 'Unassigned', 114, 24, '08/25/2022', 'Kuzbass State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (483, 'Unassigned', 102, 289, '02/07/2022', 'University for Humanistics (UH)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (484, 'Assigned', 83, 488, '07/19/2022', 'West Virginia School of Osteopathic Medicine');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (485, 'Unassigned', 17, 388, '07/29/2022', 'St. Petersburg Institute of Arts and Restoration');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (486, 'Unassigned', 149, 348, '10/30/2022', 'Universidad Autónoma de Fresnillo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (487, 'Accepted', 110, 262, '04/20/2022', 'Polytechnic University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (488, 'Tentative', 147, 387, '07/09/2022', 'Punjab Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (489, 'Unassigned', 173, 124, '02/07/2022', 'Universidad de Puerto Rico, Bayamon');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (490, 'Assigned', 29, 76, '07/31/2022', 'Universidad Interamericana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (491, 'Accepted', 74, 111, '07/21/2022', 'Indian Institute of Information Technology and Management - Kerala');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (492, 'Unassigned', 188, 274, '03/16/2022', 'Academy of Art College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (493, 'Unassigned', 82, 284, '01/07/2022', 'Marymount College New York');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (494, 'Assigned', 155, 187, '12/09/2021', 'Pontificia Universidad Católica del Ecuador');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (495, 'Unassigned', 125, 310, '11/25/2021', 'Université de Saida');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (496, 'Accepted', 91, 75, '02/15/2022', 'Kobe University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (497, 'Accepted', 4, 404, '02/13/2022', 'Drexel University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (498, 'Assigned', 26, 61, '10/24/2022', 'Pontificia Universidad Catolica de Puerto Rico');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (499, 'Assigned', 68, 475, '07/21/2022', 'Lewis and Clark College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (500, 'Accepted', 63, 178, '08/09/2022', 'University of Moncton, Shippagan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (501, 'Unassigned', 59, 293, '11/15/2021', 'Universidade Portucalense Infante D. Henrique');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (502, 'Accepted', 60, 416, '01/30/2022', 'Wolkite University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (503, 'Assigned', 84, 193, '08/07/2022', 'Universidade São Francisco');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (504, 'Unassigned', 32, 307, '12/14/2021', 'Hope International University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (505, 'Tentative', 12, 217, '12/07/2021', 'Islamic Azad University, Karaj');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (506, 'Accepted', 170, 45, '06/17/2022', 'University of Lincoln');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (507, 'Tentative', 113, 117, '12/11/2021', 'Nakhchivan State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (508, 'Unassigned', 30, 223, '08/29/2022', 'Charles Darwin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (509, 'Assigned', 83, 310, '11/14/2021', 'Universidad Santa Paula');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (510, 'Assigned', 123, 243, '05/27/2022', 'Katholische Fachhochschule Norddeutschland');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (511, 'Unassigned', 139, 81, '02/26/2022', 'Universidad de Cantabria');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (512, 'Unassigned', 128, 268, '02/15/2022', 'Arkansas Tech University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (513, 'Accepted', 55, 302, '12/23/2021', 'Waynesburg College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (514, 'Tentative', 117, 307, '12/30/2021', 'Katholische Stiftungsfachhochschule München');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (515, 'Unassigned', 176, 213, '01/02/2022', 'St. John''s University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (516, 'Tentative', 130, 15, '11/14/2021', 'Universidade Católica de Salvador');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (517, 'Unassigned', 194, 145, '06/18/2022', 'Nakamura Gakuen University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (518, 'Assigned', 37, 172, '09/16/2022', 'CollegeAmerica, Denver');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (519, 'Accepted', 24, 350, '07/02/2022', 'NABA - Nuova Accademia di Belle Arti, Milan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (520, 'Assigned', 5, 99, '03/01/2022', 'Abfi Institute Perbanas Jakarta');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (521, 'Accepted', 89, 469, '02/25/2022', 'Silesian Technical University of Gliwice');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (522, 'Unassigned', 51, 100, '12/06/2021', 'Higher Colleges of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (523, 'Tentative', 39, 195, '05/11/2022', 'Delaware Valley College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (524, 'Unassigned', 177, 149, '10/13/2022', 'Universidade Federal do Pará');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (525, 'Assigned', 97, 18, '04/21/2022', 'Changchun University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (526, 'Unassigned', 169, 335, '12/27/2021', 'ITT Technical Institute West Covina');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (527, 'Assigned', 117, 124, '11/22/2021', 'Tiraspol State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (528, 'Unassigned', 11, 156, '12/25/2021', 'National Academy of Music "Pantcho Vladigerov"');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (529, 'Assigned', 134, 470, '03/01/2022', 'Algonquin College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (530, 'Tentative', 163, 286, '01/14/2022', 'Osaka College of Music');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (531, 'Assigned', 181, 79, '10/27/2022', 'Darul Ulum Islamic College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (532, 'Tentative', 196, 189, '10/15/2022', 'Belarussian State Medical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (533, 'Assigned', 149, 68, '03/14/2022', 'National-Louis University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (534, 'Tentative', 177, 97, '08/20/2022', 'Mount Holyoke College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (535, 'Unassigned', 144, 187, '05/23/2022', 'Bifrost School of Business');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (536, 'Accepted', 147, 475, '07/18/2022', 'Varna Free University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (537, 'Assigned', 62, 285, '09/21/2022', 'Southwest University of Nationalities');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (538, 'Assigned', 187, 129, '05/13/2022', 'Universiti Malaya');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (539, 'Assigned', 4, 437, '09/25/2022', 'Charter Oak State College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (540, 'Assigned', 185, 100, '12/27/2021', 'Military Technical College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (541, 'Tentative', 94, 488, '09/14/2022', 'Novosibirsk State Academy of Economics and Mangement');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (542, 'Accepted', 173, 44, '05/12/2022', 'University of Aleppo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (543, 'Accepted', 47, 379, '04/18/2022', 'Bloomfield College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (544, 'Accepted', 199, 80, '10/24/2022', 'Pennsylvania State University - Schuylkill');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (545, 'Accepted', 68, 220, '07/10/2022', 'University of Gjirokstra "Eqerem Cabej"');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (546, 'Accepted', 160, 103, '12/01/2021', 'Université de Toliary');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (547, 'Unassigned', 143, 4, '07/07/2022', 'Universitas Ahmad Dahlan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (548, 'Unassigned', 33, 96, '05/30/2022', 'Shahrekord University of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (549, 'Accepted', 160, 424, '10/31/2021', 'University of Santo Tomas');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (550, 'Tentative', 125, 354, '06/13/2022', 'Evangelische Fachhochschule Darmstadt');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (551, 'Assigned', 186, 95, '03/10/2022', 'New England School of Communications');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (552, 'Unassigned', 31, 264, '11/26/2021', 'University of Presov');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (553, 'Unassigned', 160, 209, '01/20/2022', 'University of Southern Maine');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (554, 'Assigned', 25, 384, '10/09/2022', 'Massachusetts College of Art');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (555, 'Assigned', 91, 424, '05/07/2022', 'University of Wollongong');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (556, 'Tentative', 128, 286, '08/13/2022', 'Schreiner College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (557, 'Accepted', 180, 288, '10/28/2022', 'Augustana University College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (558, 'Accepted', 22, 56, '06/30/2022', 'Shiga University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (559, 'Accepted', 156, 160, '07/10/2022', 'Rani Durgavati University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (560, 'Tentative', 99, 116, '10/13/2022', 'Universidad Autónoma del Carmen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (561, 'Assigned', 60, 125, '01/23/2022', 'International Academy of  Merchandising and Design Tampa');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (562, 'Unassigned', 98, 258, '03/04/2022', 'California College of Podiatric Medicine');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (563, 'Assigned', 79, 166, '07/20/2022', 'University of Kordofan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (564, 'Tentative', 125, 453, '01/14/2022', 'Technological Education Institute of Piraeus');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (565, 'Unassigned', 39, 492, '10/29/2022', 'DeVry Institute of Technology, Phoenix');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (566, 'Assigned', 128, 319, '10/11/2022', 'Université de Djibouti');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (567, 'Accepted', 104, 268, '05/25/2022', 'Changsha Railway University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (568, 'Unassigned', 19, 485, '01/17/2022', 'Universidad Nacional del Este');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (569, 'Assigned', 133, 82, '02/08/2022', 'University of Elbasan "Aleksander Xhuvani"');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (570, 'Assigned', 107, 70, '05/05/2022', 'Karatina University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (571, 'Assigned', 38, 200, '04/03/2022', 'Tokyo University of Pharmacy and Life Science');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (572, 'Assigned', 135, 387, '03/15/2022', 'Karachi Institute Of Economics And Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (573, 'Unassigned', 195, 330, '07/30/2022', 'Urmia University of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (574, 'Unassigned', 20, 469, '05/29/2022', 'Sarhad University of Science & Information Technology, Peshawar ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (575, 'Accepted', 186, 375, '05/11/2022', 'Dadabhoy Institute of Higher Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (576, 'Accepted', 56, 121, '06/25/2022', 'Oklahoma State University Center for Health Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (577, 'Assigned', 187, 384, '03/27/2022', 'Vlerick Leuven Gent Management School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (578, 'Assigned', 93, 416, '08/04/2022', 'University of Tromsø');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (579, 'Tentative', 98, 19, '05/13/2022', 'Nangarhar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (580, 'Tentative', 147, 150, '12/30/2021', 'Pace University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (581, 'Unassigned', 149, 128, '06/23/2022', 'Cochin University of Science and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (582, 'Unassigned', 24, 492, '08/01/2022', 'Southern Methodist University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (583, 'Accepted', 25, 262, '11/18/2021', 'Silesian University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (584, 'Tentative', 47, 453, '10/12/2022', 'Nukus State Teachers Training Institute');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (585, 'Tentative', 184, 116, '12/27/2021', 'Northwest Missouri State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (586, 'Assigned', 154, 465, '02/11/2022', 'York College Nebraska');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (587, 'Tentative', 77, 46, '07/04/2022', 'Universidad del Tepeyac');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (588, 'Unassigned', 160, 323, '03/23/2022', 'Westminster College Fulton');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (589, 'Accepted', 135, 268, '10/26/2022', 'Guilan University of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (590, 'Accepted', 75, 262, '03/14/2022', 'Royal Roads University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (591, 'Unassigned', 122, 423, '12/14/2021', 'ARYA Institute of Engineering & Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (592, 'Unassigned', 197, 142, '02/15/2022', 'National Kaohsiung University of Applied Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (593, 'Tentative', 178, 271, '05/29/2022', 'Bushehr University of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (594, 'Tentative', 186, 210, '04/15/2022', 'Cheju National University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (595, 'Accepted', 199, 171, '05/18/2022', 'Institue of Technology, Tralee');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (596, 'Unassigned', 18, 59, '09/17/2022', 'Ecole Nationale Supérieure des Arts et Industries de Strasbourg');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (597, 'Unassigned', 112, 144, '09/06/2022', 'West Suburban College of Nursing');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (598, 'Tentative', 81, 465, '11/26/2021', 'Police Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (599, 'Tentative', 58, 118, '04/25/2022', 'Pwani University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (600, 'Accepted', 87, 57, '01/09/2022', 'Tallinn University of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (601, 'Accepted', 10, 67, '07/03/2022', 'Polish-Japanese Institute of Information Technology in Warsaw');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (602, 'Tentative', 30, 405, '04/28/2022', 'University of the Philippines Diliman');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (603, 'Tentative', 58, 153, '01/09/2022', 'Schiller International University, Madrid');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (604, 'Accepted', 140, 171, '01/14/2022', 'Karnatak University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (605, 'Assigned', 122, 54, '11/09/2021', 'University of Central Texas');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (606, 'Tentative', 147, 417, '08/24/2022', 'Sri Krishnadevaraya University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (607, 'Accepted', 90, 109, '03/07/2022', 'National Technical University (Kiev Politechnical Institute)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (608, 'Accepted', 14, 10, '03/17/2022', 'University of the West Indies, Mona');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (609, 'Assigned', 32, 483, '01/20/2022', 'University of Sint Eustatius School of Medicine');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (610, 'Tentative', 26, 72, '12/27/2021', 'Fundación Universitaria Manuela Beltrán');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (611, 'Unassigned', 85, 307, '06/08/2022', 'Ukhta State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (612, 'Tentative', 186, 379, '09/13/2022', 'Université Ibn Zohr Agadir');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (613, 'Unassigned', 178, 27, '06/07/2022', 'Universidad Catolica "Redemptoris Mater"');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (614, 'Assigned', 180, 382, '01/16/2022', 'Multimedia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (615, 'Tentative', 35, 186, '01/12/2022', 'Okinawa Prefectural University of Fine Arts');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (616, 'Tentative', 108, 442, '12/13/2021', 'Université René Descartes (Paris V)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (617, 'Assigned', 199, 108, '05/22/2022', 'University of Central Arkansas');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (618, 'Unassigned', 197, 175, '02/17/2022', 'Université de Technologie de Compiègne');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (619, 'Accepted', 124, 271, '06/10/2022', 'Kwan Dong University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (620, 'Accepted', 130, 253, '07/31/2022', 'Sultanah Bahiyah Polytechnic');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (621, 'Assigned', 33, 394, '10/12/2022', 'Pawel Wlodkowic University College in Plock');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (622, 'Assigned', 181, 436, '10/29/2022', 'University of KwaZulu-Natal');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (623, 'Unassigned', 124, 421, '03/27/2022', 'Chang Gung University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (624, 'Unassigned', 125, 174, '09/25/2022', 'Southwestern University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (625, 'Accepted', 89, 30, '08/13/2022', 'University of New England');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (626, 'Assigned', 89, 351, '10/16/2022', 'Al Fashir University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (627, 'Tentative', 199, 48, '01/07/2022', 'Tashkent State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (628, 'Accepted', 13, 300, '08/05/2022', 'Phranakhon Si Ayutthaya Rajabhat University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (629, 'Accepted', 96, 365, '09/26/2022', 'St. Joseph''s College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (630, 'Assigned', 106, 171, '08/09/2022', 'Lincoln University Pennsylvania');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (631, 'Accepted', 137, 363, '11/25/2021', 'Universitas Pembangunan Panca Budi');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (632, 'Tentative', 71, 25, '01/05/2022', 'Centro Universitário Serra dos Órgãos');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (633, 'Assigned', 74, 105, '03/02/2022', 'University Institute of Modern Languages');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (634, 'Tentative', 3, 459, '11/17/2021', 'Rider University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (635, 'Assigned', 14, 459, '03/29/2022', 'Universidade Regional Integrada do Alto Uruguai e das Missões');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (636, 'Unassigned', 175, 279, '10/22/2022', 'Jones International University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (637, 'Unassigned', 156, 147, '11/10/2021', 'Fine Arts Academy in Gdansk');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (638, 'Accepted', 182, 329, '07/27/2022', 'Ch. Charan Singh University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (639, 'Assigned', 30, 350, '06/12/2022', 'Babasaheb Bhimrao Ambedkar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (640, 'Unassigned', 141, 460, '11/08/2021', 'Pyongtaek University ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (641, 'Tentative', 127, 348, '12/05/2021', 'Universidad Metropolitana de Asunción');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (642, 'Accepted', 138, 473, '05/16/2022', 'Polotsk State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (643, 'Assigned', 170, 320, '02/23/2022', 'New Mexico Institute of Mining and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (644, 'Assigned', 120, 161, '10/14/2022', 'Universidad Regional del Sureste');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (645, 'Unassigned', 185, 185, '03/14/2022', 'National Research University of Electronic Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (646, 'Unassigned', 79, 51, '02/20/2022', 'Dawood College of Engineering and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (647, 'Accepted', 64, 256, '10/13/2022', 'Florida International University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (648, 'Assigned', 108, 478, '07/22/2022', 'Birmingham-Southern College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (649, 'Unassigned', 162, 25, '08/04/2022', 'New Economic School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (650, 'Assigned', 71, 14, '10/30/2022', 'Beijing Information Science and Technology University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (651, 'Assigned', 145, 35, '04/18/2022', 'Estonian Academy of Music and Theatre');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (652, 'Unassigned', 57, 51, '04/25/2022', 'University of Rijeka');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (653, 'Tentative', 167, 449, '07/28/2022', 'St. Mary''s College Indiana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (654, 'Assigned', 167, 453, '09/18/2022', 'University of Oregon');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (655, 'Assigned', 102, 434, '05/19/2022', 'Newcastle University, Medicine Malaysia ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (656, 'Unassigned', 165, 39, '06/07/2022', 'Concordia College, Selma');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (657, 'Assigned', 103, 487, '08/26/2022', 'University of Colombo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (658, 'Accepted', 70, 156, '02/27/2022', 'Niagara University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (659, 'Accepted', 122, 281, '05/31/2022', 'Université Cadi Ayyad');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (660, 'Unassigned', 149, 482, '09/30/2022', 'Bowling Green State University, Firelands');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (661, 'Tentative', 194, 89, '02/12/2022', 'Tama Institute of Management and Information Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (662, 'Assigned', 18, 244, '07/11/2022', 'Saratov State Medical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (663, 'Accepted', 69, 490, '10/26/2022', 'Art University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (664, 'Tentative', 167, 137, '11/24/2021', 'Ashland University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (665, 'Accepted', 46, 319, '02/01/2022', 'Universidad Empresarial');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (666, 'Unassigned', 174, 429, '01/29/2022', 'Lalit Narayan Mithila University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (667, 'Unassigned', 5, 125, '06/22/2022', 'Dav University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (668, 'Accepted', 138, 486, '03/07/2022', 'University of the Sciences in Philadelphia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (669, 'Unassigned', 102, 126, '12/23/2021', 'Mayo Medical School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (670, 'Unassigned', 175, 115, '11/08/2021', 'Technological University (Lashio)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (671, 'Tentative', 155, 11, '01/26/2022', 'George Washington University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (672, 'Tentative', 185, 408, '09/01/2022', 'Keiai University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (673, 'Tentative', 155, 17, '07/31/2022', 'Rafsanjan University of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (674, 'Tentative', 79, 62, '03/06/2022', 'Khurasan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (675, 'Tentative', 75, 416, '11/30/2021', 'Johnson C. Smith University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (676, 'Unassigned', 183, 268, '02/04/2022', 'Kamakura Women''s College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (677, 'Accepted', 74, 216, '05/20/2022', 'Cameron University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (678, 'Tentative', 180, 193, '04/06/2022', 'Zaporizhzhe National University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (679, 'Assigned', 127, 376, '07/06/2022', 'Daebul University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (680, 'Tentative', 79, 73, '10/28/2022', 'National American University, Roseville');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (681, 'Tentative', 127, 362, '04/05/2022', 'West Texas A&M University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (682, 'Tentative', 190, 19, '03/17/2022', 'Razi University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (683, 'Accepted', 61, 460, '09/21/2022', 'Atatürk University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (684, 'Assigned', 10, 395, '01/20/2022', 'University of Liberia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (685, 'Accepted', 54, 121, '06/20/2022', 'Princeton University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (686, 'Unassigned', 132, 369, '08/11/2022', 'University of the Virgin Islands');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (687, 'Assigned', 121, 30, '03/06/2022', 'University of Maryland at College Park');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (688, 'Unassigned', 65, 283, '04/21/2022', 'Universitas Jember');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (689, 'Unassigned', 43, 28, '07/06/2022', 'Universitas Islam Sumatera Utara');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (690, 'Assigned', 15, 278, '11/24/2021', 'University of Presov');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (691, 'Tentative', 106, 486, '05/21/2022', 'Pontifcia Università Gregoriana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (692, 'Assigned', 125, 301, '12/10/2021', 'Foshan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (693, 'Assigned', 153, 336, '06/15/2022', 'Virgen Milagrosa University Foundation');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (694, 'Assigned', 183, 169, '08/27/2022', 'Kostroma State Technological University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (695, 'Accepted', 59, 423, '03/19/2022', 'University of Verona');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (696, 'Assigned', 77, 425, '08/06/2022', 'St. Petersburg State Conservatory');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (697, 'Unassigned', 27, 429, '11/04/2021', 'Darul Ulum Islamic College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (698, 'Tentative', 125, 387, '02/04/2022', 'Universiteit Antwerpen, UFSIA');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (699, 'Accepted', 184, 325, '05/11/2022', 'University of Balochistan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (700, 'Unassigned', 40, 394, '12/27/2021', 'Sabaragamuwa University of Sri Lanka');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (701, 'Tentative', 45, 12, '05/26/2022', 'St. Petersburg State Technological University of Plant Polymers');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (702, 'Unassigned', 25, 88, '06/10/2022', 'Yunnan Normal University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (703, 'Accepted', 144, 259, '08/09/2022', 'Universidad Popular Autonóma del Estado de Puebla');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (704, 'Tentative', 176, 439, '11/02/2021', 'Lorestan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (705, 'Accepted', 17, 212, '04/25/2022', 'Mersin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (706, 'Assigned', 112, 23, '05/23/2022', 'University of Essex');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (707, 'Assigned', 146, 4, '01/28/2022', 'University of Bahrain');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (708, 'Tentative', 177, 332, '08/01/2022', 'University of Health Sciences Andhra Pradesh');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (709, 'Tentative', 61, 308, '01/27/2022', 'Engineering College of Copenhagen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (710, 'Unassigned', 155, 195, '06/02/2022', 'Karakoram International University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (711, 'Accepted', 200, 349, '06/04/2022', 'Saudi Electronic University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (712, 'Unassigned', 3, 366, '12/24/2021', 'University of Kent at Canterbury');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (713, 'Unassigned', 43, 293, '02/17/2022', 'Kaboora Institute of Higher Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (714, 'Assigned', 48, 256, '07/05/2022', 'Baker University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (715, 'Accepted', 19, 74, '02/27/2022', 'Grantham University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (716, 'Tentative', 10, 349, '06/23/2022', 'Bourgas Free University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (717, 'Accepted', 27, 263, '05/28/2022', 'Pes University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (718, 'Assigned', 64, 500, '09/17/2022', 'Fachhochschule Mainz');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (719, 'Assigned', 101, 10, '07/13/2022', 'Obninsk State Technical University for Nuclear Power Engineering');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (720, 'Assigned', 30, 73, '02/14/2022', 'Universidade Lusófona de Humanidades e Technologias');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (721, 'Accepted', 171, 7, '02/04/2022', 'Australian National University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (722, 'Unassigned', 85, 372, '09/10/2022', 'Ecole Nationale Supérieur de Mécanique et d''Aéronautique');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (723, 'Unassigned', 42, 100, '08/06/2022', 'Seneca College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (724, 'Accepted', 12, 102, '01/01/2022', 'New England Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (725, 'Unassigned', 176, 408, '01/04/2022', 'Jimei University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (726, 'Tentative', 22, 222, '04/29/2022', 'Avinashilingam Institute for Home Science and Higher Education for Women');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (727, 'Tentative', 182, 125, '03/05/2022', 'Universitas Negeri Makassar');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (728, 'Accepted', 10, 330, '09/09/2022', 'Jilin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (729, 'Assigned', 3, 113, '02/12/2022', 'Ukhta State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (730, 'Accepted', 153, 335, '10/17/2022', 'United States Merchant Marine Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (731, 'Unassigned', 180, 452, '01/29/2022', 'Prairie View Agricultural and Mechanical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (732, 'Assigned', 125, 196, '06/13/2022', 'Boricua College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (733, 'Unassigned', 106, 84, '10/19/2022', 'Emanuel University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (734, 'Accepted', 101, 167, '04/18/2022', 'Shanghai University of Finance and Economics');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (735, 'Tentative', 18, 306, '08/02/2022', 'Central Bible College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (736, 'Unassigned', 71, 223, '09/17/2022', 'Universidad Privada Los Andes');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (737, 'Unassigned', 159, 229, '04/29/2022', 'Allahabad Agricultural Institute, Deemed University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (738, 'Assigned', 79, 426, '12/20/2021', 'Trident University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (739, 'Accepted', 132, 407, '01/05/2022', 'International Hellenic University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (740, 'Accepted', 4, 264, '04/29/2022', 'Kochi University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (741, 'Assigned', 187, 157, '02/03/2022', 'Universidad Andina Simón Bolívar');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (742, 'Tentative', 89, 72, '08/27/2022', 'Laikipia University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (743, 'Tentative', 179, 397, '05/18/2022', 'Université Bordeaux I');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (744, 'Accepted', 8, 157, '08/08/2022', 'Music Academy in Cracow');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (745, 'Assigned', 150, 189, '11/20/2021', 'Dawat University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (746, 'Unassigned', 28, 489, '12/08/2021', 'Arizona State University, West Campus');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (747, 'Accepted', 178, 246, '07/31/2022', 'Academy of Art College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (748, 'Accepted', 109, 305, '02/11/2022', 'Kitami Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (749, 'Unassigned', 129, 229, '02/25/2022', 'Universidad Autónoma de Chapingo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (750, 'Assigned', 10, 270, '06/14/2022', 'Southern Alberta Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (751, 'Unassigned', 23, 376, '01/25/2022', 'Moscow State Textile University A.N. Kosygin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (752, 'Assigned', 131, 190, '11/06/2021', 'Groupe Sup de Co Amiens Picardie');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (753, 'Unassigned', 51, 293, '07/11/2022', 'Music Academy "Felix Nowowiejski" in Bydgoszcz');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (754, 'Accepted', 65, 262, '03/05/2022', 'Universidad de Murcia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (755, 'Accepted', 128, 182, '12/31/2021', 'Internationale Fachhochschule Bad Honnef');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (756, 'Unassigned', 190, 57, '06/20/2022', 'Keene State College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (757, 'Tentative', 100, 227, '12/26/2021', 'University of West Bohemia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (758, 'Assigned', 88, 152, '06/15/2022', 'State University of New York at Buffalo');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (759, 'Unassigned', 110, 361, '01/09/2022', 'Colegio de Estudios Superiores de Administración (CESA)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (760, 'Unassigned', 115, 237, '03/28/2022', 'Ukrainian Academy of Banking');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (761, 'Assigned', 143, 237, '04/27/2022', 'Russian State University for the Humanities');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (762, 'Tentative', 97, 478, '12/13/2021', 'Mimasaka Women''s College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (763, 'Assigned', 55, 29, '10/09/2022', 'Universitas Dian Nuswantoro');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (764, 'Unassigned', 191, 343, '08/01/2022', 'Hawassa University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (765, 'Tentative', 132, 288, '10/28/2022', 'Universidad Eugenio Maria de Hostos');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (766, 'Assigned', 72, 234, '04/17/2022', 'Bergen University College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (767, 'Unassigned', 70, 137, '06/08/2022', 'Wayland Baptist University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (768, 'Unassigned', 169, 281, '04/12/2022', 'Hacettepe University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (769, 'Tentative', 53, 291, '09/26/2022', 'Academy of Economics in Poznan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (770, 'Unassigned', 27, 123, '06/15/2022', 'Lees-McRae College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (771, 'Assigned', 81, 300, '11/12/2021', 'University of Houston, Downtown');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (772, 'Tentative', 65, 183, '12/21/2021', 'Justus Liebig Universität Gießen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (773, 'Accepted', 84, 48, '05/26/2022', 'Huanghe Science & Technology University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (774, 'Assigned', 141, 381, '01/07/2022', 'Tennessee State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (775, 'Assigned', 14, 472, '10/01/2022', 'COMSATS Institute of Information Technology, Abbottabad');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (776, 'Tentative', 46, 315, '06/09/2022', 'Islamic Azad University, Hamedan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (777, 'Unassigned', 180, 340, '07/30/2022', 'Osaka University of Economics');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (778, 'Accepted', 36, 462, '05/25/2022', 'Islamic Azad University, Varamin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (779, 'Accepted', 67, 315, '02/07/2022', 'Université Kasdi Merbah Ouargla');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (780, 'Assigned', 181, 9, '01/05/2022', 'University of Missouri - Columbia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (781, 'Unassigned', 101, 236, '08/14/2022', 'Eastern New Mexico University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (782, 'Tentative', 70, 78, '01/07/2022', 'Eastern Nazarene College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (783, 'Tentative', 69, 159, '11/20/2021', 'Wissenschaftliche Hochschule für Unternehmensführung, Otto-Beisheim Hochschule');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (784, 'Unassigned', 31, 200, '07/07/2022', 'Allegheny College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (785, 'Tentative', 53, 57, '09/14/2022', 'University of Namibia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (786, 'Tentative', 165, 61, '10/04/2022', 'College of Mount St. Joseph');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (787, 'Assigned', 29, 44, '02/01/2022', 'Fachhochschule Trier, Hochschule für Technik, Wirtschaft und Gestaltung');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (788, 'Tentative', 1, 234, '06/24/2022', 'Morgan State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (789, 'Tentative', 85, 215, '01/28/2022', 'Nazarene Bible College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (790, 'Unassigned', 135, 265, '08/09/2022', 'Universidad del Valle de Atemajac');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (791, 'Tentative', 94, 187, '07/26/2022', 'Ecole Nationale d''Ingénieurs des Travaux Agricoles de Bordeaux');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (792, 'Accepted', 140, 89, '09/18/2022', 'European Humanities University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (793, 'Assigned', 137, 241, '01/05/2022', 'Inner Mongolia Polytechnic University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (794, 'Unassigned', 177, 406, '06/27/2022', 'Dominion College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (795, 'Accepted', 131, 269, '09/13/2022', 'Dankook University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (796, 'Tentative', 62, 477, '03/24/2022', 'Pennsylvania College of Optometry');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (797, 'Tentative', 35, 458, '07/31/2022', 'Groupe Sup de Co Montpellier');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (798, 'Unassigned', 140, 274, '07/26/2022', 'Accra Polytechnic ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (799, 'Tentative', 175, 362, '09/11/2022', 'Lander University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (800, 'Tentative', 104, 389, '03/15/2022', 'Robert Morris College of Chicago');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (801, 'Unassigned', 49, 452, '09/16/2022', 'University of Science and Technology Sana''a');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (802, 'Accepted', 14, 450, '01/15/2022', 'New England School of Law');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (803, 'Tentative', 154, 337, '04/02/2022', 'Gotland University College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (804, 'Tentative', 28, 187, '09/07/2022', 'City University of New York, Brooklyn College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (805, 'Assigned', 157, 134, '08/04/2022', 'Holy Cross College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (806, 'Accepted', 22, 362, '10/03/2022', 'Universidade Santa Cecília dos Bandeirantes');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (807, 'Unassigned', 36, 298, '12/03/2021', 'Fachhochschule Jena');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (808, 'Unassigned', 177, 477, '01/26/2022', 'Anglia Ruskin University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (809, 'Accepted', 120, 268, '11/18/2021', 'Indira Gandhi Institute of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (810, 'Assigned', 74, 85, '08/18/2022', 'University of Sulaimania (Kurdistan Region)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (811, 'Accepted', 101, 423, '08/21/2022', 'St. Thomas University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (812, 'Unassigned', 164, 419, '03/30/2022', 'Universitas Sultan Ageng Tirtayasa');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (813, 'Tentative', 160, 23, '01/21/2022', 'Selkirk College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (814, 'Accepted', 32, 374, '03/05/2022', 'Fachhochschule für das öffentliche Bibliothekswesen Bonn');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (815, 'Tentative', 42, 222, '09/11/2022', 'Mawlana Bhashani Science And Technology University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (816, 'Tentative', 134, 35, '01/26/2022', 'Nakamura Gakuen University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (817, 'Unassigned', 114, 183, '07/11/2022', 'Vidyasagar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (818, 'Assigned', 22, 214, '05/03/2022', 'Instituto Tecnológico de Sonora');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (819, 'Accepted', 15, 457, '01/08/2022', 'Islamic Azad University, Mashhad');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (820, 'Assigned', 140, 163, '04/03/2022', 'University of Health Sciences Antigua');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (821, 'Unassigned', 43, 248, '07/03/2022', 'Nivadhana University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (822, 'Accepted', 5, 247, '03/01/2022', 'Institute of Teachers Education, Sarawak');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (823, 'Unassigned', 43, 204, '03/01/2022', 'Omar Al-Mukhtar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (824, 'Accepted', 191, 190, '11/23/2021', 'Khana-e-Noor Institute of Higher Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (825, 'Tentative', 41, 452, '03/03/2022', 'Fiji National University ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (826, 'Accepted', 200, 291, '12/26/2021', 'Universidad Andina del Cusco');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (827, 'Assigned', 149, 373, '03/30/2022', 'Open University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (828, 'Unassigned', 91, 418, '05/02/2022', 'Universidad de La Serena');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (829, 'Accepted', 159, 299, '05/14/2022', 'Brest State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (830, 'Unassigned', 162, 474, '12/16/2021', 'Université de Caen Basse Normandie');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (831, 'Assigned', 35, 393, '01/06/2022', 'Universität Duisburg-Essen');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (832, 'Accepted', 33, 89, '02/24/2022', 'Technische Fachhochschule Berlin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (833, 'Unassigned', 172, 129, '04/16/2022', 'Hood College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (834, 'Unassigned', 100, 283, '12/03/2021', 'Odense University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (835, 'Accepted', 146, 328, '01/30/2022', 'Adamawa State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (836, 'Accepted', 16, 7, '06/04/2022', 'Aarhus School of Architecture');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (837, 'Unassigned', 98, 67, '11/21/2021', 'Institut Commercial de Nancy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (838, 'Tentative', 57, 49, '06/21/2022', 'IntelliTec College - Grand Junction');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (839, 'Accepted', 71, 206, '09/14/2022', 'Art Center College of Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (840, 'Accepted', 30, 175, '01/25/2022', 'Columbia College Chicago');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (841, 'Accepted', 75, 388, '10/17/2022', 'University of National and World Economy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (842, 'Assigned', 9, 148, '12/30/2021', 'Seokyeong University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (843, 'Assigned', 39, 53, '05/06/2022', 'Agricultural-Technical Academy in Olsztyn');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (844, 'Unassigned', 38, 412, '02/06/2022', 'Nangarhar University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (845, 'Accepted', 70, 136, '11/08/2021', 'Institute of Business Administration Sukkur');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (846, 'Accepted', 69, 394, '07/30/2022', 'National Military Academy of Afghanistan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (847, 'Accepted', 24, 470, '05/26/2022', 'Ulyanovsk State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (848, 'Assigned', 35, 167, '01/30/2022', 'Zambian Open University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (849, 'Unassigned', 84, 118, '03/23/2022', 'National University of Lesotho');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (850, 'Accepted', 4, 437, '07/21/2022', 'University of Texas of the Permian Basin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (851, 'Assigned', 197, 281, '11/04/2021', 'DeVry Institute of Technology, Irving');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (852, 'Assigned', 15, 198, '11/18/2021', 'Busitema University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (853, 'Unassigned', 135, 337, '03/05/2022', 'Istanbul Arel University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (854, 'Unassigned', 101, 287, '04/27/2022', 'National Ribat University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (855, 'Accepted', 127, 72, '06/25/2022', 'Universidad Autónoma de Madrid');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (856, 'Tentative', 160, 203, '11/30/2021', 'Universidad Técnica Latinoamericana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (857, 'Accepted', 122, 71, '08/22/2022', 'China USA Business University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (858, 'Unassigned', 12, 166, '11/23/2021', 'Deaconess College of Nursing');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (859, 'Accepted', 195, 42, '02/24/2022', 'Kawamura Gakuen Woman''s University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (860, 'Assigned', 59, 302, '02/19/2022', 'University of the Visual & Performing Arts');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (861, 'Accepted', 18, 201, '11/14/2021', 'Karachi Institute of Information Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (862, 'Assigned', 2, 455, '03/31/2022', 'Lyceum of the Philippines University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (863, 'Unassigned', 117, 151, '02/16/2022', 'Xiamen University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (864, 'Tentative', 27, 183, '03/29/2022', 'Anton de Kom University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (865, 'Assigned', 186, 192, '06/14/2022', 'Zaman University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (866, 'Assigned', 59, 472, '08/06/2022', 'Chittagong University of Engineering and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (867, 'Tentative', 189, 337, '07/24/2022', 'Instituto Politécnico de Portalegre');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (868, 'Assigned', 117, 103, '11/12/2021', 'Trisakti Institute of Tourism ');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (869, 'Tentative', 99, 61, '11/07/2021', 'Central Institute of Fisheries Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (870, 'Accepted', 169, 252, '03/06/2022', 'Samara State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (871, 'Accepted', 196, 54, '02/15/2022', 'Quinnipiac College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (872, 'Tentative', 104, 463, '10/18/2022', 'Universitas Tadulako');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (873, 'Tentative', 18, 304, '03/22/2022', 'Jilin Agricultural University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (874, 'Tentative', 29, 309, '08/17/2022', 'University of Findlay');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (875, 'Unassigned', 16, 218, '10/09/2022', 'Centro Universitario de Occidente');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (876, 'Accepted', 154, 227, '05/19/2022', 'European Business School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (877, 'Tentative', 130, 108, '04/09/2022', 'Universidad Nacional del Altiplano');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (878, 'Assigned', 197, 423, '07/25/2022', 'United States Coast Guard Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (879, 'Assigned', 95, 392, '08/15/2022', 'Brexgata University Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (880, 'Assigned', 34, 494, '12/22/2021', 'Averett College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (881, 'Assigned', 70, 447, '02/02/2022', 'Université Montesquieu (Bordeaux IV)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (882, 'Assigned', 57, 160, '04/10/2022', 'Finance Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (883, 'Tentative', 118, 92, '05/08/2022', 'Danish University of Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (884, 'Tentative', 85, 155, '01/24/2022', 'Southeastern Baptist College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (885, 'Accepted', 155, 48, '10/17/2022', 'University of Memphis');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (886, 'Tentative', 175, 7, '05/21/2022', 'Université de Kairouan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (887, 'Accepted', 164, 272, '08/24/2022', 'COMSATS Institute of Information Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (888, 'Accepted', 171, 253, '10/29/2022', 'Hiroshima Women''s University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (889, 'Tentative', 28, 56, '08/04/2022', 'Comenius University in Bratislava');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (890, 'Unassigned', 180, 9, '11/28/2021', 'Ferrum College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (891, 'Accepted', 161, 64, '03/18/2022', 'Mother Teresa Women''s University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (892, 'Tentative', 119, 318, '11/28/2021', 'Cleveland State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (893, 'Tentative', 45, 180, '02/25/2022', 'Baltic International Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (894, 'Assigned', 134, 119, '08/09/2022', 'Tokyo Metropolitan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (895, 'Accepted', 106, 377, '02/20/2022', 'University of Wolverhampton');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (896, 'Assigned', 184, 138, '12/21/2021', 'Tashkent Automobile and Roads Institute');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (897, 'Accepted', 86, 65, '11/12/2021', 'Poznan School of Banking');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (898, 'Assigned', 132, 377, '10/10/2022', 'University of Namibia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (899, 'Assigned', 137, 184, '03/04/2022', 'Ufa State Petroleum Technological University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (900, 'Tentative', 177, 350, '02/26/2022', 'Tennessee Technological University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (901, 'Assigned', 20, 476, '09/05/2022', 'Gebze Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (902, 'Accepted', 34, 26, '01/28/2022', 'FTMS Global Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (903, 'Tentative', 41, 123, '07/19/2022', 'American World University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (904, 'Assigned', 61, 348, '12/01/2021', 'Universitas Kristen Indonesia Tomohon');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (905, 'Assigned', 77, 4, '03/13/2022', 'Universidade Tecnica de Angola');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (906, 'Accepted', 96, 234, '06/26/2022', 'Ukrainian Academy of Banking');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (907, 'Tentative', 87, 251, '10/15/2022', 'Wayne State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (908, 'Unassigned', 186, 284, '02/19/2022', 'Universidad de San Pedro Sula');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (909, 'Accepted', 32, 410, '09/26/2022', 'Rhode Island School of Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (910, 'Assigned', 36, 240, '07/01/2022', 'Mankato State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (911, 'Assigned', 170, 243, '02/09/2022', 'University of Wisconsin - Eau Claire');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (912, 'Accepted', 88, 300, '11/22/2021', 'Hannam University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (913, 'Assigned', 76, 166, '11/10/2021', 'Pacific Adventist University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (914, 'Accepted', 123, 294, '10/09/2022', 'Pázmány Péter Catholic University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (915, 'Unassigned', 3, 436, '10/01/2022', 'University of Miami');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (916, 'Unassigned', 118, 131, '02/14/2022', 'Brown University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (917, 'Assigned', 30, 324, '03/12/2022', 'Ashkelon Academic College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (918, 'Assigned', 173, 173, '12/13/2021', 'Fukuoka University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (919, 'Accepted', 40, 4, '03/04/2022', 'Vologda State Pedagogical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (920, 'Unassigned', 35, 327, '03/29/2022', 'ECAM - Institut Supérieur Industriel');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (921, 'Assigned', 185, 392, '06/07/2022', 'Johnson State College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (922, 'Accepted', 43, 166, '10/17/2022', 'University of New South Wales');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (923, 'Assigned', 100, 384, '04/28/2022', 'Liaquat University of Medical & Health Sciences Jamshoro');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (924, 'Tentative', 140, 209, '11/14/2021', 'Isfahan University of Medical Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (925, 'Assigned', 130, 36, '08/19/2022', 'Ajayi Crowther University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (926, 'Tentative', 199, 477, '11/04/2021', 'University of Transport and Communications');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (927, 'Tentative', 10, 177, '12/31/2021', 'Universität Bayreuth');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (928, 'Assigned', 119, 260, '01/11/2022', 'Kuwait International Law School');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (929, 'Accepted', 170, 107, '04/19/2022', 'Ecole Supérieure de Commerce de Clermont-Ferrand');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (930, 'Tentative', 151, 159, '05/25/2022', 'Waynesburg College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (931, 'Assigned', 198, 490, '08/19/2022', 'Fachhochschule Westküste, Hochschule für Wirtschaft und Technik');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (932, 'Assigned', 72, 210, '04/17/2022', 'Tri-College University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (933, 'Accepted', 198, 454, '07/24/2022', 'Fine Arts Academy "Jan Matejko" in Cracow');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (934, 'Assigned', 85, 167, '11/30/2021', 'Rice University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (935, 'Accepted', 21, 141, '06/19/2022', 'ITT Technical Institute Maitland');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (936, 'Accepted', 14, 214, '03/17/2022', 'South Dakota School of Mines and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (937, 'Unassigned', 41, 227, '05/11/2022', 'Universidad Dominicana O&M');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (938, 'Accepted', 175, 427, '12/05/2021', 'Dong Eui University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (939, 'Assigned', 25, 2, '11/19/2021', 'University of Petra');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (940, 'Assigned', 103, 228, '10/29/2022', 'Nakhchivan Private University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (941, 'Accepted', 67, 365, '02/21/2022', 'Université de Toulouse');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (942, 'Unassigned', 164, 262, '10/02/2022', 'Edinboro University of Pennsylvania');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (943, 'Assigned', 18, 124, '09/01/2022', 'Kotelawala Defence University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (944, 'Unassigned', 4, 284, '05/23/2022', 'Jerusalem University College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (945, 'Tentative', 15, 153, '02/01/2022', 'Mahidol University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (946, 'Tentative', 164, 327, '07/30/2022', 'Southern Alberta Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (947, 'Unassigned', 141, 158, '06/13/2022', 'Kendall College of Art and Design');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (948, 'Tentative', 50, 374, '02/28/2022', 'Pädagogische Hochschule Freiburg');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (949, 'Assigned', 160, 248, '12/07/2021', 'Azerbaijan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (950, 'Unassigned', 145, 393, '06/03/2022', 'Tomsk State University of Control Systems and Radioelectronics');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (951, 'Assigned', 150, 113, '11/15/2021', 'University of Plymouth');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (952, 'Tentative', 89, 99, '06/27/2022', 'Pennsylvania State University Delaware County');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (953, 'Unassigned', 29, 113, '02/27/2022', 'Tokushima University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (954, 'Assigned', 35, 277, '07/02/2022', 'Escuela Superior de Gestion Comercial y Marketing (ESIC)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (955, 'Assigned', 122, 494, '03/19/2022', 'Universidad de la Integración de las Americas (UNIDAD)');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (956, 'Assigned', 69, 307, '04/08/2022', 'College of Nursing and Allied Health Scinces');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (957, 'Tentative', 137, 43, '10/07/2022', 'Universidad Autónoma de Aguascalientes');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (958, 'Accepted', 188, 164, '03/09/2022', 'University of North Bengal');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (959, 'Unassigned', 153, 359, '08/05/2022', 'Institute of Teachers Education, Tun Hussein Onn');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (960, 'Accepted', 21, 218, '05/06/2022', 'Maharishi Dayanand University, Rohtak (Haryana )');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (961, 'Tentative', 35, 48, '03/30/2022', 'Technische Universität Bergakademie Freiberg');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (962, 'Accepted', 158, 83, '06/20/2022', 'Universitas Tidar Magelang');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (963, 'Unassigned', 24, 157, '03/20/2022', 'Fashion Institute of New York');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (964, 'Tentative', 128, 467, '01/27/2022', 'Krasnoyarsk State Technical University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (965, 'Accepted', 174, 240, '11/15/2021', 'Debrecen University of Agricultural Sciences');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (966, 'Tentative', 42, 101, '05/18/2022', 'University of South Florida');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (967, 'Unassigned', 95, 168, '12/22/2021', 'The Corcoran College of Art');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (968, 'Tentative', 196, 476, '06/07/2022', 'Bharathidasan University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (969, 'Tentative', 142, 296, '04/11/2022', 'Panjab University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (970, 'Accepted', 188, 242, '09/10/2022', 'Universitas Nusa Cendana');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (971, 'Accepted', 107, 413, '06/07/2022', 'Jomo Kenyatta University of Agriculture and Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (972, 'Tentative', 54, 152, '01/30/2022', 'Universitas Riau');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (973, 'Accepted', 124, 131, '04/06/2022', 'Tokyo Women''s College of Physical Education');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (974, 'Accepted', 126, 126, '03/12/2022', 'Hobe Sound Bible College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (975, 'Tentative', 84, 471, '03/03/2022', 'China Foreign Affairs University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (976, 'Unassigned', 41, 199, '05/26/2022', 'Kherson State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (977, 'Accepted', 137, 289, '05/13/2022', 'Chongqing University of Post and Telecommunications');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (978, 'Accepted', 189, 196, '12/19/2021', 'Polytechnic Institute of Turin');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (979, 'Unassigned', 138, 470, '02/18/2022', 'Universitas Simalungun');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (980, 'Accepted', 69, 361, '09/06/2022', 'Surugadai University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (981, 'Unassigned', 120, 134, '05/28/2022', 'Osaka Electro-Communication University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (982, 'Assigned', 97, 195, '05/19/2022', 'Graduate University for Advanced Studies');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (983, 'Tentative', 92, 251, '10/27/2022', 'Tokyo Metropolitan Institute of Technology');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (984, 'Accepted', 59, 290, '05/25/2022', 'University of Transport and Communications');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (985, 'Accepted', 30, 316, '11/14/2021', 'Kagoshima Immaculate Heart University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (986, 'Assigned', 146, 180, '01/02/2022', 'Redeemer College');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (987, 'Unassigned', 5, 16, '02/15/2022', 'Institut des Hautes Etudes de Management');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (988, 'Assigned', 45, 48, '05/16/2022', 'Wakkanai Hokusei Gakuen University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (989, 'Unassigned', 11, 282, '07/08/2022', 'Tennessee State University');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (990, 'Unassigned', 60, 462, '07/23/2022', 'University of Bihac');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (991, 'Assigned', 114, 49, '11/01/2021', 'New York Film Academy');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (992, 'Tentative', 85, 96, '11/13/2021', 'Bharath Institue Of Higher Education & Research');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (993, 'Assigned', 73, 111, '05/04/2022', 'Universidad Nacional de San Juan');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (994, 'Assigned', 119, 321, '05/27/2022', 'Universidad Nacional de La Matanza');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (995, 'Assigned', 177, 286, '07/16/2022', 'Fundación Universitaria San Martín');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (996, 'Unassigned', 104, 411, '06/29/2022', 'Judson College Marion');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (997, 'Unassigned', 8, 409, '01/26/2022', 'Odessa State Academy of Construction and Architecture');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (998, 'Tentative', 14, 388, '01/25/2022', 'Polytechnic of Namibia');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (999, 'Unassigned', 31, 269, '12/24/2021', 'Indian Institute of Management, Tiruchirappalli');
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID, gameDate, teamNames) values (1000, 'Unassigned', 108, 377, '11/08/2021', 'California State University, Sacramento');

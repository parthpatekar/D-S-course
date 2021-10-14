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

CREATE TABLE IF NOT EXISTS Assignments (
    assignmentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assignmentStatus varchar(255) NOT NULL,
    refereeID int,
    gameID int,
    FOREIGN KEY (refereeID) REFERENCES Referees(refereeID) ON UPDATE CASCADE,
    FOREIGN KEY (gameID) REFERENCES Games(gameID) ON UPDATE CASCADE
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
    

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (1, 3, 1, '2021-03-29 10:30:46');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (2, 2, 18, '2021-09-04 11:40:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (3, 5, 9, '2022-01-30 09:42:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (4, 1, 6, '2020-10-30 16:12:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (5, 4, 12, '2020-12-24 04:38:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (6, 1, 3, '2020-11-03 04:23:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (7, 5, 1, '2022-02-08 09:56:49');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (8, 1, 13, '2021-05-16 01:42:09');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (9, 5, 12, '2022-04-06 23:27:24');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (10, 1, 18, '2021-01-2611:14:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (11, 5, 9, '2021-11-30 06:30:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (12, 2, 1, '2021-01-27 04:46:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (13, 4, 1, '2020-10-14 19:51:09');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (14, 5, 3, '2021-08-25 11:41:33');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (15, 1, 11, '2022-01-2415:16:33');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (16, 1, 6, '2021-08-06 16:45:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (17, 2, 4, '2022-02-09 06:28:53');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (18, 3, 13, '2020-11-0320:17:08');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (19, 3, 13, '2022-02-1511:43:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (20, 2, 5, '2021-03-21 18:42:05');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (21, 1, 15, '2021-01-0112:54:13');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (22, 5, 7, '2021-08-10 09:11:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (23, 4, 18, '2022-08-1620:31:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (24, 3, 9, '2022-07-05 19:39:25');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (25, 4, 6, '2022-05-08 19:09:01');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (26, 2, 12, '2021-10-0209:12:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (27, 1, 19, '2021-10-0120:48:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (28, 1, 13, '2021-05-0303:08:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (29, 1, 9, '2021-11-07 04:38:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (30, 4, 12, '2021-08-0622:29:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (31, 3, 15, '2021-01-0301:24:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (32, 1, 3, '2021-01-29 17:10:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (33, 1, 2, '2021-01-08 09:05:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (34, 5, 4, '2020-10-21 08:17:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (35, 5, 8, '2021-01-19 11:02:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (36, 2, 4, '2021-11-11 11:23:42');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (37, 3, 14, '2022-09-0713:13:53');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (38, 5, 8, '2022-08-31 04:22:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (39, 2, 16, '2022-01-0803:49:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (40, 5, 4, '2022-07-04 20:22:48');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (41, 5, 18, '2022-05-2917:57:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (42, 2, 4, '2021-09-07 12:58:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (43, 2, 10, '2022-03-2823:10:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (44, 2, 12, '2021-04-2416:23:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (45, 3, 1, '2021-12-31 19:23:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (46, 3, 2, '2020-12-03 06:54:16');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (47, 5, 15, '2022-05-1110:59:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (48, 5, 4, '2021-01-23 05:59:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (49, 1, 4, '2021-08-26 07:23:19');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (50, 2, 4, '2021-01-04 14:51:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (51, 4, 17, '2021-05-1618:45:08');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (52, 1, 19, '2022-04-2708:00:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (53, 3, 5, '2022-07-26 20:17:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (54, 1, 20, '2020-11-03
13:07:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (55, 1, 5, '2021-07-12 00:54:05');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (56, 3, 9, '2022-09-24 08:48:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (57, 3, 4, '2021-07-17 18:48:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (58, 5, 18, '2021-07-1718:35:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (59, 4, 16, '2021-03-1808:42:00');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (60, 2, 12, '2021-10-0109:00:16');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (61, 5, 1, '2021-02-06 05:32:24');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (62, 3, 4, '2022-09-17 07:53:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (63, 1, 7, '2022-09-29 15:11:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (64, 1, 11, '2021-04-1508:43:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (65, 1, 1, '2022-07-26 10:11:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (66, 2, 14, '2021-02-0317:48:16');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (67, 5, 9, '2022-02-15 15:05:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (68, 1, 18, '2022-05-2805:05:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (69, 3, 2, '2021-03-31 00:49:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (70, 4, 12, '2022-03-2018:34:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (71, 4, 1, '2021-07-27 20:34:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (72, 2, 1, '2022-07-13 06:09:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (73, 4, 4, '2022-09-11 05:05:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (74, 3, 13, '2020-10-2819:23:46');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (75, 4, 15, '2020-11-2113:48:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (76, 1, 3, '2022-09-14 22:26:01');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (77, 4, 3, '2021-01-25 06:20:23');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (78, 3, 17, '2021-01-2115:00:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (79, 2, 3, '2020-12-17 00:30:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (80, 1, 12, '2022-01-1713:41:24');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (81, 4, 12, '2021-05-2013:58:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (82, 4, 3, '2022-07-13 21:11:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (83, 3, 10, '2021-08-3122:11:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (84, 3, 9, '2022-03-29 14:53:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (85, 1, 15, '2021-04-2504:34:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (86, 2, 1, '2021-02-10 08:10:01');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (87, 2, 10, '2022-08-0622:47:05');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (88, 5, 19, '2022-03-2610:11:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (89, 1, 9, '2022-07-12 08:22:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (90, 3, 12, '2021-05-0202:44:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (91, 1, 15, '2021-06-1311:55:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (92, 3, 20, '2022-01-0103:03:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (93, 5, 18, '2021-01-0700:07:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (94, 5, 13, '2021-06-2919:26:35');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (95, 2, 13, '2021-03-1819:47:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (96, 4, 6, '2022-09-22 02:00:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (97, 1, 6, '2020-11-07 15:02:08');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (98, 1, 6, '2021-12-26 18:16:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (99, 5, 12, '2022-04-2816:43:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (100, 1, 14, '2020-11-11 23:07:05');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (101, 3, 20, '2022-04-28 05:34:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (102, 2, 6, '2020-10-0903:31:35');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (103, 3, 4, '2022-03-0504:04:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (104, 1, 5, '2021-08-2715:14:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (105, 3, 2, '2021-12-0622:51:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (106, 2, 5, '2020-12-1819:50:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (107, 1, 14, '2021-07-10 17:05:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (108, 3, 10, '2021-01-14 00:07:19');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (109, 1, 17, '2022-09-13 13:09:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (110, 2, 16, '2021-09-10 03:44:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (111, 5, 3, '2022-03-2321:49:59');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (112, 4, 16, '2020-12-28 10:40:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (113, 2, 18, '2022-06-
24 21:26:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (114, 3, 3, '2021-07-2404:03:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (115, 3, 7, '2021-12-1901:04:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (116, 1, 14, '2021-10-09 11:42:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (117, 5, 9, '2021-01-0117:03:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (118, 5, 7, '2022-06-2013:22:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (119, 1, 6, '2021-07-2008:01:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (120, 5, 8, '2022-04-2210:47:20');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (121, 3, 16, '2022-01-11 15:44:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (122, 3, 7, '2020-11-1614:48:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (123, 3, 18, '2022-02-28 17:08:33');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (124, 5, 2, '2022-05-0500:24:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (125, 5, 4, '2021-07-1200:45:06');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (126, 3, 10, '2022-09-11 21:34:14');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (127, 3, 12, '2021-03-21 21:05:14');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (128, 4, 13, '2021-04-28 19:46:20');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (129, 4, 3, '2022-10-0204:28:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (130, 2, 3, '2022-01-2511:44:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (131, 1, 9, '2021-03-0922:01:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (132, 4, 19, '2020-12-27 20:29:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (133, 4, 18, '2022-07-20 06:40:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (134, 1, 12, '2022-05-03 19:13:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (135, 5, 11, '2022-02-06 22:54:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (136, 1, 6, '2020-12-1608:06:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (137, 3, 6, '2021-11-1206:39:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (138, 1, 5, '2022-05-1313:34:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (139, 3, 14, '2022-06-01 13:22:08');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (140, 1, 14, '2021-11-23 05:48:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (141, 1, 5, '2022-01-0914:58:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (142, 1, 13, '2022-02-20 00:25:09');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (143, 1, 17, '2021-01-25 23:41:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (144, 2, 4, '2021-04-1700:12:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (145, 2, 18, '2021-10-11 06:15:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (146, 5, 14, '2021-11-10 22:00:14');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (147, 2, 13, '2022-09-13 06:59:20');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (148, 5, 7, '2021-08-1304:25:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (149, 4, 2, '2020-11-1317:00:20');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (150, 3, 2, '2021-04-3020:06:13');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (151, 4, 10, '2021-03-09 19:52:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (152, 3, 11, '2021-09-18 16:18:13');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (153, 1, 4, '2021-01-2602:11:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (154, 2, 11, '2022-05-16 09:35:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (155, 1, 9, '2021-12-1008:45:20');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (156, 2, 7, '2022-07-2103:44:14');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (157, 2, 20, '2022-08-23 10:05:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (158, 1, 16, '2021-09-13 15:23:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (159, 3, 9, '2020-10-2109:39:00');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (160, 2, 13, '2021-06-28 02:00:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (161, 4, 6, '2022-05-2523:40:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (162, 4, 20, '2022-07-08 21:27:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (163, 1, 8, '2022-05-1410:19:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (164, 2, 7, '2022-07-2513:48:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (165, 3, 7, '2022-08-0203:38:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (166, 2, 15, '2022-05-22 14:11:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (167, 1, 19, '2022-08-22 11:20:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (168, 2, 4, '2022-03-1406:20:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (169, 2, 16, '2021-12-24 12:39:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (170, 4, 4, '2022-07-2206:04:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (171, 2, 14, '2020-12-18 19:55:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (172, 3, 3, '2021-04-30
17:55:46');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (173, 5, 19, '2022-03-07 22:24:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (174, 4, 13, '2021-03-04 06:56:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (175, 2, 14, '2022-01-21 14:39:42');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (176, 5, 13, '2021-07-12 04:15:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (177, 5, 11, '2022-06-28 05:56:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (178, 1, 3, '2022-02-2113:56:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (179, 3, 9, '2021-06-2523:03:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (180, 5, 19, '2022-02-22 19:35:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (181, 4, 4, '2020-12-0421:49:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (182, 4, 9, '2021-12-0605:54:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (183, 5, 13, '2021-08-12 13:20:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (184, 1, 7, '2021-04-1710:19:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (185, 3, 20, '2022-06-14 04:21:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (186, 5, 16, '2022-04-26 07:55:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (187, 2, 3, '2022-09-1300:47:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (188, 3, 17, '2022-02-03 16:09:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (189, 1, 20, '2022-07-04 07:40:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (190, 1, 13, '2021-10-20 12:45:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (191, 4, 3, '2022-09-2015:37:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (192, 5, 3, '2022-03-1606:20:46');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (193, 2, 11, '2022-07-05 18:57:48');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (194, 3, 9, '2021-04-2419:36:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (195, 1, 13, '2021-02-05 12:31:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (196, 5, 16, '2021-03-30 13:06:33');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (197, 2, 11, '2022-01-24 09:50:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (198, 5, 12, '2022-08-25 18:39:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (199, 2, 8, '2021-02-0609:58:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (200, 3, 17, '2021-07-08 11:04:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (201, 3, 10, '2021-02-09 10:08:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (202, 2, 8, '2022-07-0808:03:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (203, 1, 11, '2022-03-11 11:08:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (204, 1, 6, '2021-12-2605:18:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (205, 1, 9, '2022-05-2311:40:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (206, 4, 18, '2020-10-09 05:02:25');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (207, 1, 14, '2021-01-23 20:35:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (208, 1, 17, '2021-04-05 10:38:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (209, 4, 11, '2021-01-21 08:56:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (210, 4, 17, '2021-07-06 00:26:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (211, 1, 11, '2020-12-29 02:42:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (212, 1, 4, '2021-07-1501:52:16');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (213, 5, 10, '2021-10-03 05:40:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (214, 5, 10, '2021-08-06 03:10:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (215, 5, 9, '2021-10-2813:51:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (216, 4, 20, '2022-04-21 16:51:00');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (217, 3, 5, '2021-02-1811:59:48');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (218, 4, 20, '2020-12-05 10:41:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (219, 1, 18, '2021-06-07 22:07:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (220, 2, 5, '2021-12-2302:15:06');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (221, 4, 2, '2022-06-0311:21:18');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (222, 3, 11, '2021-06-18 16:14:33');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (223, 5, 9, '2020-10-1007:11:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (224, 4, 13, '2021-02-12 04:10:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (225, 4, 3, '2022-09-2618:29:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (226, 5, 4, '2022-10-0209:56:42');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (227, 1, 7, '2021-01-2707:29:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (228, 5, 15, '2022-04-08 08:34:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (229, 5, 12, '2021-08-30 22:49:16');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (230, 3, 1, '2021-07-3117:38:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (231, 5, 5, '2021-06-08
00:37:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (232, 3, 4, '2021-06-1221:51:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (233, 3, 1, '2021-09-2206:24:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (234, 4, 20, '2021-05-28 08:14:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (235, 2, 17, '2022-06-27 16:58:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (236, 4, 10, '2022-02-07 12:22:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (237, 4, 17, '2022-04-16 05:06:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (238, 3, 20, '2022-06-14 08:27:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (239, 3, 11, '2020-12-22 07:20:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (240, 3, 19, '2020-11-03 11:54:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (241, 1, 9, '2022-03-2902:40:33');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (242, 2, 19, '2022-02-02 21:56:35');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (243, 5, 6, '2022-01-2404:32:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (244, 1, 3, '2022-07-0107:56:13');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (245, 5, 12, '2021-05-30 08:06:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (246, 4, 9, '2022-06-1420:48:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (247, 1, 4, '2021-07-2121:54:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (248, 5, 12, '2021-12-30 21:11:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (249, 5, 6, '2022-03-1913:41:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (250, 1, 2, '2022-04-1122:38:09');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (251, 3, 5, '2020-11-1202:23:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (252, 3, 6, '2021-07-2717:52:59');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (253, 2, 2, '2021-11-2522:48:59');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (254, 1, 10, '2020-12-15 03:40:35');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (255, 3, 14, '2022-08-02 13:15:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (256, 5, 11, '2022-04-19 09:41:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (257, 3, 15, '2021-06-29 11:15:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (258, 5, 17, '2022-03-01 22:27:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (259, 4, 4, '2021-02-2709:12:00');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (260, 3, 20, '2022-01-15 22:15:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (261, 3, 4, '2021-02-0722:15:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (262, 4, 19, '2021-06-09 01:44:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (263, 5, 10, '2021-10-27 13:24:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (264, 2, 15, '2022-02-08 02:29:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (265, 4, 16, '2021-03-04 00:55:13');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (266, 1, 1, '2021-02-0921:06:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (267, 2, 7, '2021-02-1810:59:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (268, 2, 7, '2021-04-1502:18:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (269, 3, 16, '2022-06-15 18:43:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (270, 2, 18, '2022-08-01 03:55:42');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (271, 2, 14, '2021-02-14 03:56:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (272, 2, 4, '2022-04-1804:15:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (273, 5, 14, '2021-04-27 18:47:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (274, 3, 5, '2021-12-3016:12:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (275, 4, 7, '2022-08-0112:09:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (276, 4, 10, '2022-06-22 04:37:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (277, 2, 10, '2022-02-13 21:02:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (278, 3, 16, '2022-06-12 03:20:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (279, 5, 17, '2021-04-12 05:22:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (280, 4, 10, '2021-01-25 05:57:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (281, 4, 17, '2022-09-02 00:56:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (282, 5, 13, '2022-04-04 12:23:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (283, 5, 12, '2021-12-17 23:25:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (284, 2, 5, '2020-12-0901:56:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (285, 1, 11, '2021-08-16 16:16:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (286, 1, 16, '2020-12-26 21:32:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (287, 1, 19, '2021-09-18 13:17:42');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (288, 1, 16, '2021-03-10 07:49:13');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (289, 2, 12, '2021-02-26 18:45:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (290, 3, 8, '2022-01-29
07:35:14');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (291, 4, 5, '2022-02-2217:29:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (292, 4, 1, '2021-07-2215:07:46');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (293, 4, 15, '2020-12-11 09:32:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (294, 2, 3, '2022-09-0300:40:23');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (295, 1, 19, '2022-01-06 22:18:09');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (296, 5, 10, '2021-04-09 22:02:18');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (297, 2, 6, '2020-12-2302:49:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (298, 3, 19, '2021-02-06 15:48:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (299, 2, 1, '2022-07-2205:10:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (300, 4, 8, '2020-10-2414:03:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (301, 4, 6, '2022-07-1321:06:42');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (302, 5, 19, '2021-02-06 04:12:59');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (303, 1, 12, '2021-07-28 07:20:48');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (304, 1, 18, '2021-03-16 16:21:01');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (305, 1, 14, '2021-04-11 08:07:06');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (306, 1, 10, '2022-01-26 06:02:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (307, 3, 15, '2022-07-28 02:10:19');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (308, 4, 11, '2021-10-25 21:29:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (309, 3, 8, '2022-09-2317:13:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (310, 2, 20, '2020-11-25 20:11:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (311, 4, 11, '2020-11-25 17:39:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (312, 5, 1, '2021-04-0709:52:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (313, 1, 2, '2021-11-1907:53:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (314, 5, 6, '2021-07-3120:42:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (315, 3, 2, '2021-02-0909:27:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (316, 2, 12, '2021-04-28 13:37:18');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (317, 1, 5, '2021-11-1721:32:06');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (318, 3, 10, '2022-01-30 19:06:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (319, 3, 7, '2020-12-2920:14:20');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (320, 1, 14, '2020-11-14 09:02:14');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (321, 2, 16, '2020-11-20 02:34:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (322, 4, 1, '2021-11-1910:03:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (323, 3, 13, '2020-10-26 05:50:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (324, 4, 3, '2021-02-0718:14:20');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (325, 4, 19, '2021-04-18 14:40:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (326, 5, 9, '2022-08-1606:03:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (327, 3, 12, '2022-02-28 13:53:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (328, 3, 17, '2021-07-02 20:33:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (329, 4, 5, '2021-07-3117:53:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (330, 2, 5, '2022-09-2809:27:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (331, 5, 16, '2022-07-21 19:14:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (332, 3, 8, '2021-09-1909:43:09');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (333, 5, 15, '2021-12-02 09:34:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (334, 5, 14, '2022-09-26 19:51:11');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (335, 3, 2, '2022-06-0120:36:24');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (336, 5, 4, '2021-01-0903:32:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (337, 1, 19, '2022-04-10 13:09:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (338, 3, 18, '2020-10-14 20:01:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (339, 5, 14, '2021-02-08 01:20:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (340, 1, 16, '2021-10-25 11:26:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (341, 3, 17, '2022-04-08 06:33:46');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (342, 4, 20, '2022-01-17 09:19:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (343, 2, 15, '2022-01-29 14:09:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (344, 2, 18, '2022-03-13 21:15:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (345, 2, 18, '2022-03-11 03:28:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (346, 3, 16, '2021-05-01 10:41:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (347, 5, 8, '2021-02-2505:59:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (348, 2, 9, '2021-03-2313:39:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (349, 1, 1, '2021-11-18
09:12:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (350, 4, 12, '2021-09-22 01:15:25');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (351, 1, 8, '2020-11-2313:37:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (352, 2, 2, '2022-02-1506:14:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (353, 3, 17, '2022-09-21 07:51:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (354, 1, 13, '2020-10-25 16:02:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (355, 1, 13, '2022-06-29 02:14:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (356, 5, 14, '2022-02-28 18:59:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (357, 2, 17, '2021-03-07 22:03:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (358, 5, 6, '2020-11-2803:12:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (359, 1, 2, '2020-12-0613:49:49');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (360, 5, 11, '2022-05-22 19:10:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (361, 1, 10, '2020-10-10 05:47:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (362, 2, 2, '2022-09-0904:10:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (363, 4, 6, '2021-09-0406:25:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (364, 3, 2, '2022-03-2220:28:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (365, 2, 7, '2020-11-2108:16:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (366, 2, 10, '2022-03-16 18:08:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (367, 2, 20, '2021-12-01 02:43:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (368, 3, 6, '2022-07-1915:34:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (369, 4, 12, '2022-07-22 17:37:25');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (370, 1, 12, '2022-08-11 03:02:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (371, 1, 6, '2021-09-1605:03:04');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (372, 3, 13, '2021-12-28 17:51:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (373, 3, 9, '2022-03-2116:14:49');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (374, 2, 8, '2020-12-2513:06:16');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (375, 5, 2, '2020-11-1919:51:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (376, 2, 14, '2021-03-10 15:38:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (377, 2, 4, '2021-10-2609:25:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (378, 1, 15, '2022-06-19 05:03:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (379, 5, 20, '2021-12-03 12:43:13');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (380, 1, 7, '2021-12-2102:29:23');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (381, 5, 11, '2022-03-26 16:03:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (382, 5, 6, '2022-08-1405:28:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (383, 2, 3, '2021-11-1113:53:08');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (384, 3, 10, '2021-02-13 01:07:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (385, 1, 1, '2022-07-2715:32:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (386, 4, 16, '2022-03-19 10:46:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (387, 1, 9, '2022-06-0423:16:05');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (388, 4, 14, '2021-04-17 04:13:39');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (389, 3, 5, '2021-01-0303:12:49');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (390, 1, 12, '2022-06-06 22:33:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (391, 2, 7, '2021-03-2605:45:12');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (392, 1, 6, '2021-03-0705:19:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (393, 2, 15, '2021-06-29 07:51:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (394, 2, 2, '2022-05-1023:39:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (395, 2, 2, '2022-03-0801:05:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (396, 5, 3, '2022-02-0608:05:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (397, 5, 3, '2021-05-0412:01:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (398, 5, 7, '2021-01-0319:47:42');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (399, 5, 13, '2020-12-26 04:02:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (400, 5, 13, '2022-07-22 21:50:53');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (401, 3, 2, '2020-12-2906:04:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (402, 2, 4, '2021-11-0616:53:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (403, 5, 18, '2021-08-27 01:19:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (404, 5, 11, '2021-01-23 01:23:53');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (405, 3, 12, '2021-09-08 16:14:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (406, 5, 4, '2021-11-2914:58:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (407, 2, 10, '2022-08-15 00:30:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (408, 3, 14, '2021-08-
12 23:18:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (409, 5, 17, '2022-09-02 09:32:01');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (410, 2, 14, '2022-02-11 17:20:25');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (411, 5, 18, '2021-07-25 04:47:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (412, 2, 1, '2022-01-1208:12:35');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (413, 5, 18, '2021-04-03 09:31:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (414, 4, 11, '2022-07-26 02:17:05');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (415, 2, 9, '2021-07-2402:05:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (416, 3, 11, '2022-04-03 09:56:52');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (417, 3, 10, '2022-07-19 11:49:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (418, 5, 14, '2022-09-28 10:14:41');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (419, 3, 9, '2020-10-0423:07:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (420, 5, 10, '2022-01-23 19:45:49');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (421, 4, 9, '2022-01-1811:51:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (422, 5, 3, '2021-02-0217:22:16');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (423, 5, 6, '2021-07-1903:16:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (424, 4, 7, '2020-10-2112:02:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (425, 4, 17, '2022-04-26 14:43:19');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (426, 2, 8, '2020-11-1315:04:50');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (427, 3, 8, '2022-01-2406:52:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (428, 1, 3, '2022-07-2908:43:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (429, 4, 5, '2020-10-0718:53:28');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (430, 5, 4, '2021-01-2411:53:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (431, 3, 11, '2021-03-30 11:02:59');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (432, 2, 2, '2022-03-0412:11:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (433, 5, 14, '2022-01-25 05:44:35');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (434, 5, 14, '2021-03-02 08:45:06');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (435, 3, 8, '2021-10-2108:23:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (436, 5, 15, '2021-02-15 07:53:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (437, 2, 6, '2021-07-0600:36:56');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (438, 1, 6, '2021-06-0607:41:36');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (439, 2, 18, '2020-12-23 03:04:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (440, 1, 10, '2021-12-16 12:18:27');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (441, 5, 5, '2022-04-2822:52:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (442, 2, 10, '2021-03-17 04:57:48');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (443, 2, 19, '2021-07-16 08:15:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (444, 1, 2, '2021-01-2013:05:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (445, 4, 11, '2021-01-31 09:22:24');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (446, 4, 17, '2021-03-21 03:11:24');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (447, 3, 19, '2021-06-24 20:30:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (448, 3, 12, '2021-05-19 06:37:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (449, 3, 12, '2021-04-18 23:04:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (450, 2, 12, '2020-12-17 04:36:54');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (451, 2, 11, '2022-06-23 23:05:19');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (452, 3, 3, '2021-08-2019:33:59');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (453, 4, 4, '2021-11-0704:07:45');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (454, 5, 19, '2022-05-13 19:06:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (455, 3, 4, '2021-01-1706:03:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (456, 3, 20, '2022-06-10 17:35:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (457, 4, 6, '2021-08-0102:39:09');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (458, 4, 5, '2021-08-1816:33:00');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (459, 1, 8, '2021-09-1620:54:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (460, 1, 20, '2022-05-15 02:37:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (461, 3, 19, '2021-04-05 12:56:17');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (462, 3, 1, '2021-09-1903:14:44');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (463, 4, 19, '2021-05-26 15:30:01');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (464, 3, 20, '2022-08-14 23:07:53');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (465, 3, 7, '2022-04-2822:50:22');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (466, 5, 4, '2021-01-1418:12:18');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (467, 5, 9, '2021-11-21
14:01:03');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (468, 2, 5, '2022-09-2421:05:32');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (469, 5, 6, '2022-03-0212:41:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (470, 3, 3, '2022-05-0720:46:47');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (471, 5, 15, '2021-01-14 09:27:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (472, 5, 17, '2022-04-30 18:19:21');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (473, 4, 14, '2021-06-28 17:16:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (474, 3, 12, '2021-11-06 01:13:57');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (475, 2, 15, '2020-10-21 03:35:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (476, 4, 18, '2022-08-15 23:06:02');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (477, 2, 1, '2021-12-0505:36:26');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (478, 5, 9, '2021-05-2410:06:24');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (479, 2, 3, '2022-01-0202:25:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (480, 2, 8, '2021-09-2415:59:33');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (481, 3, 3, '2020-12-1518:44:43');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (482, 2, 20, '2021-05-30 13:59:15');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (483, 5, 3, '2021-10-1817:44:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (484, 4, 7, '2020-10-1206:07:58');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (485, 3, 7, '2020-10-2307:22:38');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (486, 1, 20, '2021-06-18 06:37:10');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (487, 2, 16, '2021-12-19 22:58:34');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (488, 4, 7, '2021-05-1116:11:07');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (489, 1, 17, '2022-04-11 02:24:37');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (490, 2, 4, '2022-07-2922:50:29');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (491, 4, 7, '2021-10-0416:18:40');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (492, 3, 4, '2022-09-0310:53:53');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (493, 5, 16, '2021-04-19 10:21:35');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (494, 5, 19, '2022-05-03 18:58:30');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (495, 5, 7, '2020-10-2018:15:25');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (496, 2, 9, '2020-12-0716:56:48');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (497, 4, 11, '2022-08-10 00:03:31');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (498, 3, 2, '2022-07-2515:52:51');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (499, 4, 19, '2021-12-05 04:25:55');

insert into
    Games (gameID, gameLevel, fieldID, gameDateTime)
values
    (500, 4, 1, '2021-11-2000:48:33');


insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (1, false, 77, 137);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (2, true, 44, 102);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (3, false, 41, 15);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (4, true, 71, 77);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (5, true, 94, 150);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (6, true, 86, 421);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (7, true, 17, 157);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (8, false, 30, 331);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (9, false, 45, 7);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (10, true, 15, 11);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (11, true, 15, 328);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (12, false, 83, 236);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (13, false, 68, 237);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (14, true, 89, 361);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (15, true, 99, 4);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (16, false, 40, 73);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (17, false, 6, 18);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (18, false, 9, 136);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (19, true, 42, 389);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (20, true, 79, 481);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (21, false, 72, 493);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (22, false, 12, 193);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (23, false, 23, 235);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (24, true, 83, 89);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (25, true, 45, 61);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (26, true, 89, 263);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (27, false, 4, 347);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (28, true, 51, 44);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (29, true, 90, 49);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (30, false, 25, 8);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (31, false, 41, 276);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (32, false, 78, 120);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (33, true, 55, 425);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (34, true, 37, 69);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (35, true, 84, 308);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (36, true, 47, 407);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (37, true, 98, 8);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (38, true, 23, 370);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (39, true, 38, 385);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (40, false, 18, 202);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (41, true, 97, 336);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (42, true, 15, 490);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (43, false, 54, 365);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (44, false, 81, 311);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (45, false, 8, 211);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (46, true, 33, 195);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (47, true, 85, 355);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (48, false, 69, 167);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (49, false, 94, 59);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (50, false, 13, 347);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (51, false, 5, 429);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (52, false, 15, 80);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (53, true, 10, 388);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (54, true, 7, 456);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (55, false, 21, 321);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (56, false, 42, 42);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (57, false, 9, 130);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (58, true, 56, 122);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (59, true, 53, 155);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (60, false, 12, 265);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (61, false, 79, 294);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (62, false, 39, 353);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (63, true, 90, 418);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (64, false, 90, 27);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (65, true, 96, 456);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (66, true, 74, 429);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (67, true, 10, 401);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (68, false, 22, 163);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (69, true, 57, 94);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (70, true, 30, 193);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (71, false, 23, 295);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (72, false, 50, 433);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (73, true, 40, 254);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (74, true, 73, 455);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (75, false, 13, 170);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (76, false, 47, 275);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (77, true, 4, 10);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (78, false, 34, 160);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (79, false, 41, 250);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (80, true, 57, 255);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (81, true, 6, 462);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (82, false, 80, 434);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (83, true, 1, 256);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (84, true, 31, 67);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (85, false, 31, 70);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (86, false, 94, 382);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (87, false, 7, 412);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (88, false, 13, 448);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (89, false, 19, 267);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (90, true, 4, 10);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (91, false, 88, 46);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (92, true, 63, 287);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (93, false, 9, 181);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (94, true, 39, 472);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (95, true, 92, 160);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (96, true, 54, 400);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (97, false, 35, 44);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (98, true, 10, 463);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (99, false, 64, 240);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (100, true, 42, 141);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (101, true, 89, 414);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (102, false, 57, 142);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (103, false, 70, 11);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (104, false, 6, 54);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (105, true, 45, 72);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (106, false, 47, 158);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (107, false, 99, 201);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (108, true, 53, 279);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (109, true, 26, 38);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (110, false, 100, 223);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (111, false, 33, 252);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (112, false, 2, 185);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (113, false, 49, 421);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (114, true, 52, 19);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (115, false, 57, 84);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (116, false, 39, 52);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (117, false, 51, 63);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (118, false, 44, 388);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (119, true, 24, 199);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (120, false, 34, 363);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (121, false, 40, 65);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (122, true, 28, 205);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (123, true, 69, 410);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (124, false, 20, 42);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (125, true, 58, 424);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (126, false, 67, 124);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (127, true, 69, 329);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (128, false, 27, 139);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (129, false, 68, 343);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (130, false, 49, 450);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (131, true, 66, 194);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (132, true, 32, 36);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (133, true, 33, 153);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (134, true, 41, 347);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (135, false, 73, 466);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (136, true, 66, 364);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (137, true, 47, 164);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (138, false, 91, 317);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (139, false, 56, 414);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (140, false, 26, 122);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (141, false, 51, 419);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (142, true, 55, 419);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (143, false, 17, 173);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (144, false, 88, 115);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (145, true, 6, 35);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (146, false, 7, 325);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (147, false, 64, 287);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (148, true, 47, 258);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (149, true, 28, 212);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (150, true, 74, 100);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (151, false, 94, 90);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (152, true, 38, 210);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (153, false, 87, 92);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (154, false, 59, 351);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (155, false, 91, 462);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (156, true, 88, 128);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (157, false, 63, 263);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (158, false, 16, 206);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (159, false, 25, 61);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (160, false, 14, 203);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (161, false, 70, 244);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (162, false, 35, 216);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (163, true, 3, 193);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (164, true, 62, 335);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (165, true, 96, 467);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (166, true, 17, 375);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (167, false, 54, 345);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (168, false, 58, 37);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (169, false, 40, 454);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (170, true, 34, 383);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (171, true, 13, 147);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (172, false, 13, 319);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (173, true, 53, 331);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (174, true, 16, 36);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (175, true, 26, 487);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (176, true, 65, 264);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (177, false, 76, 377);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (178, true, 94, 20);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (179, false, 67, 246);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (180, true, 8, 29);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (181, false, 98, 310);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (182, false, 6, 487);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (183, false, 30, 335);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (184, true, 41, 288);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (185, false, 35, 452);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (186, false, 81, 78);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (187, false, 81, 220);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (188, true, 59, 143);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (189, true, 10, 453);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (190, false, 58, 90);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (191, false, 98, 90);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (192, true, 14, 103);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (193, true, 36, 436);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (194, true, 32, 237);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (195, true, 5, 348);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (196, true, 22, 312);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (197, true, 90, 222);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (198, false, 69, 499);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (199, false, 1, 373);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (200, false, 44, 232);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (201, false, 89, 70);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (202, true, 13, 247);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (203, false, 37, 371);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (204, true, 72, 265);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (205, false, 18, 478);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (206, false, 44, 137);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (207, true, 25, 369);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (208, false, 20, 412);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (209, false, 50, 113);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (210, false, 50, 354);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (211, true, 82, 445);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (212, true, 34, 206);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (213, false, 43, 254);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (214, true, 98, 190);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (215, false, 62, 152);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (216, true, 24, 71);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (217, false, 96, 212);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (218, true, 38, 460);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (219, false, 62, 62);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (220, true, 92, 486);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (221, true, 63, 441);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (222, false, 81, 284);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (223, false, 26, 460);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (224, false, 43, 270);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (225, true, 33, 402);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (226, false, 18, 411);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (227, false, 79, 348);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (228, true, 57, 106);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (229, true, 99, 232);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (230, true, 88, 473);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (231, true, 55, 194);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (232, false, 11, 243);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (233, false, 18, 362);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (234, false, 52, 175);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (235, false, 25, 121);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (236, false, 65, 353);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (237, true, 24, 168);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (238, true, 36, 254);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (239, false, 94, 186);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (240, false, 66, 424);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (241, false, 39, 351);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (242, false, 17, 179);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (243, false, 43, 33);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (244, false, 79, 475);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (245, false, 19, 2);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (246, true, 73, 382);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (247, false, 80, 207);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (248, true, 61, 200);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (249, false, 92, 444);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (250, false, 76, 354);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (251, true, 25, 68);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (252, false, 63, 155);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (253, false, 88, 313);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (254, false, 67, 429);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (255, false, 34, 226);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (256, false, 71, 461);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (257, false, 41, 76);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (258, false, 93, 199);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (259, true, 6, 153);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (260, false, 21, 442);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (261, true, 22, 388);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (262, false, 35, 156);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (263, false, 10, 38);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (264, false, 63, 347);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (265, false, 8, 482);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (266, false, 62, 401);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (267, true, 1, 86);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (268, true, 6, 305);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (269, true, 70, 457);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (270, true, 11, 296);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (271, false, 47, 487);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (272, true, 87, 244);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (273, false, 48, 478);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (274, true, 10, 111);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (275, false, 68, 346);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (276, false, 5, 365);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (277, false, 38, 137);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (278, true, 69, 181);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (279, true, 75, 18);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (280, false, 23, 282);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (281, true, 58, 37);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (282, false, 32, 34);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (283, true, 81, 230);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (284, true, 16, 263);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (285, false, 55, 417);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (286, true, 40, 212);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (287, true, 49, 320);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (288, true, 48, 216);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (289, false, 42, 338);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (290, false, 35, 48);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (291, true, 46, 349);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (292, true, 61, 236);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (293, false, 27, 47);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (294, false, 8, 22);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (295, true, 16, 45);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (296, true, 55, 431);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (297, false, 84, 41);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (298, false, 6, 241);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (299, true, 3, 418);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (300, false, 51, 240);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (301, false, 79, 402);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (302, true, 3, 127);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (303, false, 33, 166);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (304, true, 71, 380);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (305, true, 21, 437);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (306, true, 29, 367);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (307, true, 16, 440);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (308, true, 63, 343);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (309, false, 79, 24);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (310, true, 22, 37);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (311, false, 65, 166);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (312, false, 83, 348);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (313, false, 88, 442);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (314, false, 22, 157);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (315, false, 83, 332);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (316, false, 30, 476);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (317, false, 75, 379);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (318, false, 69, 383);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (319, false, 46, 190);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (320, false, 11, 180);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (321, false, 79, 229);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (322, true, 71, 393);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (323, true, 61, 472);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (324, false, 29, 131);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (325, true, 46, 133);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (326, true, 19, 182);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (327, false, 9, 112);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (328, false, 2, 266);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (329, true, 97, 478);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (330, false, 46, 9);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (331, false, 52, 268);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (332, false, 99, 309);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (333, true, 76, 499);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (334, true, 59, 459);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (335, true, 29, 123);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (336, true, 45, 426);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (337, false, 81, 441);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (338, true, 50, 386);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (339, false, 13, 39);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (340, true, 18, 396);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (341, false, 12, 376);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (342, true, 12, 276);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (343, false, 93, 422);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (344, true, 55, 247);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (345, false, 7, 233);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (346, false, 2, 213);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (347, false, 45, 230);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (348, false, 9, 409);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (349, true, 80, 396);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (350, true, 19, 453);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (351, false, 55, 171);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (352, true, 88, 288);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (353, true, 74, 46);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (354, false, 75, 247);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (355, true, 96, 359);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (356, false, 49, 59);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (357, true, 99, 500);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (358, true, 63, 196);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (359, true, 81, 399);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (360, true, 100, 269);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (361, true, 56, 119);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (362, true, 75, 358);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (363, true, 91, 453);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (364, true, 12, 178);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (365, false, 79, 378);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (366, false, 25, 93);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (367, false, 10, 87);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (368, false, 50, 61);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (369, false, 25, 456);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (370, false, 42, 366);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (371, true, 77, 462);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (372, false, 90, 2);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (373, false, 86, 47);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (374, true, 9, 248);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (375, false, 55, 165);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (376, false, 92, 273);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (377, true, 51, 93);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (378, true, 54, 188);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (379, true, 9, 262);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (380, false, 56, 225);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (381, true, 6, 230);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (382, false, 29, 311);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (383, false, 80, 119);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (384, false, 8, 11);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (385, false, 55, 19);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (386, true, 22, 210);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (387, true, 84, 384);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (388, true, 49, 221);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (389, true, 95, 402);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (390, true, 41, 165);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (391, false, 15, 454);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (392, true, 50, 385);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (393, true, 84, 426);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (394, false, 79, 89);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (395, true, 96, 183);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (396, false, 50, 65);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (397, false, 69, 401);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (398, false, 3, 62);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (399, true, 10, 361);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (400, false, 66, 454);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (401, true, 82, 204);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (402, true, 72, 48);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (403, false, 98, 312);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (404, false, 69, 71);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (405, true, 48, 201);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (406, false, 12, 450);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (407, true, 72, 325);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (408, false, 91, 350);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (409, false, 78, 228);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (410, true, 79, 23);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (411, false, 28, 310);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (412, false, 55, 93);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (413, true, 1, 489);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (414, false, 21, 369);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (415, false, 79, 231);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (416, true, 49, 46);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (417, false, 3, 278);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (418, true, 61, 301);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (419, false, 21, 370);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (420, false, 67, 426);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (421, true, 51, 320);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (422, true, 58, 459);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (423, true, 43, 456);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (424, true, 98, 296);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (425, false, 84, 22);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (426, false, 59, 37);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (427, true, 68, 228);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (428, true, 78, 126);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (429, false, 99, 445);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (430, true, 29, 319);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (431, true, 100, 266);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (432, false, 25, 127);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (433, true, 2, 408);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (434, true, 13, 463);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (435, false, 54, 81);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (436, true, 58, 471);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (437, false, 17, 494);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (438, true, 57, 355);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (439, false, 57, 340);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (440, false, 2, 109);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (441, true, 88, 129);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (442, true, 8, 229);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (443, false, 42, 301);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (444, true, 22, 483);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (445, true, 10, 186);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (446, true, 40, 430);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (447, true, 32, 437);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (448, true, 57, 65);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (449, false, 70, 5);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (450, false, 16, 72);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (451, false, 31, 296);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (452, true, 12, 418);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (453, true, 9, 88);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (454, true, 91, 226);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (455, true, 28, 73);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (456, false, 28, 421);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (457, false, 39, 197);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (458, false, 42, 188);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (459, false, 51, 248);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (460, true, 45, 17);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (461, true, 54, 336);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (462, false, 40, 381);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (463, false, 88, 62);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (464, false, 5, 392);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (465, true, 19, 282);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (466, true, 5, 470);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (467, true, 32, 239);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (468, false, 56, 134);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (469, true, 96, 219);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (470, true, 24, 146);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (471, false, 37, 142);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (472, false, 68, 83);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (473, false, 67, 217);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (474, false, 25, 267);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (475, false, 25, 480);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (476, true, 60, 350);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (477, false, 49, 209);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (478, false, 44, 474);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (479, true, 77, 34);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (480, false, 7, 210);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (481, true, 80, 23);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (482, true, 97, 150);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (483, true, 97, 336);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (484, true, 100, 320);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (485, false, 27, 219);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (486, true, 92, 111);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (487, false, 11, 194);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (488, true, 14, 23);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (489, true, 6, 382);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (490, false, 19, 83);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (491, true, 66, 168);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (492, true, 90, 352);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (493, false, 63, 421);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (494, false, 65, 63);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (495, false, 21, 73);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (496, true, 99, 165);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (497, true, 26, 376);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (498, true, 77, 391);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (499, false, 65, 154);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (500, true, 90, 281);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (501, true, 49, 116);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (502, false, 88, 498);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (503, false, 27, 296);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (504, true, 31, 101);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (505, true, 21, 9);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (506, false, 5, 49);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (507, false, 93, 10);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (508, true, 23, 158);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (509, true, 30, 28);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (510, false, 39, 382);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (511, false, 85, 221);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (512, false, 93, 271);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (513, false, 21, 94);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (514, false, 24, 44);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (515, true, 58, 110);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (516, true, 95, 391);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (517, false, 11, 78);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (518, false, 69, 106);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (519, false, 17, 95);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (520, true, 23, 60);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (521, true, 18, 86);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (522, false, 81, 14);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (523, false, 23, 45);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (524, false, 3, 59);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (525, true, 29, 180);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (526, false, 76, 255);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (527, false, 52, 43);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (528, false, 95, 163);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (529, true, 10, 452);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (530, false, 51, 237);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (531, false, 30, 354);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (532, true, 51, 234);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (533, true, 15, 306);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (534, false, 21, 374);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (535, false, 27, 247);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (536, false, 96, 24);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (537, false, 42, 20);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (538, false, 70, 472);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (539, true, 5, 255);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (540, false, 14, 157);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (541, false, 67, 33);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (542, false, 31, 443);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (543, true, 85, 419);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (544, true, 100, 411);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (545, false, 92, 273);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (546, false, 30, 199);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (547, false, 29, 116);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (548, true, 77, 220);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (549, true, 18, 175);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (550, false, 91, 288);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (551, false, 21, 211);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (552, true, 5, 386);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (553, true, 30, 45);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (554, true, 40, 213);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (555, false, 89, 373);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (556, true, 69, 104);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (557, false, 54, 307);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (558, false, 73, 31);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (559, false, 83, 96);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (560, false, 54, 364);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (561, false, 49, 37);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (562, true, 73, 249);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (563, true, 33, 88);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (564, true, 23, 306);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (565, true, 85, 220);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (566, true, 2, 428);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (567, true, 4, 159);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (568, false, 71, 304);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (569, true, 15, 16);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (570, true, 48, 189);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (571, false, 62, 171);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (572, true, 2, 145);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (573, true, 6, 363);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (574, true, 74, 181);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (575, true, 95, 384);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (576, true, 48, 98);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (577, false, 77, 103);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (578, true, 7, 391);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (579, false, 89, 165);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (580, false, 39, 390);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (581, true, 34, 114);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (582, true, 87, 325);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (583, true, 51, 485);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (584, false, 66, 273);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (585, true, 64, 244);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (586, false, 100, 202);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (587, true, 96, 77);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (588, false, 40, 39);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (589, false, 15, 75);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (590, true, 27, 256);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (591, true, 64, 138);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (592, false, 31, 27);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (593, true, 33, 232);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (594, true, 59, 70);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (595, true, 32, 259);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (596, false, 4, 313);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (597, false, 99, 372);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (598, true, 1, 361);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (599, false, 29, 499);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (600, false, 48, 25);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (601, false, 61, 395);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (602, false, 98, 159);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (603, true, 94, 276);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (604, true, 17, 15);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (605, false, 64, 191);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (606, true, 55, 408);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (607, true, 8, 343);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (608, false, 73, 283);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (609, false, 19, 209);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (610, false, 1, 429);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (611, true, 20, 296);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (612, true, 42, 26);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (613, false, 8, 367);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (614, true, 76, 381);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (615, true, 66, 5);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (616, true, 66, 269);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (617, true, 1, 376);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (618, false, 75, 463);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (619, true, 52, 284);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (620, false, 4, 188);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (621, true, 93, 392);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (622, true, 41, 242);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (623, false, 84, 279);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (624, false, 62, 239);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (625, true, 62, 217);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (626, true, 60, 121);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (627, false, 8, 232);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (628, true, 47, 341);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (629, false, 27, 397);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (630, false, 54, 284);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (631, false, 21, 99);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (632, false, 77, 269);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (633, false, 39, 114);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (634, true, 59, 145);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (635, false, 29, 362);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (636, false, 8, 198);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (637, false, 14, 186);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (638, false, 19, 213);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (639, true, 42, 189);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (640, false, 23, 453);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (641, true, 51, 324);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (642, false, 58, 335);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (643, false, 19, 317);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (644, false, 80, 382);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (645, false, 81, 405);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (646, false, 17, 160);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (647, false, 93, 205);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (648, false, 71, 175);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (649, false, 26, 439);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (650, false, 4, 264);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (651, true, 90, 67);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (652, false, 30, 402);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (653, false, 34, 479);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (654, true, 94, 276);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (655, false, 62, 330);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (656, false, 99, 495);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (657, false, 46, 429);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (658, false, 68, 379);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (659, false, 49, 390);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (660, false, 68, 61);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (661, true, 86, 100);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (662, false, 73, 143);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (663, false, 73, 387);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (664, false, 9, 281);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (665, false, 90, 33);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (666, true, 67, 125);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (667, true, 52, 9);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (668, false, 81, 190);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (669, true, 65, 86);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (670, false, 64, 66);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (671, true, 92, 320);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (672, true, 44, 246);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (673, false, 99, 178);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (674, false, 73, 243);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (675, false, 12, 64);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (676, true, 81, 158);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (677, true, 92, 160);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (678, true, 85, 385);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (679, false, 28, 319);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (680, true, 10, 389);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (681, false, 92, 443);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (682, true, 60, 319);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (683, false, 87, 50);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (684, false, 53, 3);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (685, true, 56, 203);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (686, false, 72, 146);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (687, false, 74, 337);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (688, true, 8, 406);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (689, false, 96, 163);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (690, false, 49, 65);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (691, true, 13, 196);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (692, true, 26, 30);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (693, true, 1, 273);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (694, false, 100, 195);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (695, true, 79, 472);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (696, true, 95, 24);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (697, true, 34, 377);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (698, true, 60, 489);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (699, true, 5, 170);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (700, true, 26, 183);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (701, true, 13, 355);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (702, false, 66, 49);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (703, true, 15, 256);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (704, false, 76, 424);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (705, false, 17, 353);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (706, false, 70, 106);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (707, false, 44, 350);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (708, true, 16, 323);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (709, false, 25, 139);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (710, true, 97, 462);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (711, false, 22, 110);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (712, false, 11, 270);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (713, true, 6, 9);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (714, true, 33, 250);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (715, true, 72, 185);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (716, true, 76, 168);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (717, true, 62, 463);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (718, false, 98, 464);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (719, false, 13, 112);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (720, false, 65, 273);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (721, false, 4, 465);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (722, false, 54, 369);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (723, true, 82, 57);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (724, true, 64, 115);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (725, true, 49, 38);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (726, true, 60, 242);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (727, false, 86, 393);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (728, true, 31, 282);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (729, false, 54, 32);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (730, true, 65, 217);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (731, true, 1, 255);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (732, true, 63, 165);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (733, false, 51, 148);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (734, false, 80, 493);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (735, true, 96, 290);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (736, false, 75, 4);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (737, true, 51, 44);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (738, false, 48, 45);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (739, false, 6, 496);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (740, false, 96, 181);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (741, true, 17, 139);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (742, true, 75, 255);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (743, false, 27, 43);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (744, true, 50, 419);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (745, true, 79, 120);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (746, true, 43, 161);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (747, true, 26, 192);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (748, true, 93, 171);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (749, false, 1, 440);

insert into
    Assignments (assignmentID, assignmentStatus, refereeID, gameID)
values
    (750, true, 12, 5);
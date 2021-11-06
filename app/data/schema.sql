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
	teamID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
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

insert into Teams (teamID, teamName, clubName, manager) values (1, 'Cats', 'Moldova State University of Medicine and Pharmacy "N. Testemitsanu"', 'Town Kubasiewicz');
insert into Teams (teamID, teamName, clubName, manager) values (2, 'Dogs', 'Sanaag University of Science and Technology', 'Charleen Gobel');
insert into Teams (teamID, teamName, clubName, manager) values (3, 'Cows', 'Academy of International Economic and Political Relations, Gdynia', 'Barnabas Lembrick');
insert into Teams (teamID, teamName, clubName, manager) values (4, 'Bulls', 'Fachhochschule Koblenz', 'Nolana Snalham');


insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2) values (1, 5, 4, '12/04/2021', 1, 2);
insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2) values (2, 4, 5, '08/13/2022',2 ,3);
insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2) values (3, 1, 9, '02/08/2022',1, 4);

insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID) values (1, 'Assigned', 1, 1);
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID) values (2, 'Accepted', 2, 1);
insert into Assignments (assignmentID, assignmentStatus, refereeID, gamesID) values (3, 'Unassigned', 3, 3);

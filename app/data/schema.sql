
CREATE DATABASE IF NOT EXISTS msisdb;
USE msisdb;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Referees;
DROP TABLE IF EXISTS Assignments;
DROP TABLE IF EXISTS `Fields`;
DROP TABLE IF EXISTS Teams;
DROP TABLE IF EXISTS Games;
-- SET FOREIGN_KEY_CHECKS = 1;

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
CREATE TABLE IF NOT EXISTS Teams (
	teamID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	teamName VARCHAR(50),
	clubName VARCHAR(50),
	manager VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS Games (
    gameID INT NOT NULL AUTO_INCREMENT primary key,
    gameLevel int,
    gameDate DateTime,
    fieldID int,
    team1 int, 
    team2 int,
    FOREIGN KEY (fieldID) REFERENCES `Fields`(fieldID)  ,
	FOREIGN KEY (team1) REFERENCES Teams(teamID),
    FOREIGN KEY (team2) REFERENCES Teams(teamID)
);
CREATE TABLE IF NOT EXISTS Assignments (
    assignmentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    assignmentStatus varchar(255) NOT NULL,
    refereeID int,
    gameID int,
    FOREIGN KEY (refereeID) REFERENCES Referees(refereeID),
    FOREIGN KEY (gameID) REFERENCES Games(gameID)
);
insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (1, 'Freddy', 'Daw', 30, 5);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (2, 'Morgan', 'Downer', 36, 2);

insert into
    Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade)
values
    (3, 'Waylan', 'McCuish', 34, 3);

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


insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2) values (1, 5, 4, '2021-11-10', 1, 2);
insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2) values (2, 4, 5, '2021-11-22',2 ,3);
insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2) values (3, 1, 9, '2021-12-10',1, 4);

insert into Assignments (assignmentID, assignmentStatus, refereeID, gameID) values (1, 'Assigned', 1, 1);
insert into Assignments (assignmentID, assignmentStatus, refereeID, gameID) values (2, 'Accepted', 2, 1);
insert into Assignments (assignmentID, assignmentStatus, refereeID, gameID) values (3, 'Unassigned', 3, 3);

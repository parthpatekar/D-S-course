CREATE DATABASE IF NOT EXISTS msisdb;
USE msisdb;SET FOREIGN_KEY_CHECKS = 0;
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
refereeGrade int,
refereeSkill int
);CREATE TABLE IF NOT EXISTS `Fields` (
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
gameDate DATE,
fieldID int,
team1 int,
team2 int,
FOREIGN KEY (fieldID) REFERENCES `Fields`(fieldID) ,
FOREIGN KEY (team1) REFERENCES Teams(teamID),
FOREIGN KEY (team2) REFERENCES Teams(teamID)
);
CREATE TABLE IF NOT EXISTS Assignments (
assignmentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
assignmentStatus1 varchar(255) NOT NULL,
refereeID1 int,
assignmentStatus2 varchar(255) NOT NULL,
refereeID2 int,
assignmentStatus3 varchar(255) NOT NULL,
refereeID3 int,
assignmentStatus4 varchar(255) NOT NULL,
refereeID4 int,
gameID int,
FOREIGN KEY (refereeID1) REFERENCES Referees(refereeID),
FOREIGN KEY (refereeID2) REFERENCES Referees(refereeID),
FOREIGN KEY (refereeID3) REFERENCES Referees(refereeID),
FOREIGN KEY (refereeID4) REFERENCES Referees(refereeID),
FOREIGN KEY (gameID) REFERENCES Games(gameID)
);
insert into Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade, refereeSkill)
values (1, 'Freddy', 'Daw', 30, 5,85);insert into Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade, refereeSkill)
values (2, 'Morgan', 'Downer', 36, 2, 90);insert into Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade, refereeSkill)
values (3, 'Waylan', 'McCuish', 34, 3, 87);insert into Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade, refereeSkill)
values (4, 'Teddy', 'Dawn', 30, 2, 70);insert into Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade, refereeSkill)
values (5, 'Morgan', 'Freeman', 42, 4, 75);insert into Referees (refereeID, refereeFirstName, refereeLastName, refereeAge, refereeGrade, refereeSkill)
values (6, 'Wayne', 'McCalister', 35, 2, 95);insert into `Fields` (fieldID, fieldName, fieldLocation)
values (1, 'Minyx', '7th');insert into `Fields` (fieldID, fieldName, fieldLocation)
values (2, 'Geba', 'Carberry');insert into `Fields` (fieldID, fieldName, fieldLocation)
values (3, 'Twimm', 'Grim');
insert into Teams (teamID, teamName, clubName, manager)
values (1, 'Cats', 'Moldova State University of Medicine and Pharmacy "N. Testemitsanu"', 'Town Kubasiewicz');insert into Teams (teamID, teamName, clubName, manager)
values (2, 'Dogs', 'Sanaag University of Science and Technology', 'Charleen Gobel');insert into Teams (teamID, teamName, clubName, manager)
values (3, 'Cows', 'Academy of International Economic and Political Relations, Gdynia', 'Barnabas Lembrick');insert into Teams (teamID, teamName, clubName, manager)
values (4, 'Bulls', 'Fachhochschule Koblenz', 'Nolana Snalham');
insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2)
values (1, 5, 1, '2021-11-10', 1, 2);insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2)
values (2, 4, 3, '2021-11-22',2 ,3);insert into Games (gameID, gameLevel, fieldID, gameDate, team1, team2)
values (3, 1, 3, '2021-12-10',1, 4);
insert into Assignments (assignmentID, assignmentStatus1, refereeID1, assignmentStatus2, refereeID2, assignmentStatus3, refereeID3, assignmentStatus4, refereeID4, gameID)
values (1, 'Assigned', 1, 'Accepted', 2, 'N/A', '', 'N/A', '', 1);insert into Assignments (assignmentID, assignmentStatus1, refereeID1, assignmentStatus2, refereeID2, assignmentStatus3, refereeID3, assignmentStatus4, refereeID4, gameID)
values (2, 'Unassigned', 2, 'Assigned', 2, 'Accepted', '3', 'N/A', '', 2);insert into Assignments (assignmentID, assignmentStatus1, refereeID1, assignmentStatus2, refereeID2, assignmentStatus3, refereeID3, assignmentStatus4, refereeID4, gameID)
values (3, 'Unassigned', 3, 'Accepted', 1, 'Accepted', '5', 'Assigned', '6', 3);


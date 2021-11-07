<?php

require 'class/DbConnection.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query
$query = 'SELECT Assignments.assignmentID, Assignments.assignmentStatus1,Assignments.assignmentStatus2, Assignments.assignmentStatus3,Assignments.assignmentStatus4, Games.gameID, Games.gameDate, Games.gameLevel, t1.teamName as team1Name, 
t2.teamName as team2Name
FROM Assignments 
join Referees 
ON Assignments.refereeID1 = Referees.refereeID 
JOIN Games 
ON Assignments.gameID = Games.gameID 
JOIN Teams t1
ON Games.team1 = t1.teamID 
JOIN Teams t2
ON Games.team2 = t2.teamID 
where assignmentStatus1 = "Unassigned" or assignmentStatus2 = "Unassigned" or assignmentStatus3 = "Unassigned" or assignmentStatus4 = "Unassigned"
ORDER BY gameID';
$vars = [];
$stmt = $db->prepare($query);
$stmt->execute($vars);

$games = $stmt->fetchAll();

// Step 3: Convert to JSON
$json = json_encode($games, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
<?php

require 'class/DbConnection.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query
$query = "  SELECT 
                gameID, 
                gameDate, 
                gameLevel, 
                fieldName, 
                fieldLocation, 
                t1.teamName as team1Name, 
                t2.teamName as team2Name 
            FROM 
                Games 
                JOIN 
                `Fields` 
                ON 
                Games.fieldID = `Fields`.fieldID 
                JOIN Teams t1
                ON Games.team1 = t1.teamID 
                JOIN Teams t2
                ON Games.team2 = t2.teamID 
            ORDER BY gameDate
            ";
$vars = [];
$stmt = $db->prepare($query);
$stmt->execute($vars);

$games = $stmt->fetchAll();

// Step 3: Convert to JSON
$json = json_encode($games, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
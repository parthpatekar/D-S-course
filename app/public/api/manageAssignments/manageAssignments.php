<?php

require 'class/DbConnection.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query
$query = "  SELECT    
                assignmentID,             
                assignmentStatus1, refereeID1, 
                assignmentStatus2, refereeID2, 
                assignmentStatus3, refereeID3, 
                assignmentStatus4, refereeID4, 
                gameID
            FROM 
                Assignments
            ORDER BY gameID
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
<?php

require 'class/DbConnection.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query
$query = "SELECT gameID, gameDate, gameLevel, fieldName, fieldLocation FROM Games JOIN `Fields` ON Games.fieldID = `Fields`.fieldID ORDER BY gameDate";
$vars = [];
$stmt = $db->prepare($query);
$stmt->execute($vars);

$games = $stmt->fetchAll();

// Step 3: Convert to JSON
$json = json_encode($games, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
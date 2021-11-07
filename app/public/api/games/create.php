<?php

try {
    $_POST = json_decode(
                file_get_contents('php://input'),
                true,
                2,
                JSON_THROW_ON_ERROR
            );
} catch (Exception $e) {
    header($_SERVER["SERVER_PROTOCOL"] . " 400 Bad Request");            
    exit;
}

require("class/DbConnection.php");


// Step 0: Validate the incoming data
// This code doesn't do that, but should ...
// For example, if the date is empty or bad, this insert fails.

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query
// Note the use of parameterized statements to avoid injection
$stmt = $db->prepare(
    "INSERT INTO Games (
        gameLevel, 
        fieldID, 
        gameDate, 
        team1, 
        team2
    )
    VALUES (
        ?, 
        (
            SELECT fieldID 
            FROM `Fields` 
            WHERE 
                fieldName = ? 
                AND 
                fieldLocation = ?
        ), 
        STR_TO_DATE(?, '%Y-%m-%d'), 
        (
            SELECT teamID 
            FROM Teams 
            WHERE teamName = ?
        ), 
        (
            SELECT teamID 
            FROM Teams 
            WHERE teamName = ?
        )
    )"
);


$stmt->execute([
  $_POST['gameLevel'],
  $_POST['fieldName'],
  $_POST['fieldLocation'],
  date ('Y-m-d', strtotime($_POST['gameDate']))
  $_POST['team1Name'],
  $_POST['team2Name']
]);

// Get auto-generated PK from DB
// https://www.php.net/manual/en/pdo.lastinsertid.php
// $pk = $db->lastInsertId();  

// Step 4: Output
// Here, instead of giving output, I'm redirecting to the SELECT API,
// just in case the data changed by entering it
// header('HTTP/1.1 303 See Other');
// header('Location: ../games/games.php');
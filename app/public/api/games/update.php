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
  'UPDATE Games SET 
    gameDateTime = ?,
    gameLevel = ?,
    fieldName = ?,
    fieldLocation = ?
  WHERE gameID = ?'
);

if($stmt->execute([
  $_POST['gameDateTime'],
  $_POST['gameLevel'],
  $_POST['fieldName'],
  $_POST['fieldLocation'],
  $_POST['gameID'],
]))

// Get auto-generated PK from DB
// https://www.php.net/manual/en/pdo.lastinsertid.php
// $pk = $db->lastInsertId();  

// Step 4: Output
// Here, instead of giving output, I'm redirecting to the SELECT API,
// just in case the data changed by entering it
// header('HTTP/1.1 303 See Other');
// header('Location: ../games/games.php');
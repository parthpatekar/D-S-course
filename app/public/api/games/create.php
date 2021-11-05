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

// $_POST = json_decode(
//                   '{"gameDateTime":"2022-09-13 13:09:48","gameLevel":3,"fieldName":"Brainbox","fieldLocation":"Talisman"}',
//                   true,
//                   2,
//                   JSON_THROW_ON_ERROR
//               );

require("class/DbConnection.php");


// Step 0: Validate the incoming data
// This code doesn't do that, but should ...
// For example, if the date is empty or bad, this insert fails.

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();

// Step 2: Create & run the query
// Note the use of parameterized statements to avoid injection
$stmt = $db->prepare(
  "INSERT INTO Games (gameLevel, fieldID, gameDateTime)
  VALUES (?, (SELECT fieldID FROM `Fields` WHERE fieldName = ? AND fieldLocation = ?), ?)"
);

// $stmt->execute([
//   3,
//   'Brainbox',
//   'Talis',
//   date ('Y-m-d H:i:s', strtotime('2022-09-13 13:09:48'))
// ]);

$stmt->execute([
  $_POST['gameLevel'],
  $_POST['fieldName'],
  $_POST['fieldLocation'],
  date ('Y-m-d H:i:s', strtotime($_POST['gameDateTime']))
]);

// Get auto-generated PK from DB
// https://www.php.net/manual/en/pdo.lastinsertid.php
// $pk = $db->lastInsertId();  

// Step 4: Output
// Here, instead of giving output, I'm redirecting to the SELECT API,
// just in case the data changed by entering it
// header('HTTP/1.1 303 See Other');
// header('Location: ../games/games.php');
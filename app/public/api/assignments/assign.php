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

require 'class/DbConnection.php';

// Step 1: Get a datase connection from our helper class
$db = DbConnection::getConnection();


// Step 2: Create & run the query
$query = "  SELECT 
                Assignments.assignmentID, Assignments.gameID, 
                Assignments.assignmentStatus1, (SELECT CONCAT(refereeFirstName, ' ', refereeLastName) FROM Referees WHERE refereeID = Assignments.refereeID1) AS refereeName1, 
                Assignments.assignmentStatus2, (SELECT CONCAT(refereeFirstName, ' ', refereeLastName) FROM Referees WHERE refereeID = Assignments.refereeID2) AS refereeName2, 
                Assignments.assignmentStatus3, (SELECT CONCAT(refereeFirstName, ' ', refereeLastName) FROM Referees WHERE refereeID = Assignments.refereeID3) AS refereeName3,
                Assignments.assignmentStatus4, (SELECT CONCAT(refereeFirstName, ' ', refereeLastName) FROM Referees WHERE refereeID = Assignments.refereeID4) AS refereeName4, 
                t1.teamName as team1Name, t2.teamName as team2Name
                FROM Assignments 
                JOIN Games
                ON Assignments.gameID = Games.gameID 
                JOIN Teams t1
                ON Games.team1 = t1.teamID--  
                JOIN Teams t2
                ON Games.team2 = t2.teamID 
                WHERE 
                (gameDate 
                    BETWEEN 
                    STR_TO_DATE(? , '%Y-%m-%d') 
                    AND 
                    STR_TO_DATE(? , '%Y-%m-%d') )
                AND 
                    (Assignments.refereeID1 = ?
                    OR
                    Assignments.refereeID2 = ?
                    OR
                    Assignments.refereeID3 = ?
                    OR
                    Assignments.refereeID4 = ?)";

$stmt = $db->prepare($query);
$stmt->execute([
    date('Y-m-d', strtotime($_POST['startdate'])),
    date('Y-m-d', strtotime($_POST['enddate'])),
    $_POST['refereeID'],
    $_POST['refereeID'],
    $_POST['refereeID'],
    $_POST['refereeID']
]);
$referees = $stmt->fetchAll();

// Step 3: Convert to JSON
$json = json_encode($referees, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
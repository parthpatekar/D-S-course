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
$query = 'SELECT Assignments.assignmentID, Assignments.assignmentStatus, Assignments.gameID, 
Referees.refereeFirstName,Referees.refereeLastName, t1.teamName as team1Name, t2.teamName as team2Name
FROM Assignments 
join Referees 
ON Assignments.refereeID = Referees.refereeID 
JOIN Games 
ON Assignments.gameID = Games.gameID 
JOIN Teams t1
ON Games.team1 = t1.teamID 
JOIN Teams t2
ON Games.team2 = t2.teamID 
WHERE gameDate BETWEEN STR_TO_DATE(? , "%Y-%m-%d") AND STR_TO_DATE(? , "%Y-%m-%d") and Referees.refereeID = ?
ORDER BY refereeFirstName';
// $query = 'SELECT * From Assignments';
// $vars = [];
$stmt = $db->prepare($query);
$stmt->execute([
    date('Y-m-d', strtotime($_POST['startdate'])),
    date('Y-m-d', strtotime($_POST['enddate'])),
    $_POST['refereeID']
]);
$referees = $stmt->fetchAll();

// Step 3: Convert to JSON
$json = json_encode($referees, JSON_PRETTY_PRINT);

// Step 4: Output
header('Content-Type: application/json');
echo $json;
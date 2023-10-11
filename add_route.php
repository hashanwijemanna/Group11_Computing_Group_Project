<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ostt";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get data from the request
$data = json_decode(file_get_contents("php://input"), true);

// Insert data into the database (use prepared statements for security)
$stmt = $conn->prepare("INSERT INTO route (route_id, starting_point, ending_point, stops, schedule) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $data['route_id'], $data['starting_point'], $data['ending_point'], $data['stops'], $data['schedule']);

if ($stmt->execute()) {
    $response = ["message" => "Route added successfully."];
} else {
    $response = ["message" => "Error adding user: " . $conn->error];
}

// Close the database connection
$stmt->close();
$conn->close();
echo json_encode($response);
?>

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
$stmt = $conn->prepare("INSERT INTO trip (date, time, driver_id, list_of_students_onboard, bus_id, route_id) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssss", $data['date'], $data['time'], $data['driver_id'], $data['list_of_students_onboard'], $data['bus_id'], $data['route_id']);

if ($stmt->execute()) {
    $response = ["message" => "Trip added successfully."];
} else {
    $response = ["message" => "Error adding user: " . $conn->error];
}

// Close the database connection
$stmt->close();
$conn->close();
echo json_encode($response);
?>

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
$stmt = $conn->prepare("INSERT INTO bus (model, license_plate_number, seating_capacity, last_maintenace_date, current_status, owner_id) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssss", $data['model'], $data['license_plate_number'], $data['seating_capacity'], $data['last_maintenace_date'], $data['current_status'], $data['owner_id']);

if ($stmt->execute()) {
    $response = ["message" => "Bus details added successfully."];
} else {
    $response = ["message" => "Error adding user: " . $conn->error];
}

// Close the database connection
$stmt->close();
$conn->close();
echo json_encode($response);
?>

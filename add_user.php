<?php
// Connect to the database
$servername = "localhost";
$username = "id21996630_netrides123";
$password = "Netrides2002!";
$dbname = "id21996630_netrides";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get data from the request
$data = json_decode(file_get_contents("php://input"), true);

// Insert data into the database (use prepared statements for security)
$stmt = $conn->prepare("INSERT INTO user_student (username, email, contact, password) VALUES (?, ?, ?, ?)");
$stmt->bind_param("ssss", $data['username'], $data['email'], $data['contact'], $data['password']);

if ($stmt->execute()) {
    $response = ["message" => "User added successfully."];
} else {
    $response = ["message" => "Error adding user: " . $conn->error];
}

// Close the database connection
$stmt->close();
$conn->close();
echo json_encode($response);
?>

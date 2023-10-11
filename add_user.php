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
$stmt = $conn->prepare("INSERT INTO student (nic, first_name, last_name, date_of_birth, address, mobile_number, email_address, faculty, emergency_contact_name, emergency_contact_number) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssssssss", $data['nic'], $data['first_name'], $data['last_name'], $data['date_of_birth'], $data['address'], $data['mobile_number'], $data['email_address'], $data['faculty'], $data['emergency_contact_name'], $data['emergency_contact_number']);

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

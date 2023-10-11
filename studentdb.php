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

// Retrieve data from the database
$sql = "SELECT id, nic, first_name, last_name, date_of_birth, address, mobile_number, email_address, faculty, emergency_contact_name, emergency_contact_number FROM student";
$result = $conn->query($sql);

// Generate HTML table to display the data
echo "<table>";
echo "<tr><th>ID</th><th>NIC</th><th>First Name</th><th>Last Name</th><th>Date of Birth</th><th>Address</th><th>Mobile Number</th><th>Email Address</th><th>Faculty</th><th>Emergency Contact Name</th><th>Emergency Contact number</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id"] . "</td><td>" . $row["nic"] . "</td><td>" . $row["first_name"] . "</td><td>" . $row["last_name"] . "</td><td>" . $row["date_of_birth"] . "</td><td>" . $row["address"] . "</td><td>" . $row["mobile_number"] . "</td><td>" . $row["email_address"] . "</td><td>" . $row["faculty"] . "</td><td>" . $row["emergency_contact_name"] . "</td><td>" . $row["emergency_contact_number"] . "</td></tr>";
    }
} else {
    echo "0 results";
}

echo "</table>";


// Get data from the request
$data = json_decode(file_get_contents("php://input"), true);

// Insert data into the database (use prepared statements for security)
$stmt = $conn->prepare("INSERT INTO student (nic, first_name, last_name, date_of_birth, address, mobile_number, email_address, faculty, emergency_contact_name, emergency_contact_number) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssssssss", $data['nic'], $data['first_name'], $data['last_name'], $data['date_of_birth'], $data['address'], $data['mobile_number'], $data['email_address'], $data['faculty'], $data['emergency_contact_name'], $data['emergency_contact_number']);

if ($stmt->execute()) {
    $response = ["message" => "Student added successfully."];
} else {
    $response = ["message" => "Error adding student: " . $conn->error];
}



// Close the database connection
$conn->close();
?>

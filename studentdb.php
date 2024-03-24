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

// Retrieve data from the database
$sql = "SELECT user_id, username, email, contact, password FROM user_student";
$result = $conn->query($sql);

// Generate HTML table to display the data
$table = "<table>";
$table .= "<tr><th>ID</th><th>Username</th><th>Email</th><th>Contact</th><th>Password</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $table .= "<tr><td>" . $row["user_id"] . "</td><td>" . $row["username"] . "</td><td>" . $row["email"] . "</td><td>" . $row["contact"] . "</td><td>" . $row["password"] . "</td></tr>";
    }
} else {
    $table .= "0 results";
}

$table .= "</table>";

echo $table;

// Close the database connection
$conn->close();
?>

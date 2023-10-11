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


$keyword = $_GET['keyword'];

// Construct a SQL query to search for users based on the keyword
$sql = "SELECT id, nic, first_name, last_name, date_of_birth, address, mobile_number, email_address, faculty, emergency_contact_name, emergency_contact_number FROM student WHERE
    id LIKE '%$keyword%' OR
    nic LIKE '%$keyword%' OR
    first_name LIKE '%$keyword%' OR
    mobile_number LIKE '%$keyword%' OR
    email_address LIKE '%$keyword%' OR
    faculty LIKE '%$keyword%'
";

$result = $conn->query($sql);

// Generate HTML table to display the search results
if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>ID</th><th>NIC</th><th>First Name</th><th>Last Name</th><th>Date of Birth</th><th>Address</th><th>Mobile Number</th><th>Email Address</th><th>Faculty</th><th>Emergency Contact Name</th><th>Emergency Contact number</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id"] . "</td><td>" . $row["nic"] . "</td><td>" . $row["first_name"] . "</td><td>" . $row["last_name"] . "</td><td>" . $row["date_of_birth"] . "</td><td>" . $row["address"] . "</td><td>" . $row["mobile_number"] . "</td><td>" . $row["email_address"] . "</td><td>" . $row["faculty"] . "</td><td>" . $row["emergency_contact_name"] . "</td><td>" . $row["emergency_contact_number"] . "</td></tr>";
    }

    echo "</table>";
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>

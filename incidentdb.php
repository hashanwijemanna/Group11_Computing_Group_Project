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
$sql = "SELECT incident_id, date, time, description, resolution_status, bus_id FROM incidents";
$result = $conn->query($sql);

// Generate HTML table to display the data
echo "<table>";
echo "<tr><th>Incident ID</th><th>Date</th><th>Time</th><th>Description</th><th>Resolution Status</th><th>Bus ID</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["incident_id"] . "</td><td>" . $row["date"] . "</td><td>" . $row["time"] . "</td><td>" . $row["description"] . "</td><td>" . $row["resolution_status"] . "</td><td>" . $row["bus_id"] . "</td></tr>";
    }
} else {
    echo "0 results";
}

echo "</table>";

// Close the database connection
$conn->close();
?>

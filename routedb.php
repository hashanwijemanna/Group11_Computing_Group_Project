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
$sql = "SELECT route_id, starting_point, ending_point, stops, schedule FROM route";
$result = $conn->query($sql);

// Generate HTML table to display the data
echo "<table>";
echo "<tr><th>Route ID</th><th>Starting Point</th><th>Ending Point</th><th>Stops</th><th>Schedule</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["route_id"] . "</td><td>" . $row["starting_point"] . "</td><td>" . $row["ending_point"] . "</td><td>" . $row["stops"] . "</td><td>" . $row["schedule"] . "</td></tr>";
    }
} else {
    echo "0 results";
}

echo "</table>";

// Close the database connection
$conn->close();
?>

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
$sql = "SELECT location_id, timestamp, latitude, longitude, bus_id FROM location";
$result = $conn->query($sql);

// Generate HTML table to display the data
echo "<table>";
echo "<tr><th>Location ID</th><th>Timestamp</th><th>Latitude</th><th>Longitude</th><th>Bud ID</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["location_id"] . "</td><td>" . $row["timestamp"] . "</td><td>" . $row["latitude"] . "</td><td>" . $row["longitude"] . "</td><td>" . $row["bus_id"] . "</td></tr>";
    }
} else {
    echo "0 results";
}

echo "</table>";

// Close the database connection
$conn->close();
?>

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
$sql = "SELECT trip_id, date, time, driver_id, list_of_students_onboard, bus_id, route_id FROM trip";
$result = $conn->query($sql);

// Generate HTML table to display the data
echo "<table>";
echo "<tr><th>Trip ID</th><th>Date</th><th>Time</th><th>Driver ID</th><th>List of Students onboard</th><th>Bus ID</th><th>Route ID</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["trip_id"] . "</td><td>" . $row["date"] . "</td><td>" . $row["time"] . "</td><td>" . $row["driver_id"] . "</td><td>" . $row["list_of_students_onboard"] . "</td><td>" . $row["bus_id"] . "</td><td>" . $row["route_id"] . "</td></tr>";
    }
} else {
    echo "0 results";
}

echo "</table>";

// Close the database connection
$conn->close();
?>

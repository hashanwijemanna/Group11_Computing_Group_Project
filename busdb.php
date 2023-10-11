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
$sql = "SELECT bus_id, model, license_plate_number, seating_capacity, last_maintenace_date, current_status, owner_id FROM bus";
$result = $conn->query($sql);

// Generate HTML table to display the data
echo "<table>";
echo "<tr><th>Bus ID</th><th>Model</th><th>License Plate Number</th><th>Seating Capacity</th><th>Last Maintenace Date</th><th>Current Status</th><th>Owner ID</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["bus_id"] . "</td><td>" . $row["model"] . "</td><td>" . $row["license_plate_number"] . "</td><td>" . $row["seating_capacity"] . "</td><td>" . $row["last_maintenace_date"] . "</td><td>" . $row["current_status"] . "</td><td>" . $row["owner_id"] . "</td></tr>";
    }
} else {
    echo "0 results";
}

echo "</table>";

// Close the database connection
$conn->close();
?>

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
$sql = "SELECT bus_id, model, license_plate_number, seating_capacity, last_maintenace_date, current_status, owner_id FROM bus WHERE
    bus_id LIKE '%$keyword%' OR
    model LIKE '%$keyword%' OR
    license_plate_number LIKE '%$keyword%' OR
    seating_capacity LIKE '%$keyword%' OR
    current_status LIKE '%$keyword%' OR
    owner_id LIKE '%$keyword%'
";

$result = $conn->query($sql);

// Generate HTML table to display the search results
if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>Bus ID</th><th>Model</th><th>License Plate Number</th><th>Seating Capacity</th><th>Last Maintenace Date</th><th>Current Status</th><th>Owner ID</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["bus_id"] . "</td><td>" . $row["model"] . "</td><td>" . $row["license_plate_number"] . "</td><td>" . $row["seating_capacity"] . "</td><td>" . $row["last_maintenace_date"] . "</td><td>" . $row["current_status"] . "</td><td>" . $row["owner_id"] . "</td></tr>";
    }

    echo "</table>";
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>

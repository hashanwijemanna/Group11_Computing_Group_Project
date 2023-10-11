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
$sql = "SELECT trip_id, date, time, driver_id, list_of_students_onboard, bus_id, route_id FROM trip WHERE
    trip_id LIKE '%$keyword%' OR
    date LIKE '%$keyword%' OR
    time LIKE '%$keyword%' OR
    driver_id LIKE '%$keyword%' OR
    list_of_students_onboard LIKE '%$keyword%' OR
    bus_id LIKE '%$keyword%' OR
    route_id LIKE '%$keyword%'
";

$result = $conn->query($sql);

// Generate HTML table to display the search results
if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>Trip ID</th><th>Date</th><th>Time</th><th>Driver ID</th><th>List of Student onboard</th><th>Bus ID</th><th>Route ID</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["trip_id"] . "</td><td>" . $row["date"] . "</td><td>" . $row["time"] . "</td><td>" . $row["driver_id"] . "</td><td>" . $row["list_of_students_onboard"] . "</td><td>" . $row["bus_id"] . "</td><td>" . $row["route_id"] . "</td></tr>";
    }

    echo "</table>";
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>

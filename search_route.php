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
$sql = "SELECT route_id, starting_point, ending_point, stops, schedule FROM route WHERE
    route_id LIKE '%$keyword%' OR
    starting_point LIKE '%$keyword%' OR
    ending_point LIKE '%$keyword%' OR
    stops LIKE '%$keyword%'
    
";

$result = $conn->query($sql);

// Generate HTML table to display the search results
if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>Route ID</th><th>Starting Point</th><th>Ending Point</th><th>Stops</th><th>Schedule</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["route_id"] . "</td><td>" . $row["starting_point"] . "</td><td>" . $row["ending_point"] . "</td><td>" . $row["stops"] . "</td><td>" . $row["schedule"] . "</td></tr>";
    }

    echo "</table>";
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>

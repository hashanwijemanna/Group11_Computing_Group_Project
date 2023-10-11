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
$sql = "SELECT notification_id, sender, recipient, message, timestamp, status FROM notifications WHERE
    notification_id LIKE '%$keyword%' OR
    sender LIKE '%$keyword%' OR
    recipient LIKE '%$keyword%' OR
    message LIKE '%$keyword%' OR
    timestamp LIKE '%$keyword%' OR
    status LIKE '%$keyword%'
";

$result = $conn->query($sql);

// Generate HTML table to display the search results
if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>Notification ID</th><th>Sender</th><th>Recipient</th><th>message</th><th>Timestamp</th><th>Status</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["notification_id"] . "</td><td>" . $row["sender"] . "</td><td>" . $row["recipient"] . "</td><td>" . $row["message"] . "</td><td>" . $row["timestamp"] . "</td><td>" . $row["status"] . "</td></tr>";
    }

    echo "</table>";
} else {
    echo "No results found.";
}

// Close the database connection
$conn->close();
?>

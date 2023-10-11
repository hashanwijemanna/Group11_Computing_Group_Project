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
$sql = "SELECT notification_id, sender, recipient, message, timestamp, status FROM notifications";
$result = $conn->query($sql);

// Generate HTML table to display the data
echo "<table>";
echo "<tr><th>Notification ID</th><th>Sender</th><th>Recipient</th><th>Message</th><th>Timestamp</th><th>Status</th></tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["notification_id"] . "</td><td>" . $row["sender"] . "</td><td>" . $row["recipient"] . "</td><td>" . $row["message"] . "</td><td>" . $row["timestamp"] . "</td><td>" . $row["status"] . "</td></tr>";
    }
} else {
    echo "0 results";
}

echo "</table>";

// Close the database connection
$conn->close();
?>

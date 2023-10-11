<?php
// Database credentials
$hostname = "localhost:3307"; // Change to your MySQL server hostname
$username = "root"; // Change to your MySQL username
$password = "MySQLROOT5288"; // Change to your MySQL password
$database = "computing_project"; // Change to your MySQL database name

// Create a database connection
$conn = mysqli_connect($hostname, $username, $password, $database);

// Check the connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// SQL query to retrieve data from the database
$sql = "SELECT * FROM student"; // Change 'your_table' to your actual table name

// Execute the query
$result = mysqli_query($conn, $sql);

// Fetch and display the data
while ($row = mysqli_fetch_assoc($result)) {
    echo "<li>" . $row['id'] . "</li>"; // Change 'column_name' to your actual column name
    echo "<li>" . $row['First_name'] . "</li>";
}

// Close the database connection
mysqli_close($conn);
?>



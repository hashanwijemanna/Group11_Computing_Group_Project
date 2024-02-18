<?php

include("dbconnection.php");
$con = dbconnection();

if(isset($_POST["email"]) && isset($_POST["password"])) {
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Query to fetch user details based on email and password
    $query = "SELECT * FROM `users` WHERE `email` = '$email' AND `password` = '$password'";
    $result = mysqli_query($con, $query);

    if(mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $userType = $row["user_type"];

        // Send the user type back to the Flutter app
        echo $userType;
    } else {
        echo "Invalid email or password";
    }
} else {
    echo "Email and password parameters are required";
}

?>

<?php

include("dbconnection.php");
$con=dbconnection();

if(isset($_POST["username"])){
    $username=$_POST["username"];
}
else {
    echo json_encode(array("success" => false, "message" => "Username not provided"));
    exit;
}

if(isset($_POST["email"])){
    $email=$_POST["email"];
}
else {
    echo json_encode(array("success" => false, "message" => "Email not provided"));
    exit;
}

if(isset($_POST["user_type"])){
    $user_type=$_POST["user_type"];
}
else {
    echo json_encode(array("success" => false, "message" => "User type not provided"));
    exit;
}

if(isset($_POST["password"])){
    $password=$_POST["password"];
}
else {
    echo json_encode(array("success" => false, "message" => "Password not provided"));
    exit;
}

$query="INSERT INTO `users`(`username`, `email`, `user_type`, `password`) 
VALUES ('$username','$email','$user_type','$password')";

$exe=mysqli_query($con,$query);

if($exe){
    echo json_encode(array("success" => true, "message" => "Record inserted successfully"));
} else {
    echo json_encode(array("success" => false, "message" => "Failed to insert record"));
}

?>

<?php

function dbconnection(){
    $con=mysqli_connect("localhost","root","","ostt");
    return $con;
}
?>

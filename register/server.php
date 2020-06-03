<?php

    $servername = "localhost";
    $username = "root";
    $password ="1234";
    $dbname = "my_cilnic";


    // Create Connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (mysqli_connect_error()) {
        echo "Fail connect server";
        exit();
    }

    // $mysqli = new
    // mysqli($servername, $username, $password, $dbname);

    // check connection
    //if (!$conn) {
    //    die{"Connection failed" . mysqli_connect_error()};
    // } 

    
?>
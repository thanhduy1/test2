<?php
    session_start();
    $server_name = "sql6.freemysqlhosting.net";
    $username = "sql6508901";
    $password = "y6WtmIgF7f";
    $database_name = "sql6508901";
    $conn = mysqli_connect($server_name, $username, $password, $database_name);
    if (!$conn) {
            echo "Error " ;
    } 
?>
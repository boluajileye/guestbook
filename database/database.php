<?php

    $db_host = "localhost";
    $db_username = "root";
    $db_password = "";
    $db_name = "guestbook";

    $databaseconnect = mysqli_connect($db_host, $db_username, $db_password, $db_name);

    if(!$databaseconnect){
       die("database connection error:" . mysqli_connect_errno());
    }
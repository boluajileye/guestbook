<?php
session_start();
    include "database/database.php";
  if(isset($_GET['guest_id'])){
      $guest_id = $_GET['guest_id']; 
      $deletefromdb = "DELETE FROM guest WHERE guest_id=$guest_id";

    $delete= mysqli_query($databaseconnect, $deletefromdb);
    if($delete){
        $_SESSION['message'] = "Profile deleted Successfully";
        $_SESSION['errorstyle'] = "green";
        header('location: list.php');
      } else {
        $_SESSION['message'] = "Profile not deleted";
        $_SESSION['errorstyle'] = "red";
        header('location: list.php');
      }
  }

<?php
$name = $_POST['name'];
$rollno = $_POST['rollno'];
$email = $_POST['email'];
$number1 = $_POST['number1'];
$department = $_POST['department'];
$college = $_POST['college'];
$activity = $_POST['activity'];
$prevpart = $_POST['prevpart'];

if (!empty($name) && !empty($rollno) && !empty($number1)) {
$host = "localhost";
    $dbUsername = "root";
    $dbPassword = "q1w@e#r4";
    $dbname = "cgcevents";
    //create connection
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $SELECT = "SELECT rollno From ppart Where rollno = ? Limit 1";
     $INSERT = "INSERT Into ppart (name, rollno, email, number1, department, college, activity, prevpart) values(?, ?, ?, ?, ?, ?, ?,?)";
     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("i", $rollno);
     $stmt->execute();
     $stmt->bind_result($rollno);
     $stmt->store_result();
     $stmt->store_result();
     $stmt->fetch();
     $rnum = $stmt->num_rows;
     if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("sisissss", $name ,$rollno, $email, $number1, $department, $college , $activity,$prevpart );
      $stmt->execute();
     echo "You have registered for participation in Parivartan Successfully &#128077;<br><br>Concerned Coordinators will Contact you Shortly ";
     } else {
      echo "You have already Registered for Participation in Parivartan<br><br>Kindly Contact Us if you think it's a Mistake";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "Files marked with (*) are mandatory.";
 die();
}
?>
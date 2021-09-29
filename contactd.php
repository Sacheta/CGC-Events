<?php
$name = $_POST['name'];
$rollno = $_POST['rollno'];
$email = $_POST['email'];
$number1 = $_POST['number1'];
$queries = $_POST['queries'];

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
     $SELECT = "SELECT rollno From contactd Where rollno = ? Limit 1";
     $INSERT = "INSERT Into contactd (name, rollno, email, number1, queries) values(?, ?, ?, ?,?)";
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
      $stmt->bind_param("sisis", $name ,$rollno, $email, $number1, $queries);
      $stmt->execute();
     echo "We have received your query and will contact you shortly.";
     } else {
      echo "You have already submitted your query. <br>We will contact you shortly.";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "Fields marked with (*) are mandatory.";
 die();
}
?>
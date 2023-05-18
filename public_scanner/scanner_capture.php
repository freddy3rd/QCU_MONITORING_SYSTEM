<?php
session_start();
include 'conn.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

  $faculty = $_POST['faculty'];
  $imgDataUrl = $_POST['image'];

  $sql = "SELECT * FROM faculty WHERE facultyID = '$faculty'";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      $facultyID = $result->fetch_assoc()['facultyID'];

      $sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID'";
      $result = $conn->query($sql);

      if ($result->num_rows > 0) {
          $attendance = $result->fetch_assoc();
          $subjectID = $attendance['subjectID'];
          $facultyID = $attendance['facultyID'];

          $img = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $imgDataUrl));
          $filename = '' . uniqid() . '.png';
          // Write the binary string to a file on the server
          $filepath = './img/'. $filename;
          file_put_contents($filepath, $img);

          $sql = "INSERT INTO attendance_attachments(facultyID, attachment,subjectID) VALUES ('$facultyID', '$filename','$subjectID')";
          $conn->query($sql);

          header("Location: index1.php");
      }
  }
}


?>
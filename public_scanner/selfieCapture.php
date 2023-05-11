<?php
session_start();
include 'conn.php';

        //code...
    //     $imageName = uniqid() . ' .jpeg'; 

    // $stmt = $conn->prepare("INSERT INTO  attendance_attachments(subjectID, facultyID, attachment)  VALUES (?, ?, ?)");
    // $stmt->bind_param("sss",$_POST['subject'], $_POST['faculty'], $imageName);
    // $stmt->execute();


    //     // Upload the image using the webcam module
    // $tmpName = $_FILES['webcam']['tmp_name'];
    // move_uploaded_file($tmpName, './img/' . $imageName);
 $subjectId = $_POST['subject'];
  $facultyId = $_POST['faculty'];
  $imgDataUrl = $_POST['image'];

  // Convert the data URL to a binary string
  $img = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $imgDataUrl));
    $filename = '' . uniqid() . '.png';
  // Write the binary string to a file on the server
  $filepath = './img/'. $filename;
  file_put_contents($filepath, $img);

    $stmt = $conn->prepare("INSERT INTO  attendance_attachments(subjectID, facultyID, attachment)  VALUES (?, ?, ?)");
    $stmt->bind_param("sss",$subjectId, $facultyId, $filename);
    $stmt->execute();

  ?>
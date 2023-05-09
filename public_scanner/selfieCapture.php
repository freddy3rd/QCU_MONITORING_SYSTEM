<?php
session_start();
include 'conn.php';

        //code...
        $imageName = uniqid() . ' .jpeg'; 

    $stmt = $conn->prepare("INSERT INTO  attendance_attachments(subjectID, facultyID, attachment)  VALUES (?, ?, ?)");
    $stmt->bind_param("sss",$_POST['subject'], $_POST['faculty'], $imageName);
    $stmt->execute();


        // Upload the image using the webcam module
    $tmpName = $_FILES['webcam']['tmp_name'];
    move_uploaded_file($tmpName, './img/' . $imageName);

  ?>
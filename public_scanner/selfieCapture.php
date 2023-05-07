<?php
session_start();
include 'conn.php';



if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $faculty = $_POST['faculty'];
    $sql = "SELECT * FROM faculty WHERE facultyID = '$faculty'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $facultyID = $result->fetch_assoc()['facultyID'];

        $sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID' ORDER BY id DESC LIMIT 1";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            $attendance = $result->fetch_assoc();
            $attendanceID = $attendance['id'];
            $facultyID = $attendance['facultyID'];

            $tmpName = $_FILES['webcam']['tmp_name'];
            $imageName = date('Y.m.d') . " - " . date('h.i.sa') . '.jpeg';
            move_uploaded_file($tmpName, './img/' . $imageName);

            $sql = "INSERT INTO attendance_attachments(attendanceID, facultyID, attachment) VALUES ('$attendanceID', '$facultyID', '$imageName')";
            $conn->query($sql);

            header("Location: index1.php");
        }
    }
}

if (isset($_FILES['webcam']['tmp_name'])) {
    $tmpName = $_FILES['webcam']['tmp_name'];
    $imageName = uniqid()  . '.jpeg';
    move_uploaded_file($tmpName, './img/' . $imageName);
}
// if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['image'])) {
//     $data = $_POST['image'];

//     $filename = uniqid() . '.png';
//     $filepath = './img/' . $filename;
//     file_put_contents($filepath, $decoded);
//     echo 'Image saved as ' . $filename;
//   } else {
//     echo 'Invalid request';
//   }
?>

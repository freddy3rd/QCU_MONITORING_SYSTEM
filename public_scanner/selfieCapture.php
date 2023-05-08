<?php
session_start();
include 'conn.php';

$imageName = uniqid() . ' .jpeg'; 


if(isset($_POST['getImg']) && isset($_FILES["webcam"]["tmp_name"])){
    $facultyId = $_POST['faculty'];
    $subjectId = $_POST['subject'];

    $sql = "INSERT INTO attendance_attachments(subjectID, facultyID, attachment) VALUES ('$subjectId', '$facultyId', '$imageName')";
    $conn->query($sql);

    $tmpName = $_FILES ["webcam"]["tmp_name"];
    move_uploaded_file ($tmpName, 'img/' . $imageName); //Upload to img folder
    // imgSrc( $facultyId,$subjectId );
}

// function imgSrc($subject,$faculty){
    if (){

      
    
    }
    
// }
// if(isset($_POST['getImg'])){
  

//     $sql = "UPDATE attendance_attachments
//     SET subjectID = ' $subjectID ', facultyID = 'facultyID' WHERE id = id";
//     // $sql = "INSERT INTO attendance_attachments(subjectID, facultyID, attachment) VALUES ('$subjectID', '$facultyID', '$imageName')";
//     $conn->query($sql);
// }



// if () {
//     $faculty = $_POST['faculty'];
//     $sql = "SELECT * FROM faculty WHERE facultyID = '$faculty'";
//     $result = $conn->query($sql);

//     if ($result->num_rows > 0) {
//         $facultyID = $result->fetch_assoc()['facultyID'];

//         $sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID' ORDER BY id DESC LIMIT 1";
//         $result = $conn->query($sql);

//         if ($result->num_rows > 0) {
//             $attendance = $result->fetch_assoc();
//             $attendanceID = $attendance['id'];
//             $facultyID = $attendance['facultyID'];

//             $tmpName = $_FILES['webcam']['tmp_name'];
//             $imageName = date('Y.m.d') . " - " . date('h.i.sa') . '.jpeg';
//             move_uploaded_file($tmpName, './img/' . $imageName);

//             $sql = "INSERT INTO attendance_attachments(attendanceID, facultyID, attachment) VALUES ('$attendanceID', '$facultyID', '$imageName')";
//             $conn->query($sql);

//             header("Location: index1.php");
//         }
//     }
// }

// if ($_SERVER['REQUEST_METHOD'] == 'POST') {

//     $facultyID = $_POST['faculty'];
//     $subjectID = $_POST['subject'];

//     $tmpName = $_FILES['webcam']['tmp_name'];
//     // $imageName = uniqid()  . '.jpeg';
//     move_uploaded_file($tmpName, './img/' . $imageName);

//     $sql = "INSERT INTO attendance_attachments(subjectID, facultyID, attachment) VALUES ('$subjectID', '$facultyID', '$imageName')";
//     $conn->query($sql);
// }
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

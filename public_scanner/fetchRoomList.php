<?php
if(isset($_POST['sync_room'])){

	include 'conn.php';
    // $candidate_name = $_POST['candidate_name'];
    
    $result = mysqli_query($conn, "SELECT list_of_rooms.ID,type_of_camera.Device ,list_of_rooms.Room_name,list_of_rooms.Room_Floor,list_of_rooms.status FROM list_of_rooms INNER JOIN type_of_camera ON type_of_camera.id = list_of_rooms.Device");
    $data = array();
    while ($row = mysqli_fetch_object($result)) {
        $data[]= $row;     // print_r($row);
     }
     $encode_data = json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
     file_put_contents('rooms.json',$encode_data);
    }

if(isset($_POST['prof_schedule'])){

	include 'conn.php';
    // $candidate_name = $_POST['candidate_name'];
    
    $result = mysqli_query($conn, "SELECT * FROM (SELECT schedule_setup.id,schedule_setup.facultyID,schedule_setup.subjectID, schedule_setup.type,schedule_setup.lec_room,list_of_rooms.Room_name as lec_room_name,schedule_setup.time_lec FROM schedule_setup inner join list_of_rooms ON schedule_setup.lec_room = list_of_rooms.ID) lec_setup 
    INNER JOIN (SELECT schedule_setup.id, schedule_setup.type,schedule_setup.lab_room, schedule_setup.time_lab, list_of_rooms.Room_name as lab_room_name,schedule_setup.campus  FROM schedule_setup inner join list_of_rooms ON schedule_setup.lab_room = list_of_rooms.ID )lab_setup ON lec_setup.id = lab_setup.id");
    $data = array();
    while ($row = mysqli_fetch_object($result)) {
        $data[]= $row;     // print_r($row);
     }
     $encode_data = json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
     file_put_contents('prof_schedule.json',$encode_data);
    }


if(isset($_POST['paired_devices'])){

	$available_camera = $_POST['devices'];

     $encode_data = json_encode($available_camera, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
     file_put_contents('paired_devices.json',$encode_data);
}

    //get paired room and create json for set camera


if(isset($_POST['facultyId'])){
    $qr = $_POST['qr'];
    $sql = "SELECT facultyID FROM faculty where faculty_qr = '$qr'";

    $query = $conn->query($sql);
    $row = $query->fetch_assoc();
    echo'  <input type="hidden" id="facultyId" value="'.$row['facultyID'].'">';
}


?>
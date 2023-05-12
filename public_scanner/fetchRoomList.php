<?php
if(isset($_POST['sync_room'])){

	include 'conn.php';
    // $candidate_name = $_POST['candidate_name'];
    
    $result = mysqli_query($conn, "SELECT room_db.id,room_db.room ,room_db.room_floor, type_of_camera.Device FROM room_db inner join type_of_camera ON room_db.Device = type_of_camera.id");
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
    
    $result = mysqli_query($conn, "SELECT * FROM (SELECT schedule_setup.facultyID,schedule_setup.subjectID, schedule_setup.date,faculty_subject_schedule.section,schedule_setup.lec_room as lecture_room,faculty_subject_schedule.time_start as lec_start_time,faculty_subject_schedule.time_end as lec_end_time FROM schedule_setup inner join faculty_subject_schedule ON schedule_setup.facultyID = faculty_subject_schedule.facultyID AND schedule_setup.subjectID = faculty_subject_schedule.subjectID WHERE faculty_subject_schedule.type = 'Lecture') AS lecture_sched INNER JOIN
    (SELECT schedule_setup.facultyID,schedule_setup.subjectID,faculty_subject_schedule.section,schedule_setup.lab_room as laboratory_room,faculty_subject_schedule.time_start as lab_start_time,faculty_subject_schedule.time_end as lab_end_time, faculty_subject_schedule.day FROM schedule_setup inner join faculty_subject_schedule ON schedule_setup.facultyID = faculty_subject_schedule.facultyID AND schedule_setup.subjectID = faculty_subject_schedule.subjectID WHERE faculty_subject_schedule.type = 'Laboratory') as laboratory_sched ON lecture_sched.facultyID = laboratory_sched.facultyID WHERE lecture_sched.subjectID = laboratory_sched.subjectID");
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
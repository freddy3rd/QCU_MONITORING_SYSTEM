<?php

include 'conn.php';
include 'timezone.php';

date_default_timezone_set("Asia/Manila");

if(isset($_POST['out'])){

    $facultyID = $_POST['faculty'];
    $date_now = date('Y-m-d');

    

        $sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID' AND date = '$date_now' AND status = '1'";
        $query = $conn->query($sql);
        $nrow = $query->fetch_assoc();
        
        	// $logstatus = ($lognow > $row['time_out']) ? 1 : 0;
	    if($nrow['time_out'] != '00:00:00'){
	    	$output['error'] = true;
	    	$output['message'] = 'You have timed out for today';
	    }else{

            $time = date("h:i:sa"); // Input time in 12-hour format
            $time_24hrs_format = date('H:i:s', strtotime($time));
            $sql = "UPDATE attendance SET time_out = '$time_24hrs_format', status ='0' WHERE facultyID = '$facultyID' AND status ='1'";
            // $query = $conn->query($sql);
        }


}

?>
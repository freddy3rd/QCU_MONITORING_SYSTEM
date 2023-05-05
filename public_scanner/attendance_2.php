<?php
	if(isset($_POST['faculty'])){
		$output = array('error'=>false);

		include 'conn.php';
		include 'timezone.php';

		$faculty_qr = $_POST['faculty'];
		$status = $_POST['status'];

		$sql = "SELECT * FROM faculty WHERE faculty_qr = '$faculty_qr'";
		$query = $conn->query($sql);

		if($query->num_rows > 0){
			$row = $query->fetch_assoc();

			$facultyID = $row['facultyID'];
			$date_now = date('Y-m-d');

			if($status == 'in'){

				$sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID' AND date = '$date_now' AND time_in IS NOT NULL AND time_out = '00:00:00'";
				$query = $conn->query($sql);

				if($query->num_rows > 0){
					$output['error'] = true;
					$output['message'] = 'You have timed in for today';
				}
                
				else{
					//updates
					$facultyID = $row['facultyID'];
					$sched = $row['schedule_id'];
					$lognow = date('H:i:s');

					$sql = "SELECT * FROM schedules WHERE id = '$sched'";
					$squery = $conn->query($sql);

					$srow = $squery->fetch_assoc();
					// $logstatus = ($lognow > $srow['time_in']) ? 1 : 0;
					$logstatus = ($lognow > $srow['time_in']) ? 1 : 0;
					//
					$sql = "INSERT INTO attendance (facultyID, date, time_in, status) VALUES ('$facultyID', '$date_now', NOW(), '$logstatus')";

					if($conn->query($sql)){
						$output['message'] = 'Time in: '.$row['faculty_firstname'].' '.$row['faculty_lastname'].' '.'"Please take a screenshot"';
					}
					else{
						$output['error'] = true;
						$output['message'] = $conn->error;
					}

				}
			}else{
			
				$sql = "SELECT *, attendance.id AS uid FROM attendance LEFT JOIN faculty ON faculty.facultyID = attendance.facultyID WHERE attendance.facultyID = '$facultyID' AND date = '$date_now'";
				$query = $conn->query($sql);
				
				if($query->num_rows < 1){
					$output['error'] = true;
					$output['message'] = 'Cannot Timeout. No time in.';
				}
				else{
					$row = $query->fetch_assoc();
					
					$logstatus = ($lognow > $row['time_out']) ? 1 : 0;

					if($row['time_out'] != '00:00:00'){
						$output['error'] = true;
						$output['message'] = 'You have timed out for today';
					}															// |				
					else{								//QUERY CHANCE DOWN BELOW  V , status = '$logstatus'
						
						$sql = "UPDATE attendance SET time_out = NOW(),  WHERE id = '".$row['uid']."'";

						if($conn->query($sql)){

							$output['message'] = 'Time out: '.$row['faculty_firstname'].' '.$row['faculty_lastname'];

							$sql = "SELECT * FROM attendance WHERE id = '".$row['uid']."'";
							
							$query = $conn->query($sql);
							$urow = $query->fetch_assoc();

							$time_in = $urow['time_in'];
							$time_out = $urow['time_out'];

							$sql = "SELECT * FROM faculty LEFT JOIN schedules ON schedules.id = faculty.schedule_id WHERE faculty.id = '$id'";

							$query = $conn->query($sql);
							$srow = $query->fetch_assoc();

							if($srow['time_in'] > $urow['time_in']){
								$time_in = $srow['time_in'];
							}

							if($srow['time_out'] < $urow['time_in']){
								$time_out = $srow['time_out'];
							}

							$time_in = new DateTime($time_in);
							$time_out = new DateTime($time_out);
							$interval = $time_in->diff($time_out);

							$hrs = $interval->format('%h');
							$mins = $interval->format('%i');
							$mins = $mins/60;
							$int = $hrs + $mins;
							if($int > 4){
								$int = $int - 1;
							}

							$sql = "UPDATE attendance SET num_hr = '$int' WHERE id = '".$row['uid']."'";
							$conn->query($sql);
						}
						else{
							$output['error'] = true;
							$output['message'] = $conn->error;
						}
					}
					
				}
			}
		}
		else{
			$output['error'] = true;
			$output['message'] = 'QR Code not found please Try Again!';
		}
		
	}
	
	echo json_encode($output);

?>
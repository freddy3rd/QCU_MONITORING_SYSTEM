<?php
	$conn = new mysqli('localhost', 'root', '', 'new_ams_db');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
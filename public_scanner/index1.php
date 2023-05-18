<?php 
	include 'conn.php';
  session_start(); 
?>



<style>
   video{
    position:relative;
    width:480px;
    height:350px;
    margin: 1rem; */
    /* transform: translateX(-80%);
    z-index:-1; */
  } 
  .camera_container{
    position: relative;
  }
  .camera_container:before{
    content:attr(data-attach);
    position:absolute;
    top:0;
    left:0;
    padding:10px;
    font-size: 2.5rem;
    background-color:10px;
    text-transform:capitalize;
    font-weight:bold;
    color: white;
    z-index:999;
    background: rgba(0,0,0,0.5)
  }
  #webcam,.img_result > img,#scanner_webcam{
    visibility: hidden; 
    position: absolute;
    pointer-events:none;

  }
  .tbodyDiv{
max-height: clamp(5em,10vh,250px);
overflow: auto;
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
    <!-- <link rel="stylesheet" type="text/css" href="./indexstyle.css"> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js" rel="nofollow"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <!-- jQuery 3 -->
    <!-- <script src="./bower_components/jquery/dist/jquery.min.js"></script> -->
    <!-- Bootstrap 3.3.7 -->
    <!-- <script src="./bower_components/bootstrap/dist/js/bootstrap.min.js"></script> -->
    <!-- Moment JS -->

 
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/webcamjs/1.0.26/webcam.min.js"></script>
    
    <!-- <script type="module" src="captureImage_v2.js" defer></script> -->

    <script type="module"  src="./javascript/index.js" defer></script>


    <!-- <script module src="./javascript/generate_camera.js" defer></script> -->
</head>
<body class=" bg-body-secondary">
 

  <div class="container-fluid row ">
    <div class="col-md-6 d-flex align-items-center justify-content-center position-relative p-4" style="background:#065280;min-height:100vh">
      <div class=" text-center fs-3 text-light p-4 position-fix top-0" >
        <h3 class="fw-bold p-2">Web-based Faculty Weekly Accomplishment Report for Quezon City University</h3>
        <div class="container">
          <img src="./public/qcu-logo-2019-1@2x.png" class="m-4" width="200" height="200" class="logo" alt="">
          <hr class="px-4 border-4 rounded-2">
        </div>
        <h3>Good Life Starts Here!</h3>
        <div class="table-responsive-md">
          
        <table class="table table-light align-middle text-center">
        <thead>
          <tr>  
            <th scope="col">Date</th>
            <th scope="col">Faculty Name</th>
            <th scope="col">Section</th>
            <th scope="col">Lec Room</th>
            <th scope="col">Time Start</th>
            <th scope="col">Time End</th>
            <th scope="col">Lab Room</th>
            <th scope="col">Time Start</th>
            <th scope="col">Time End</th>
          </tr>
        </thead>
      
        <tbody>
          <?php
          $date_now = date('Y-m-d');
          $timestamp = strtotime($date_now); // This will create a Unix timestamp for May 13th, 2023
          $day = date('l', $timestamp);

          $sql = "SELECT * FROM (SELECT schedule_setup.facultyID,schedule_setup.subjectID, schedule_setup.date,faculty_subject_schedule.section,schedule_setup.lec_room as lecture_room,faculty_subject_schedule.time_start as lec_start_time,faculty_subject_schedule.time_end as lec_end_time,faculty_subject_schedule.day FROM schedule_setup inner join faculty_subject_schedule ON schedule_setup.facultyID = faculty_subject_schedule.facultyID WHERE faculty_subject_schedule.type = 'Lecture' AND schedule_setup.date = '$date_now' AND faculty_subject_schedule.day = '$day') AS lecture_sched INNER JOIN
          (SELECT schedule_setup.facultyID,schedule_setup.subjectID,faculty_subject_schedule.section,schedule_setup.lab_room as laboratory_room,faculty_subject_schedule.time_start as lab_start_time,faculty_subject_schedule.time_end as lab_end_time, faculty_subject_schedule.day FROM schedule_setup inner join faculty_subject_schedule ON schedule_setup.facultyID = faculty_subject_schedule.facultyID WHERE faculty_subject_schedule.type = 'Laboratory' AND schedule_setup.date = '$date_now' AND faculty_subject_schedule.day = '$day') as laboratory_sched ON lecture_sched.facultyID = laboratory_sched.facultyID INNER JOIN (SELECT faculty.facultyID, faculty.faculty_firstname,faculty.faculty_lastname,faculty.faculty_middlename FROM faculty)as faculty_info  WHERE faculty_info.facultyID = lecture_sched.facultyID AND lecture_sched.subjectID = laboratory_sched.subjectID  ";

          $run_query = mysqli_query($conn,$sql) or die(mysqli_error($conn));
          if(mysqli_num_rows($run_query) > 0){
            while($row = mysqli_fetch_array($run_query)){
              echo'
              <tr>
              <td>'.$row['date'].'</td>
              <td>'.$row['faculty_lastname'].', '.$row['faculty_firstname'].'</td>
              <td>'.$row['section'].'</td>
              <td>'.$row['lecture_room'].'</td>
              <td>'.$row['lec_start_time'].'</td>
              <td>'.$row['lec_end_time'].'</td>
              <td>'.$row['laboratory_room'].'</td>
              <td>'.$row['lab_start_time'].'</td>
              <td>'.$row['lab_end_time'].'</td>

              </tr>
            ';
              
            }
          }

          ?>
            </tbody>

          </table>
        </div>
      </div>
    </div>

    
    <div class="col-md-6 p-4 position-ralative">
      <div class="d-flex justify-content-end align-items-center fs-5 py-3 px-2">
        <span id="date" class="fw-bold "></span><span class="fw-bold" id="time"></span>
        <a href="#=?refresh" class="nav-link" id="sync" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Refresh"><i class="fa-solid fa-rotate fs-5 mx-3" data-bs-toggle="modal" data-bs-target="#refresh"></i></a>
        <a href="#" class="nav-link" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="Setting"><i class="fa-solid fa-gear fs-5" data-bs-toggle="modal" data-bs-target="#setting" ></i></a>
      </div> 
      
      <div class="camera-container d-grid justify-content-center position-relative">
        <video id="scanner_camera" class="mx-2" autoplay></video>
        
          <div id="scanner_result_container" class="main_img_result position-absolute" ></div>
          <div class="p-3 bg-light">
            <div class="form-group">
              <form id="attendance">
                <select class="form-control mb-3" name="status" id="status">
                  <option value="in">Time In</option>
                  <option value="out">Time Out</option>
                </select>
                <div class="form-group mb-3" id="input_fields">
                  <input type="password" class="form-control input-lg" id="faculty" name="faculty" required>
                  <input type="hidden" id="deviceId">
                  <input type="hidden" id="facultyId">
                </div>
                <button type="submit" id="subbtn" class="btn fw-bold text-light" style="background: #DCCD60;"  name="signin"><i class="fa fa-sign-in"></i> Submit</button>
                </form>
            </div>
          </div>
            <div class="alert alert-success alert-dismissible text-center position-absolute px-3 align-item-center justify-content-center w-50 start-50 translate-middle"  id="snapShot_container" style="display:none;top:60%;">
                <i class="icon fa fa-circle-check fs-2"></i>
                <div class="result d-grid mb-2"> <span class="message fw-bold"></span></div>
              <!-- <button type="button" id="snapShot" class="btn btn-primary fw-bold"> Take a selfie </button> -->
            </div>

          <div class="alert alert-danger alert-dismissible text-center position-absolute px-3 w-50 justify-content-between align-items-center start-50 translate-middle" style="top:60%;display:none;">
            <div class="result d-grid"><i class="icon fa fa-warning mx-1 fs-3"></i><span class="message fw-bold"></span></div>
            <button type="button" class="close border-0  text-danger bg-transparent position-absolute " style="top:5px;right:5px" data-dismiss="alert" aria-hidden="true"><i class="fa-solid fa-close fw-bold"></i></button>
          </div>  
        </div>

        
        <h3 class="text-center fw-bold fs-3 text-danger py-4"><i class="fa-solid fa-camera"></i> Live Camera</h3>
        <div class="p-4 d-flex flex-wrap justify-content-center align-item-center gap-2 camera_list">

        <!-- <iframe src="./scanner1.html" scrolling="no" width="440" height="380" frameborder="0" id="scanner_1"></iframe> -->
        <!-- <iframe src="./scanner2.html" scrolling="no" width="440" height="380" frameborder="0" id="scanner_1"></iframe> -->
        </div>
    </div>

    <!--SETTINGS MODAL-->
    <div class="modal fade" id="setting" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalToggleLabel"><i class="fa-solid fa-gear mx-2" ></i>Settings</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="setting-body">

      <div class="modal-footer">
        <button class="btn btn-primary" id="save-settings">Save</button>
        <button class="btn btn-danger"  data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
   
</div>
<div class="modal fade" id="refresh" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalToggleLabel"><i class="fa-solid fa-gear mx-2" ></i>Refresh</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="setting-body">
       <h4> Are You Sure you want to Refresh ?</h4>
      <div class="modal-footer">
        <button class="btn btn-primary" id="sync_submit">Yes</button>
        <button class="btn btn-danger"  data-bs-dismiss="modal">No</button>
      </div>
    </div>
  </div>
  </div>

  
           
	
<script type="text/javascript">

$(function() {
  var interval = setInterval(function() {
    var momentNow = moment();
    $('#date').html(momentNow.format('MMMM DD, YYYY'));  
    $('#time').html(' | ' + momentNow.format('hh:mm:ss A'));
  }, 100);

});


</script>


<script>


$(document).ready(function(){
			$('#snapShot').click(function(){
				var faculty = $('#faculty').val();
        let attendance = $("#status").val();

				$.ajax({
					url: 'selfieCapture.php',
					type: 'POST',
					data: { faculty: faculty},
					
				});


        $(this).parent().css("display", "none");
			});
      
  
        
      $("#sync_submit").on('click',function(){
        location.reload();
        })

  
		});

    $('.close').click(function(){
				$(this).parent().css('display','none')
			});
    $('#cancel').click(function(){
				$(this).parent().parent().hide()
			});


</script>


</body>
</html>
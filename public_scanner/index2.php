<?php session_start(); ?>
<?php include 'header.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>QCU</title>
    <link rel="icon" href="images/QCU_Logo_2019.png" type="image/x-icon"></link>
    <link rel="stylesheet" href="index2.css">
</head>
<body>
    <div class="main-container">
    <header>
        <nav>
            <div class="nav-child">
                <figure>
                    <a href ="/ams/index2.php"> <img src="images/QCUAMSLOGO.png" alt="QCU Logo"> </a>
                    <figcaption>
                        <span>Q</span>
                        <span>C</span>
                        <span>U</span>
                    </figcaption>
                </figure>
            </div>
            <div class="nav-child">
                <div class="nav-lists">
                    <span id="date" class="date">February 05, 2023</span>
                    <span id="time" class="time">10:25:00 PM</span>
                </div>
            </div>
        </nav>
    </header>

    <section>
        <div>
            <h3 class="scale-min">
                QUEZON CITY UNIVERSITY ATTENDANCE AND MONITORING SYSTEM
            </h3>
        </div>
    </section>


    <main>
        <div>
            <video id="preview"></video>

            <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js" rel="nofollow"></script>
<script type="text/javascript">


    function toTextBox(qrID)
    {
      // var myelement = 
      // var test = document.getElementById("employee").value;
      document.getElementById("employee").value = qrID.toString();
      document.getElementById("subbtn").click();
      //window.alert(test.toString()); 

    }

    var scanner = new Instascan.Scanner({ video: document.getElementById('preview'), scanPeriod: 5, mirror: false });
    scanner.addListener('scan',function(content){
        console.log(content.toString());
        toTextBox(content.toString());


        //window.location.href=content;
    });
    Instascan.Camera.getCameras().then(function (cameras){
        if(cameras.length>0){
            scanner.start(cameras[0]);
            $('[name="options"]').on('change',function(){
                if($(this).val()==1){
                    if(cameras[0]!=""){
                        scanner.start(cameras[0]);
                    }else{
                        alert('No Front camera found!');
                    }
                }
            });
        }else{
            console.error('No cameras found.');
            alert('No cameras found.');
        }
    }).catch(function(e){
        console.error(e);
        alert(e);
    });

</script>

<script src="instascan.min.js"></script>
	<script type="text/javascript">
		let scanner=new Instacan.scanner({video:document.getElementById('preview')});
		Instacan.Camera.getCameras().then(function(cameras)){
			if(cameras.length>0)
			{
				scanner.start(cameras[0]);
			}
			else
			{
				alert("no camera Found");
			}
		}).catch(function(e)
		{
			console.error(e);
		});
		scanner.addListener('scan',function(c){
			document.getElementById("text") value=c;
		});
	</script>

<?php include 'scripts.php' ?>
<script type="text/javascript">
$(function() {
  var interval = setInterval(function() {
    var momentNow = moment();
    $('#date').html(momentNow.format('MMMM DD, YYYY'));  
    $('#time').html(' | ' + momentNow.format('hh:mm:ss A'));
  }, 100);

  $('#attendance').submit(function(e){
    e.preventDefault();
    var attendance = $(this).serialize();
    $.ajax({
      type: 'POST',
      url: 'attendance.php',
      data: attendance,
      dataType: 'json',
      success: function(response){
        if(response.error){
          $('.alert').hide();
          $('.alert-danger').show();
          $('.message').html(response.message);
        }
        else{
          $('.alert').hide();
          $('.alert-success').show();
          $('.message').html(response.message);
          $('#employee').val('');
        }
      }
    });
  });
    
});
</script>


<script>
$(function(){
  $('.edit').click(function(e){
    e.preventDefault();
    $('#edit').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

  $('.delete').click(function(e){
    e.preventDefault();
    $('#delete').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });
});

function getRow(id){
  $.ajax({
    type: 'POST',
    url: 'attendance_row.php',
    data: {id:id},
    dataType: 'json',
    success: function(response){
      $('#datepicker_edit').val(response.date);
      $('#attendance_date').html(response.date);
      $('#edit_time_in').val(response.time_in);
      $('#edit_time_out').val(response.time_out);
      $('#attid').val(response.attid);
      $('#employee_name').html(response.firstname+' '+response.lastname);
      $('#del_attid').val(response.attid);
      $('#del_employee_name').html(response.firstname+' '+response.lastname);
    }
  });
}
</script>



            <div class="video-caption">
                <em>"Good life starts here."</em>
            </div>
        </div>
        <div class="space"></div>
        <div>
            <form>
                <div>
                    <label for="title-form">
                        Enter Access ID
                    </label>
                </div>
                <div>
                    <select class="form-control" name="status">
                        <option value="in">Time In</option>
                        <option value="out">Time Out</option>
                    </select>
                </div>
                <div>
                    <input type="text" class="form-control input-lg" id="employee" name="employee" required>
        		    <!-- <span class="glyphicon glyphicon-calendar form-control-feedback"></span> -->
                </div>
                <div>
                    <button type="submit" id="subbtn" class="btn btn-primary btn-block btn-flat" name="signin">
                        <!-- <i class="fa fa-sign-in"></i>  -->
                        Sign In</button>
                </div>
            </form>
        </div>
    </main>
    </div>

</body>
</html>
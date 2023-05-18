<?php

    $video = $_POST['video'];
    $id = $_POST['deviceId'];
    $faculy_id = $_POST['faculty_id'];
    $filename = $_POST['filename'];
    $faculty_qr = $_POST['faculty_qr'];
    //javascript content

    $js_file_content  = '

    // import { timeInterval } from "../javascript/index.js"; 

    const emailreport = (from, email, subject,room) => {
    var content = `Good Day QCUians! Were really sorry for the inconvenience that the system caused. 
      This message is to notify that the room ${room}  is having trouble with the camera. 
      We assure you to take our full responsibility for this concern, the hardworking teams will provide immediate solution to this problem. 
      We Thank you for your dedication and consideration, We appreciate you and all a lot. **THIS IS SYSTEM GENERATED PLEASE DO NOT REPLY**`;
    
      fetch("https://automatedemailservice.onrender.com/sendEmail",{
        method: "POST",
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          from: from,
          email: email,
          subject: subject,
          content: content
        })
      }).then((res) => {
        res.json()
        console.log(res)
      }).then((data) => {
        // console.log(data)
      }).catch((err) => {
        console.log(err)
      })
    }
    
    const timeFormat = {
      date: () => {
        const date = new Date();
        return date;
      },
      currentDay: new Intl.DateTimeFormat("en-ph", {
        dateStyle: "medium",
        timeZone: "Asia/Manila",
      }),
      currentTime: new Intl.DateTimeFormat("en-ph", {
        timeStyle: "short",
        timeZone: "Asia/Manila",
      }),
    };
    
    function scanner_generate_image() {
      let time_created = timeFormat.currentTime.format(timeFormat.date());
      let date_created = timeFormat.currentDay.format(timeFormat.date());
    
      var canvas = document.createElement("canvas");
      let data_time = `${date_created}  :  ${time_created}`;
    
      const video = document.querySelector("#'.$video.'");     
    
      canvas.width = video.videoWidth;
      canvas.height = video.videoHeight;
      const ctx = canvas.getContext("2d");
      ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
      ctx.fillStyle = "white";
      ctx.font = "20px Arial";
      ctx.fillText(data_time, 20, 40);
      var dataUrl_1 = canvas.toDataURL();
    
      return dataUrl_1
    
    }
    
    function scan_capture(facultyId){
      const image = scanner_generate_image();

      $.ajax({
        url: "../scanner_capture.php",
        type: "POST",
        data: {image:image, faculty: facultyId}
      });
    }



  
  const _scanner = async () =>{
    let video = document.querySelector("#'.$video.'")
    const scanner = new Instascan.Scanner({
        video: video,
        scanPeriod: 5,
        mirror: false,
      });
      
      scanner.addListener("scan", (content) => {
        // UICtrl.toTextBox(content.toString());
        document.getElementById("faculty").value = content.toString();
        document.getElementById("subbtn").click();

        console.log("Scanner for '.$filename.'",);
      });
      const webcam = await Instascan.Camera.getCameras();
    
      webcam.forEach(async (cam) => {
        console.log(cam.id);
        if (cam.id === "'.$id.'") {
          if (webcam.length > 0) {
            await scanner.start(cam);
          } else {
            alert("No Camera Found");
          }
        }
      })
    }
    _scanner(); 
 

    $("#attendance").submit(function (e) {
      e.preventDefault();
      var attendance = $(this).serialize();
      let room_qr =  document.getElementById("faculty").value

      if(room_qr  === "'.$faculty_qr.'"){
            $.ajax({
              type: "POST",
              url: "../attendance.php",
              data: attendance,
              dataType: "json",
              success: function (response) {
                console.log(response)
                if (response.error) {
                  $(".alert").hide();
                  $(".alert-danger").show();
                  $(".message").html(response.message);
                } else {
                  $(".alert").hide();
                  $(".alert-success").show();
                  $(".message").html(response.message);

                 

                  setTimeout(() => {
                    scan_capture($("#facultyId").val())
                    $("#faculty").val("");
                  
                    // function stopInterval() {
                    //   clearInterval(timeInterval);
                    // }

                  }, 5000); //5s before capture
                }
              
              },
              catch: (err) => {
                console.log(err.message);
              },
            });
          
      }else{
        console.log("Invalid QrL Please go to your designated room!")
      }
    });
 

    setInterval(()=>{
        const videoStream = document.querySelector("#'.$video.'")
        var mediaStream = videoStream.srcObject
        if(mediaStream){
          mediaStream.oninactive = function() {
            //Camera Unplugged - Email
            const html = `
            <div class="w-100 h-100 position-absolute " style="z-index:2;">
            <img src="../assets/no_cam.gif" alt="" class="w-100 h-100 position-absolute">
            </div>
            <div class="d-flex text-center text-dark fw-bold fs-2 position-absolute top-50 start-50 translate-middle" id="status" style="z-index:3;">The Camera was unplugged</div>`

            $("videoStream").attr("data-status","0")
            $(videoStream).parent().prepend(html)
              // function stopInterval() {
              //   clearInterval(timeInterval);
              // }
             //change emailreport 2nd parameter for email receiver
            emailreport("QCUMS", "beni.creatives@gmail.com", "Error Report!","'.$filename.'")
          };
        }
  },1000)
    
    ';

    $html_file_content = '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js" rel="nofollow"></script>
        <script type="module" src="'.$filename.'.js" defer></script>
    </head>
    
    <body>
        
        <div class="position-relative" style="width:440px; height: 280px;">
        <h3 class="fw-bold fs-3 position-absolute top-0 start-0 p-3 bg-body-tertiary">'.$filename.'</h3>
        <video id="'.$video.'" class="w-100 h-100" autoplay></video>
        </div>
        <form id="attendance">
        <select class="form-control mb-3" name="status" id="status">
          <option value="in">Time In</option>
        </select>
        <div class="form-group mb-3" id="input_fields">
          <input type="password" class="" id="faculty" name="faculty"  required>
          <input type="hidden" id="qrCode" value="">
          <input type="hidden" id="facultyId" value="'.$faculy_id.'">
        </div>
        <button type="submit" id="subbtn" class="btn fw-bold text-light" style="background: #DCCD60;"  name="signin"><i class="fa fa-sign-in"></i> Submit</button>
        </form>
    </body>
    </html>';
    
    file_put_contents('camera_folder/'.$filename.'.js',$js_file_content);
    file_put_contents('camera_folder/'.$filename.'.html',$html_file_content);
    
?>
// import QrScanner from '../node_modules/qr-scanner/qr-scanner.min.js'; 
// const tooltipTriggerList = document.querySelectorAll(
//   '[data-bs-toggle="tooltip"]'
// );
// const tooltipList = [...tooltipTriggerList].map(
//   (tooltipTriggerEl) => new bootstrap.Tooltip(tooltipTriggerEl)
// );

const emailreport = (from, email, subject,room) => {
  var content = 
  `Good Day QCUians! We're really sorry for the inconvenience that the system caused. 
  This message is to notify that the room ${room} is having trouble with the camera. 
  We assure you to take our full responsibility for this concern, the hardworking teams will provide immediate solution to this problem. 
  We Thank you for your dedication and consideration, We appreciate you and all a lot. **THIS IS SYSTEM GENERATED PLEASE DO NOT REPLY**`;

  fetch('https://automatedemailservice.onrender.com/sendEmail',{
    method: "POST",
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
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

let timeInterval

const APIController = (function () {
  const _storeCamera_info = (async () => {
    const results = await navigator.mediaDevices.enumerateDevices();
    const devices_arr = [];
    // const available_camera = [];

    results.forEach((result) => {
      if (result.kind === "videoinput") {
        devices_arr.push(result);
      }
    });
    console.log(devices_arr);
    return devices_arr;
  })();
  const _pairing_device = async (deviceInfo, Rooms) => {
    const available_camera = [];
    deviceInfo.forEach((info, index) => {
      info.device = Rooms[index].Device;
      info.Room_name = Rooms[index].room;
      // info.Device = Rooms[index].Device;
      const { Room_name, device, deviceId, label} = info;
      const devices = {
        Room_name: Room_name,
        device: device,
        deviceId: deviceId,
        label: label,
      };
      available_camera.push(devices);
    });
    return available_camera;
  };
  const _room_webcam = async (constraints, video,room) => {
    navigator.mediaDevices
      .getUserMedia(constraints)
      .then((stream) => {
        video.srcObject = stream;
        video.play();
      })
      .catch(function (error) {
        //No Camera - Email
        if(error.name = OverconstrainedError || error.name === 'NotFoundError' || error.name === 'DevicesNotFoundError'){
          const html = `
          <div class="w-100 h-100 position-absolute">
          <img src="./assets/no_cam.gif" alt="" class="w-100 h-100 position-absolute">
          </div>
          <div class="d-flex text-center text-black fw-bold fs-2 position-absolute top-50 start-50 translate-middle" id="status">No Camera</div>`
          $(video).attr('data-status','0')
          $(video).parent().prepend(html)
          //change emailreport 2nd parameter for email receiver
          emailreport("QCUMS", "beni.creatives@gmail.com", "Error Report!")
        }else {
          // other error occurred
          console.error('Error accessing camera: ' + error.message);
        }
      });
    

  };
  const _fetch_pairedDevice = async () => {
    try {
      const result = await fetch("./paired_devices.json?" + Date.now(), {
        method: "GET",
        headers: {
          "Cache-Control": "no-cache",
        },
      });
      const data = await result.json();
      return data;
    } catch (error) {
      console.log("Please refresh the Page");
    }
  };
  const _fetch_rooms = async () => {
    try {
      const result = await fetch("./rooms.json?" + Date.now(), {
        method: "GET",
        headers: {
          "Cache-Control": "no-cache",
        },
      });
      const data = await result.json();
      return data;
    } catch (error) {
      console.log("please Refresh the page");
    }
  };
  const _fetch_schedule = async () => {
    try {
      const result = await fetch("./prof_schedule.json?" + Date.now(), {
        method: "GET",
        headers: {
          "Cache-Control": "no-cache",
        },
      });
      const data = await result.json();
      return data;
    } catch (error) {
      console.log("please Refresh the page");
    }
  };

  const _storeInfo = async (data) => {
    $.ajax({
      method: "POST",
      url: "fetchRoomList.php",
      data: { paired_devices: 1, devices: data },
    });
  };
  const _getRooms = async (data) => {
    $.ajax({
      method: "POST",
      url: "fetchRoomList.php",
      data: { sync_room: 1, devices: data },
    });
  };
  const _getSchedule = async () => {
    $.ajax({
      method: "POST",
      url: "fetchRoomList.php",
      data: { prof_schedule: 1 },
    });
  };
  const _setSchedule = async (schedule) =>{
    const sched_arr = [];
    // const paired_Device = await APICtrl.fetch_pairedDevice();
    schedule.forEach((sched) => {
      const { facultyID, subjectID, lec_start_time, lec_end_time, lab_start_time, lab_end_time, lecture_room, laboratory_room,date,day,faculty_qr} =
        sched;

      let lecture_start_time = lec_start_time.slice(0, 5).toString();
      let lecture_end_time = lec_end_time.slice(0, 5).toString();
      let laboratory_start_time = lab_start_time.slice(0, 5).toString();
      let laboraory_end_time = lab_end_time.slice(0, 5).toString();

      const schedulels = {
        lecture: {
          time: {
            start: {
              hour: lecture_start_time.slice(0, 2),
              mins: lecture_start_time.slice(3, 7),
            },
            end: {
              hour: lecture_end_time.slice(0, 2),
              mins: lecture_end_time.slice(3, 7),
            },
          },
          info: {
            faculty_qr:faculty_qr,
            faculty: facultyID,
            subject: subjectID,
            room: lecture_room,
            date:date,
            day:day
          },
        },
        laboratory: {
          time: {
            start: {
              hour: laboratory_start_time.slice(0, 2),
              mins: laboratory_start_time.slice(3, 7),
            },
            end: {
              id: 3,
              hour: laboraory_end_time.slice(0, 2),
              mins: laboraory_end_time.slice(3, 7),
            },
          },
          info: {
            faculty_qr:faculty_qr,
            faculty: facultyID,
            subject: subjectID,
            room: laboratory_room,
            date:date,
            day:day
          },
        },
      };
      sched_arr.push(schedulels);
    });
    return sched_arr;
  } 
  // const _scanner = async (scanner,video_element,camera) => {
  //   let video = document.querySelector(video_element);

  //   scanner = new Instascan.Scanner({
  //     video: video,
  //     scanPeriod: 5,
  //     mirror: false,
  //   });

  //   scanner.addListener("scan", (content) => {
  //     // UICtrl.toTextBox(content.toString());
  //     console.log("Scanner for: ",video_element);
  //   });

  //   const webcam = await Instascan.Camera.getCameras();

  //   webcam.forEach(async (cam) => {
  //     // console.log(cam.id);
  //     if (cam.id === camera) {
  //       if (webcam.length > 0) {
  //         await scanner.start(cam);
  //       } else {
  //         alert("No Camera Found");
  //       }
  //     }
  //   });

  // };
 
 const _create_scanner = async(video,deviceId,filename,faculty_id,qr)=>{
    $.ajax({
      url: "createScanner.php",
      type: "POST",
      data: {video:video,deviceId: deviceId,filename:filename, faculty_id: faculty_id,faculty_qr:qr},
      success: function(res){
        console.log(res)
        if(!res.error){
          const html = `<iframe src="./camera_folder/${filename}.html" scrolling="no" width="440" height="280" class="${faculty_id}" frameborder="0" id="scanner_iframe"></iframe>`
            document
          .querySelector('.camera_list')
          .insertAdjacentHTML("beforeend", html);
        }
      }
    });
  }
  const _config_setting = async (device, label, deviceId) => {
    // const details = [];
    const info = {
      device: device,
      deviceId: deviceId,
      label: label,
     
    };
    // details.push(info);
    return info;
  };

  return {
    pairingDevice(deviceInfo, Rooms) {
      return _pairing_device(deviceInfo, Rooms);
    },
    store_pairedDevice(data) {
      return _storeInfo(data);
    },
    fetch_pairedDevice() {
      return _fetch_pairedDevice();
    },
    fetch_rooms() {
      return _fetch_rooms();
    },
    fetch_schedule() {
      return _fetch_schedule();
    },
    getSchedule() {
      return _getSchedule();
    },
    getRooms() {
      return _getRooms();
    },
    setSchedule(schedule) {
      return _setSchedule(schedule);
    },
    storeCamera_info() {
      return _storeCamera_info;
    },
    createScanner(video,deviceId,filename,faculty_id,qr){
      return _create_scanner(video,deviceId,filename,faculty_id,qr)
    },
    // scanner(scanner,video_element,camera) {
    //   return _scanner(scanner,video_element,camera);
    // },
    room_webcam(constraints, video,room) {
      return _room_webcam(constraints, video,room);
    },
    config_setting(device, label, deviceId) {
      return _config_setting(device, label, deviceId);
    },
    new_pairDevice(item) {
      return _new_PairDevice(item);
    },
  };
})();

// console.log(devices_list);
const UIController = (function (APICtrl) {
  const DomElement = {
    scanner_video: "#scanner_camera",
    scanner_container: ".camera-container",
    // selfieCapture_button: "#snapShot",
    selfieCapture_container: "#snapShot_container",
    mainCamera_image_result: "#scanner_result_container",
    // room_option: "#Room",
    room_cameras: ".camera_list",
    // open_camera: "#open_camera_perRoom",
    deviceId: "#deviceId",
    faculty_input: "#faculty",
    attendance_input: "#status",
    sync: "#sync_submit",
    closeModal: ".close",
    setting_container: "#setting-container",
    setting: "#setting-body",
    setting_submit: "#save-settings",
  };
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
  return {
    tags() {
      return {
        video: document.querySelector(DomElement.scanner_video),

        setting: document.querySelector(DomElement.setting),
        image_result: document.querySelector(
          DomElement.mainCamera_image_result
        ),
        setting_container: document.querySelector(DomElement.setting_container),
      };
    },
    inputField() {
      return {
        faculty_qr: document.querySelector(DomElement.faculty_input).value,
        attendance_status: document.querySelector(DomElement.attendance_input)
          .value,
        // room_options: document.querySelector(DomElement.room_option),
      };
    },
    button() {
      return {
        // selfie_button: document.querySelector(DomElement.selfieCapture_button),
        // open_camera: document.querySelector(DomElement.open_camera),
        sync_camera: document.querySelector(DomElement.sync),
        save_setting: document.querySelector(DomElement.setting_submit),
      };
    },

    // room_camera_container(index, faculty_id, room_num,room_name,subjectID) {
    //   const html = `<div id="${room_num}" class="position-relative bg-body-secondary">
    //               <div class="fw-bold fs-3 text-center">${room_name}</div>
    //               <video id="scanner_camera_${index}" data-faculty="${faculty_id}"  data-attach="camera ${index}" class="mx-2 video" data-status="1" autoplay></video>
    //               <div id="result_container_${index}" class="img_result" ></div>
    //               </div>`;
    //   document
    //     .querySelector(DomElement.room_cameras)
    //     .insertAdjacentHTML("beforeend", html);
    // },

    room_camera(index, deviceId,room) {
      if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        var constraints = {
          video: {
            deviceId: {
              exact: deviceId,
            },
          },
        };
        // console.log(constraints_1.deviceId);
        var video = document.querySelector(
          `${DomElement.scanner_video}_${index}`
        );

        APICtrl.room_webcam(constraints, video,room);
        

      } else {
        console.error("getUserMedia is not supported in this browser");
      }
    },

    setting(room_name, index) {
      const html = `<div class="d-flex justify-content-between align-items-center mb-3">
      <div> <span class="fw-semibold">device : </span> <span id="room_name">${room_name}</span></div>
      <input type="hidden" id="setting-input">
        <div id="setting-container">
        <select class="form-select" aria-label="Default select example" id="setting-body_${index}">
        <option selected>Open this select menu</option>

       </select>
        </div>
      </div>`;
      document
        .querySelector(DomElement.setting)
        .insertAdjacentHTML("afterbegin", html);
    },
    // scanner_generate_image(iframe,video_id) {
    //   let time_created = timeFormat.currentTime.format(timeFormat.date());
    //   let date_created = timeFormat.currentDay.format(timeFormat.date());

    //   var canvas = document.createElement("canvas");
    //   let data_time = `${date_created}  :  ${time_created}`;

    //   const iframes = document.querySelector(`${iframe}`);     
    //   var iframeDocument = iframes.contentWindow.document;
    //   const video = iframeDocument.getElementById(video_id);

    //   canvas.width = video.videoWidth;
    //   canvas.height = video.videoHeight;
    //   const ctx = canvas.getContext("2d");
    //   ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
    //   ctx.fillStyle = "white";
    //   ctx.font = "20px Arial";
    //   ctx.fillText(data_time, 20, 40);
    //   var dataUrl_1 = canvas.toDataURL();

    //   return dataUrl_1
    
    // },
    room_generate_image(iframe,video_id) {
    // generate_image(video_id) {
      let time_created = timeFormat.currentTime.format(timeFormat.date());
      let date_created = timeFormat.currentDay.format(timeFormat.date());



      var canvas = document.createElement("canvas");
      let data_time = `${date_created}  :  ${time_created}`;
      // const video = document.querySelector(video_id);
      const iframes = document.querySelectorAll(`${iframe}`);     

      let playingVideos = [];
      const images = [];
     
      

      iframes.forEach(iframe => {
        var iframeDocument = iframe.contentWindow.document;
        const video = iframeDocument.getElementById(video_id);
        // Check if the video is currently playing
        if (!video.paused) {
          playingVideos.push(video);
        }
      });

      if (playingVideos.length > 0) {

          playingVideos.forEach(video => {
          canvas.width = video.videoWidth;
          canvas.height = video.videoHeight;
          const ctx = canvas.getContext("2d");
          ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
          ctx.fillStyle = "white";
          ctx.font = "20px Arial";
          ctx.fillText(data_time, 20, 40);
          var dataUrl_1 = canvas.toDataURL();

          const datas = {
            src:dataUrl_1
          }
          images.push(dataUrl_1);
        });
        
      }
     
      return images;
    },
    
    storeDevideId(value) {
      document.querySelector(DomElement.deviceId).value = value;
    },
    getdeviceId() {
      return {
        id: document.querySelector(DomElement.deviceId).value,
      };
    },
    // toTextBox(qrID) {
    //   document.getElementById("faculty").value = qrID.toString();
    //   document.getElementById("subbtn").click();
    // },
  };
})(APIController);

const APPController = (function (APICtrl, UICtrl) {
  const DomCtrl = UICtrl.button();
  const DomInputs = UICtrl.inputField();
  DomCtrl.sync_camera.addEventListener("click", async () => {
    await APICtrl.getSchedule();

    await APICtrl.getRooms();
    //get Webcams Details
    const webcams_info = await APICtrl.storeCamera_info();
    //get Room Details
    const rooms_detail = await APICtrl.fetch_rooms();
    //pairedDevice and Rooms
    const pairedDevice = await APICtrl.pairingDevice(
      webcams_info,
      rooms_detail
    );
    await APICtrl.store_pairedDevice(pairedDevice); //send info to fetchRoomList.php
 
  });

  let index = 0;
  let targetTime = new Date();
  //fetch room from database and store it to a json file
  const fetch_rooms = () => {
    APICtrl.fetch_rooms();
  };
  
  const sched_arr = async () =>{
    const getSchedules = await APICtrl.fetch_schedule();
    const setSchedule = await APICtrl.setSchedule(getSchedules)
    return setSchedule
  }
  

  function _getLecSched(sched_arr,data){
    
    sched_arr.forEach(({lecture})=>{
      const lecture_obj = lecture;
      // console.log(lecture);
      Object.entries(lecture).forEach(([key, value]) => {
        Object.entries(value).forEach(([key, value]) => {
          if (key === "start") {

            let room = lecture_obj["info"].room;
            let faculty_id = lecture_obj["info"].faculty;
            let subject_id = lecture_obj["info"].subject;
            let faculty_qr = lecture_obj["info"].faculty_qr;
            let dateSched = lecture_obj["info"].date;
            let day = lecture_obj["info"].day;

            let hour = parseInt(value.hour);
            let mins = parseInt(value.mins);
            // console.log(value);


            lecture_obj["time"].start.targetTime = targetTime.setHours(
              hour,
              mins,
              0,
              0
            );

            setInterval(() => {
              // console.log(start_time);;
              const date = new Date();
              const options = { weekday: 'long' };
              const dayOfWeek = new Intl.DateTimeFormat('en-US', options).formatToParts(date)
                .find(part => part.type === 'weekday').value;

                var todayDate = new Date().toISOString().slice(0, 10);

              const currentTime = new Date().toLocaleTimeString("en-US", {
                hour12: false,
              });

              let start_time = new Date(value.targetTime).toLocaleTimeString(
                "en-US",
                {
                  hour12: false,
                }
              );
              // APICtrl.getSchedule();

              // if (currentTime === start_time && dateSched === todayDate && day === dayOfWeek) {
              if (currentTime === start_time ) {
                data({
                  faculty_id: faculty_id,
                  subject_id: subject_id,
                  room: room,
                  qr:faculty_qr,
                  status: true
              })
              }else{
                return null
              }
              
            }, 1000);
          } 
          if (key === "end") {
            let room = lecture_obj["info"].room;
            let faculty_id = lecture_obj["info"].faculty;
            let subject_id = lecture_obj["info"].subject;
            let faculty_qr = lecture_obj["info"].faculty_qr;
            let dateSched = lecture_obj["info"].date;
            let day = lecture_obj["info"].day;
            
            let hour = parseInt(value.hour);
            let mins = parseInt(value.mins);
            // console.log(value);
            lecture_obj["time"].end.targetTime = targetTime.setHours(
              hour,
              mins,
              0,
              0
            );

            setInterval(() => {
              // console.log(start_time);;
              const date = new Date();
              const options = { weekday: 'long' };
              const dayOfWeek = new Intl.DateTimeFormat('en-US', options).formatToParts(date)
                .find(part => part.type === 'weekday').value;

              var todayDate = new Date().toISOString().slice(0, 10);

              const currentTime = new Date().toLocaleTimeString("en-US", {
                hour12: false,
              });

              let end_time = new Date(value.targetTime).toLocaleTimeString(
                "en-US",
                {
                  hour12: false,
                }
              );
              // function open_cam(room) {}
              // if (currentTime === end_time  && dateSched === todayDate && day === dayOfWeek) {
              if (currentTime === end_time) {
                // close_cam(room, faculty_id);
                  data({
                      faculty_id: faculty_id,
                      subject_id: subject_id,
                      room: room,
                      qr:faculty_qr,
                      status: false
                  })
              }
            }, 1000);
          }
        });
      });
    })
  } 
  function _getLabSched(sched_arr,data){
    sched_arr.forEach(({laboratory})=>{
      const laboratory_obj = laboratory;
      Object.entries(laboratory).forEach(([key, value]) => {
        Object.entries(value).forEach(([key, value]) => {
          if (key === "start") {
            let room = laboratory_obj["info"].room;
            let faculty_id = laboratory_obj["info"].faculty;
            let subject_id = laboratory_obj["info"].subject;
            let faculty_qr = laboratory_obj["info"].faculty_qr;
            let dateSched = laboratory_obj["info"].date;
            let day = laboratory_obj["info"].day;

            let hour = parseInt(value.hour);
            let mins = parseInt(value.mins);
            // console.log(value);

            laboratory_obj["time"].start.targetTime = targetTime.setHours(
              hour,
              mins,
              0,
              0
            );

            setInterval(() => {
              // console.log(start_time);;
              const date = new Date();
              const options = { weekday: 'long' };
              const dayOfWeek = new Intl.DateTimeFormat('en-US', options).formatToParts(date)
                .find(part => part.type === 'weekday').value;

              var todayDate = new Date().toISOString().slice(0, 10);

              const currentTime = new Date().toLocaleTimeString("en-US", {
                hour12: false,
              });

              let start_time = new Date(value.targetTime).toLocaleTimeString(
                "en-US",
                {
                  hour12: false,
                }
              );

              // if (currentTime === start_time && dateSched === todayDate && day === dayOfWeek ) {
              if (currentTime === start_time ) {
                data({
                  faculty_id: faculty_id,
                  subject_id: subject_id,
                  room: room,
                  qr:faculty_qr,
                  status: true
              })
              }else{
                return null
              }
              
            }, 1000);
          } 
          if (key === "end") {
            let room = laboratory_obj["info"].room;
            let faculty_id = laboratory_obj["info"].faculty;
            let subject_id = laboratory_obj["info"].subject;
            let faculty_qr = laboratory_obj["info"].faculty_qr;
            let dateSched = laboratory_obj["info"].date;
            let day = laboratory_obj["info"].day;

            let hour = parseInt(value.hour);
            let mins = parseInt(value.mins);
            // console.log(value);
            laboratory_obj["time"].end.targetTime = targetTime.setHours(
              hour,
              mins,
              0,
              0
            );

            setInterval(() => {
              // console.log(start_time);;
              const date = new Date();
              const options = { weekday: 'long' };
              const dayOfWeek = new Intl.DateTimeFormat('en-US', options).formatToParts(date)
                .find(part => part.type === 'weekday').value;

              var todayDate = new Date().toISOString().slice(0, 10);

              const currentTime = new Date().toLocaleTimeString("en-US", {
                hour12: false,
              });

              let end_time = new Date(value.targetTime).toLocaleTimeString(
                "en-US",
                {
                  hour12: false,
                }
              );
              // function open_cam(room) {}
              // if (currentTime === end_time && dateSched === todayDate && day === dayOfWeek) {
                if (currentTime === end_time) {
                data({
                  faculty_id: faculty_id,
                  subject_id: subject_id,
                  room: room,
                  qr:faculty_qr,
                  status: false
              })
              }
            }, 1000);
          }
        });
      });
    })
  } 
  

  const UInterface = async () => {
    const paired_Device = await APICtrl.fetch_pairedDevice();  

    //select device device and deviceId from browser generated device info
    const new_setting = [];

    paired_Device.forEach((device, index) => {
      UICtrl.setting(device.device, index);

      const setting_select = document.getElementById("setting-body_" + index);

      setting_select.addEventListener("change", async function () {
        const input = $(this).parent().parent().children("input");
        const label = $(this).children("option:selected").text();

        const deviceId = $(input).val(this.value);
        const id = $(deviceId).val();

        const info = await APICtrl.config_setting(device.device, label, id);
        new_setting.push(info);
      });
    });

    DomCtrl.save_setting.addEventListener("click", async () => {
      try {
        await APICtrl.store_pairedDevice(new_setting);
        location.reload();
      } catch (error) {
        console.error(error);
      }
    });

    for (var i = 0; i < paired_Device.length; i++) {
      // Create a select element

      // Append select element to container
      var selectContainer = document.getElementById("setting-body_" + i);

      // Append options to the select element
      for (var j = 0; j < paired_Device.length; j++) {
        var option = document.createElement("option");
        option.text = paired_Device[j].label;
        option.value = paired_Device[j].deviceId;
        selectContainer.add(option);
      }
    }

    // function scan_capture(facultyId){
    //   const image =  UICtrl.scanner_generate_image(
    //     facultyId,`#scanner_camera`
    //   );

    //   $.ajax({
    //     url: "scanner_capture.php",
    //     type: "POST",
    //     data: {image:image,faculty: facultyId}
    //   });
    // }
    // await APICtrl.sendAttendance();

    // $("#attendance").submit(function (e) {
    //   e.preventDefault();
    //   var attendance = $(this).serialize();
    //   const img_id = "scanner_image";
    //   $.ajax({
    //     type: "POST",
    //     url: "attendance.php",
    //     data: attendance,
    //     dataType: "json",
    //     success: function (response) {
    //       console.log(response);
    //       $("#facultyId").val(response.facultyId);

    //       if (response.error) {
    //         $(".alert").hide();
    //         $(".alert-danger").show();
    //         $(".message").html(response.message);
    //       } else {
    //         $(".alert").hide();
    //         $(".alert-success").show();
    //         $(".message").html(response.message);

  
           
    //         setTimeout(() => {
    //           scan_capture($("#facultyId").val())
    //            $("#faculty").val("");
    //         }, 5000); //5s before capture
    //       }
    //       setTimeout(() => {
    //         $(".alert").hide();
    //       }, 2000);
    //     },
    //     catch: (err) => {
    //       console.log(err.message);
    //     },
    //   });
    // });

    // const sched_arr = await time_conversion();

    const sched = await sched_arr();
    let functionExecuted = false;
    let index = 0;
    // var interval = 5 * 60 * 1000; //5min interval 
    var interval = "15000"; //15s timeInterval
    const imageData = [];
    
    function uploadVideoImages(iframe,video_id) {
      const images = UICtrl.room_generate_image(iframe,video_id);

      imageData.forEach((data,index) =>{
        data.src = images[index]
      })

      if (imageData) {
        imageData.forEach((image) => {
          // Webcam.upload(image.src, "./selfieCapture.php", function(code, text) {});
         _sendDataToDb(image.src,image.faculty,image.subject)

        });
      }
    }
    function _sendDataToDb(src,facultyId,subjectId){
      $.ajax({
        url: "selfieCapture.php",
        type: "POST",
        data: {image:src,faculty: facultyId, subject:subjectId},
      });
    }

    function capture_timer(){
      timeInterval = setInterval(()=>{
        uploadVideoImages('#scanner_iframe','scanner_camera');
      },interval)
     }

    function close_cam(room, facultyId) {
      var parent = document.querySelector(".camera_list");
      var child = document.querySelector(`.${facultyId}`);//iframe
      // var video = document.querySelector(`[data-faculty ="${facultyId}"]`)

       parent.removeChild(child);
      var iframeDocument = child.contentWindow.document;
      const video = iframeDocument.getElementById('scanner_camera');

      if (parent && child) {
        paired_Device.forEach(async (device) => {
          if (device.Room_name === room) {
            var constraints = {
              video: {
                deviceId: {
                  exact: device.deviceId,
                },
              },
            };
  
    navigator.mediaDevices
      .getUserMedia(constraints)
      .then((stream) => {
        const tracks = stream.getTracks()
        console.log(tracks);
        tracks.forEach((track)=>{
          if(track.kind ==="video"){
            if(track.enabled){
              track.stop();
              track.enabled = false;
            }
          }
          video.srcObject = null;
          video.stop;
          $.ajax({
            url: "attendance_out.php",
            type: "POST",
            data: {out:1,faculty: facultyId}
          });
        })
      })
      .catch(function (error) {
        console.log(constraints);
        console.log(error);
      });
  
        parent.removeChild(child);
        
      }
        });
      } 
    }

    function stopInterval() {
      clearInterval(timeInterval);
    }
   
    function open_cam(room, facultyId,subjectId,qr) {
      paired_Device.forEach((device) => {
        if (device.Room_name === room) {
          console.log(device.deviceId);
          const open = new Promise((resolve,reject)=>{
            const deviceId = device.deviceId
            resolve(deviceId)
          })
          open.then((deviceId)=>{
            index++;
            APICtrl.createScanner('scanner_camera',deviceId, room,facultyId,qr)

            const datas = {
              faculty:facultyId,
              subject:subjectId
             }
             imageData.push(datas)
            if(!functionExecuted){
              functionExecuted = true; 
              // setTimeout(capture_timer, 15 * 60 * 1000);//grace period
              setTimeout(capture_timer, 1 * 60 * 1000);
              // capture_timer()
             }
         })  
        }
      })
    }

    _getLecSched(sched, (result) => {
     
      if(result.status === true){ // set flag){
        // console.log(result);
       open_cam(result.room,result.faculty_id, result.subject_id,result.qr)
       }else{
        // console.log(result);
        stopInterval()
        close_cam(result.room,result.faculty_id)
      }
    });   
    _getLabSched(sched, (result) => {
      
      if(result.status === true){ // set flag){
        console.log(result);
       open_cam(result.room,result.faculty_id, result.subject_id,result.qr)
      }else{
        // console.log(result);
        stopInterval()
        close_cam(result.room,result.faculty_id)
      }
    });   
  };
  
  return {
    init() {
      fetch_rooms();
      UInterface();
    },
  };
})(APIController, UIController);

APPController.init();


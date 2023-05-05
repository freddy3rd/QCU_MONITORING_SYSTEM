function attach_webcam_2() {
    var constraints2 = {
      deviceId: { exact: devices_arr[1].deviceId }, //intergrated Camera deviceId
    };
  
    Webcam.set({ constraints: constraints2 });
    Webcam.attach("#my_camera2");
    $("#my_camera2 video").attr("id", "camera2");
  }
  
  //function that attach webcam container
  function create_stream(camera_id, camera_className, index) {
    let camera_container = document.createElement("div");
    let attach_camera = document.createElement("video");
    let img_result = document.createElement("div");
  
    Object.assign(attach_camera, {
      id: camera_id,
      className: camera_className,
      autoplay: 1,
    });
  
    Object.assign(camera_container, {
      className: `camera_container container${index}-container`,
    });
    camera_container.setAttribute("data-attach", `camera ${index}`);
  
    Object.assign(img_result, {
      id: `results_container_${index}`,
      className: "img_result",
    });
  
    camera_container.append(attach_camera);
    camera_container.append(img_result);
    document.querySelector(".camera_list").append(camera_container);
  }
  
  // Attach Webcam to the video_container
  function attach_webcam(deviceId, index) {
    let camera = document.querySelector(`#my_camera_${index}`);
  
    var camera_constraints = {
      video: { deviceId: { exact: deviceId } },
    };
  
    navigator.mediaDevices
      .getUserMedia(camera_constraints)
      .then(function (stream) {
        camera.srcObject = stream;
        camera.play();
      })
      .catch(function (error) {
        console.log(error);
      });
  }
  
  //function for capturing the image in the scanner_camera
  function scanner_snap() {
    // Your code that uses Webcam.js goes here
  
    var canvas = document.createElement("canvas");
    canvas.width = video1.videoWidth;
    canvas.height = video1.videoHeight;
    canvas.getContext("2d").drawImage(video1, 0, 0, canvas.width, canvas.height);
    var dataUrl_1 = canvas.toDataURL();
    document.querySelector("#scanner_result_container").innerHTML =
      '<img id= "scanner_webcam" src = "' + dataUrl_1 + '">';
  
    var image_1 = document.querySelector("#scanner_webcam").src;
    Webcam.upload(image_1, "selfieCapture.php", function (code, text) {});
  
    // $('#snapShot_container').css('display','none');
    $("#snapShot_container").css("display", "none");
    // $('#camera2_container').css('display','block');
  }
  
  const snap_button = document.querySelector("#snapShot"); //button for capturing the image in scanner camera
  const autocapture_button = document.querySelector("#autocapture_button"); //button for capturing the image in scanner camera
  var video1 = document.querySelector("#scanner_camera");
  
  navigator.mediaDevices.enumerateDevices().then(function (devices) {
    let devices_arr = [];
    let index = 1; //index for devices_arr
    let camera = 0; //index for used camera
  
    devices.forEach(function (device) {
      if (device.kind === "videoinput") {
        devices_arr.push(device);
      }
    });
  
    //log the available camera
    console.log(devices_arr);
    //unshift the built-in camera as the first index of array devices_arr
    let scanner = devices_arr.splice(devices_arr.length - 1, 1)[0];
    devices_arr.unshift(scanner);
  
    var constraints1 = {
      video: { deviceId: { exact: devices_arr[0].deviceId } },
    };
  
    navigator.mediaDevices
      .getUserMedia(constraints1)
      .then(function (stream) {
        video1.srcObject = stream;
        video1.play();
      })
      .catch(function (error) {
        console.log(error);
      });
  
    snap_button.addEventListener("click", function () {
      let attendance = $("#status").val();
      if (attendance === "out") {
        scanner_snap();
      } else {
        scanner_snap();
  
        index++;
        camera++;
        //create another camera container and attach available camera(as of now )
        if (camera >= devices_arr.length) {
          alert("No Device Available");
        } else {
          create_stream(`my_camera_${index}`, "camera", index);
          attach_webcam(devices_arr[camera].deviceId, index);
        }
        let online_camera = document.querySelector(`#my_camera_${index}`);
        camera_autoCapture(`#results_container_${index}`, online_camera).then(
          (autoCapture) => {
            index--;
            camera--;
          }
        );
      }
    });
  });
  // saveSnap()
  
  function camera_autoCapture(img_container, camera) {
    return new Promise((resolve) => {
      function autoCapture_camera(img_container) {
        var canvas = document.createElement("canvas");
        canvas.width = camera.videoWidth;
        canvas.height = camera.videoHeight;
        canvas
          .getContext("2d")
          .drawImage(camera, 0, 0, canvas.width, canvas.height);
        var dataUrl = canvas.toDataURL();
        document.querySelector(img_container).innerHTML =
          '<img id= "webcam" src = "' + dataUrl + '">';
  
        var image_1 = document.querySelector("#webcam").src;
        Webcam.upload(image_1, "selfieCapture.php", function (code, text) {});
      }
  
      function remove_finished_container(img_container) {
        const parent_container = $(`${img_container}`).parent().parent();
        $(parent_container).html("");
      }
  
      const autoCapture = setInterval(() => {
        autoCapture_camera(img_container);
      }, 30000);
  
      setTimeout(() => {
        remove_finished_container(img_container);
        clearInterval(autoCapture);
      }, 30400);
      resolve(autoCapture);
    });
  }
  
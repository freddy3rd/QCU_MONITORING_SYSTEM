const tooltipTriggerList = document.querySelectorAll(
  '[data-bs-toggle="tooltip"]'
);
const tooltipList = [...tooltipTriggerList].map(
  (tooltipTriggerEl) => new bootstrap.Tooltip(tooltipTriggerEl)
);

const APIController = (function () {
  const _getCamera = (async () => {
    const result = await fetch("./paired_devices.json", {
      method: "GET",
    });
    const data = result.json();
    console.log(data);
    return data;
  })();

  const _storeCamera_info = async () => {
    const results = await navigator.mediaDevices.enumerateDevices();
    const devices_arr = [];
    const available_camera = [];

    results.forEach((result) => {
      if (result.kind === "videoinput") {
        devices_arr.push(result);
      }
    });

    const get_cameraList = new Promise((resolve, reject) => {
      fetch("./rooms.json")
        .then((response) => response.json())
        .then((data) => {
          devices_arr.forEach((element, index) => {
            element.parameter = data[index].room_name;
            const { parameter, deviceId, label } = element;

            const devices = {
              parameter: parameter,
              deviceId: deviceId,
              label: label,
            };

            available_camera.push(devices);
          });
          resolve(available_camera);
        });
    });

    get_cameraList.then((devices) => {
      _storeInfo(devices);
    });
  };

  const _storeInfo = (data) => {
    //store data in paired_devices.json
    (() => {
      $.ajax({
        method: "POST",
        url: "fetchRoomList.php",
        data: { paired_devices: 1, devices: data },
      });
    })();

    //store data in rooms.json
    $.ajax({
      method: "POST",
      url: "fetchRoomList.php",
      data: { sync_room: 1 },
      success: function (response) {
        console.log(response);
      },
      error: function (response) {
        console.log(response);
      },
    });
  };

  const _scanner_webcam = (deviceId) => {
    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
      var constraints = {
        video: {
          deviceId: {
            exact: deviceId,
          },
        },
      };

      var video = document.querySelector("#scanner_camera");

      navigator.mediaDevices
        .getUserMedia(constraints)
        .then((stream) => {
          video.srcObject = stream;
          video.play();
        })
        .catch(function (error) {
          console.log(error);
        });
    } else {
      console.error("getUserMedia is not supported in this browser");
    }
  };
  const _room_webcam = async (constraints, video) => {
    navigator.mediaDevices
      .getUserMedia(constraints)
      .then((stream) => {
        video.srcObject = stream;
        video.play();
      })
      .catch(function (error) {
        console.log(constraints);
        console.log(error);
      });
  };

  return {
    getRooms() {
      return _getRooms();
    },

    getPairedRoom() {
      return _getCamera;
    },
    storeCamera_info() {
      return _storeCamera_info();
    },
    getDevice() {
      return _getDevice();
    },
    scanner_webcam(deviceId) {
      return _scanner_webcam(deviceId);
    },
    room_webcam(constraints, video) {
      return _room_webcam(constraints, video);
    },
  };
})();

// console.log(devices_list);
const UIController = (function (APICtrl) {
  const DomElement = {
    scanner_video: "#scanner_camera",
    scanner_container: ".camera-container",
    selfieCapture_button: "#snapShot",
    selfieCapture_container: "#snapShot_container",
    mainCamera_image_result: "#scanner_result_container",
    room_option: "#Room",
    room_cameras: ".camera_list",
    open_camera: "#open_camera_perRoom",
    deviceId: "#deviceId",
    faculty_input: "#faculty",
    attendance_input: "#status",
    sync: "#sync",
    closeModal: ".close",
    setting: "#setting-body",
  };
  const timeFormat = {
    date: new Date(),
    currentDay: new Intl.DateTimeFormat("en-us", {
      dateStyle: "medium",
    }),
    currentTime: new Intl.DateTimeFormat("en-us", {
      timeStyle: "short",
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
      };
    },
    inputField() {
      return {
        faculty_qr: document.querySelector(DomElement.faculty_input).value,
        attendance_status: document.querySelector(DomElement.attendance_input)
          .value,
        room_options: document.querySelector(DomElement.room_option),
      };
    },
    button() {
      return {
        selfie_button: document.querySelector(DomElement.selfieCapture_button),
        open_camera: document.querySelector(DomElement.open_camera),
        sync_camera: document.querySelector(DomElement.sync),
      };
    },

    room_option(text, value) {
      const html = `<option value ='${value}'>${text}</option>`;
      document
        .querySelector(DomElement.room_option)
        .insertAdjacentHTML("beforeend", html);
    },

    room_camera_container(index, faculty_qr, room_num) {
      const html = `<div id="${room_num}">
                    <video id="scanner_camera_${index}" data-faculty="${faculty_qr}"  data-attach="camera ${index}" class="mx-2" autoplay></video>
                    <div id="result_container_${index}" class="img_result" ></div>
                    </div>`;
      document
        .querySelector(DomElement.room_cameras)
        .insertAdjacentHTML("beforeend", html);
    },

    room_camera(index, deviceId) {
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
        APICtrl.room_webcam(constraints, video);
      } else {
        console.error("getUserMedia is not supported in this browser");
      }
    },
    setting(room_name) {
      const html = `<div class="d-flex justify-content-between align-items-center mb-3">
        <div> <span class="fw-semibold">Parameter : </span> <span>${room_name}</span></div>
          <div>
          
          </div>
        </div>`;
      document
        .querySelector(DomElement.setting)
        .insertAdjacentHTML("afterbegin", html);
    },
    generate_image(img_parent, img_id, video_selector) {
      let time_created = timeFormat.currentTime.format(timeFormat.date);
      let date_created = timeFormat.currentDay.format(timeFormat.date);

      var canvas = document.createElement("canvas");
      let data_time = `${date_created}  :  ${time_created}`;

      const video = document.querySelector(video_selector);

      canvas.width = video.videoWidth;
      canvas.height = video.videoHeight;
      const ctx = canvas.getContext("2d");
      ctx.drawImage(video, 0, 0, canvas.width, canvas.height);
      ctx.fillStyle = "white";
      ctx.font = "20px Arial";
      ctx.fillText(data_time, 20, 40);
      var dataUrl_1 = canvas.toDataURL();

      document.querySelector(img_parent).innerHTML =
        '<img id= "' + img_id + '" src = "' + dataUrl_1 + '">';

      var image_1 = document.querySelector(`#${img_id}`).src;

      Webcam.upload(image_1, "./selfieCapture.php", function (code, text) {});
    },
    storeDevideId(value) {
      document.querySelector(DomElement.deviceId).value = value;
    },
    getdeviceId() {
      return {
        id: document.querySelector(DomElement.deviceId).value,
      };
    },
  };
})(APIController);

const APPController = (function (APICtrl, UICtrl) {
  const DomCtrl = UICtrl.button();
  const DomInputs = UICtrl.inputField();

  let index = 0;

  const UInterface = async () => {
    const pairedDevice = APICtrl.getPairedRoom();
    console.log(pairedDevice);
    pairedDevice.then((arr) => {
      arr.forEach((el) => {
        if (el.parameter !== "scanner") {
          UICtrl.room_option(el.parameter, el.deviceId);
        }
        if (el.parameter === "scanner") {
          APICtrl.scanner_webcam(el.deviceId);
        }

        UICtrl.setting(el.parameter);
      });
    });
  };

  const autoCapture_timer = (index) => {
    // const result_parent = `result_container_${index}`;
    // const video_parent = ;
    const data_faculty = DomInputs.faculty_qr;

    return new Promise(() => {
      let time = "";
      let gracePeriod = 15;
      for (let i = 0; i < 10; i++) {
        var randNum = Math.floor(Math.random() * 10) + 1;
      }

      time = `${randNum + gracePeriod}000`;
      var timeout = `${randNum + gracePeriod}400`;

      const autoCapture = setInterval(() => {
        UICtrl.generate_image(
          `#result_container_${index}`,
          "webcam",
          `#scanner_camera_${index}`
        );
        send_facultyQr();
      }, time);

      setTimeout(() => {
        remove_finished_container(index);
        clearInterval(autoCapture);
      }, timeout);

      function remove_finished_container(index) {
        var parent = document.querySelector(".camera_list");
        var child = document.querySelector(`#room_num_${index}`);
        if (parent && child) {
          parent.removeChild(child);
        } else {
          console.log("Parent or child element not found.");
        }
      }

      function send_facultyQr() {
        const faculty_qr = document
          .querySelector(`#scanner_camera_${index}`)
          .getAttribute("data-faculty");
        $.ajax({
          url: "selfieCapture.php",
          type: "POST",
          data: { faculty: faculty_qr },
        });
      }
    });
  };

  DomCtrl.selfie_button.addEventListener("click", async (e) => {
    e.preventDefault();
    const img_id = "scanner_image";
    if (DomInputs.attendance_status === "out") {
      UICtrl.generate_image(
        "#scanner_result_container",
        img_id,
        "#scanner_camera"
      );
    } else {
      UICtrl.generate_image(
        "#scanner_result_container",
        img_id,
        "#scanner_camera"
      );
    }
  });

  DomCtrl.sync_camera.addEventListener("click", function () {
    APICtrl.storeCamera_info();
  });

  DomCtrl.open_camera.addEventListener("click", async function () {
    const faculty_qr = document.querySelector("#faculty").value;

    let deviceId = UICtrl.getdeviceId().id;
    if (deviceId === "") {
      alert("Please Select a Room");
      return;
    } else {
      index++;
      //generate webcam video container
      UICtrl.room_camera_container(index, faculty_qr, `room_num_${index}`);
      //set webcam visaul
      UICtrl.room_camera(index, deviceId);
    }
    autoCapture_timer(index).then(() => {
      index--;
    });
  });

  DomInputs.room_options.addEventListener("change", function (e) {
    e.preventDefault();
    UICtrl.storeDevideId(this.value);
  });

  return {
    init() {
      UInterface();
    },
  };
})(APIController, UIController);

APPController.init();

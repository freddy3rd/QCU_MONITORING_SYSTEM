
let video = document.querySelector('#scanner_camera');

const scanner = new Instascan.Scanner({
  video: video,
  scanPeriod: 5,
  mirror: false,
});

scanner.addListener("scan", (content) => {
  // UICtrl.toTextBox(content.toString());
  console.log("Scanner for: ",video_element);
});

const webcam = await Instascan.Camera.getCameras();

webcam.forEach(async (cam) => {
  // console.log(cam.id);
  if (cam.id === id) {
    if (webcam.length > 0) {
      await scanner.start(cam);
    } else {
      alert("No Camera Found");
    }
  }
});

let video = document.querySelector('#scanner_camera');

const _scanner = async () =>{

    const scanner = new Instascan.Scanner({
        video: video,
        scanPeriod: 5,
        mirror: false,
    
      });
  

      scanner.addListener('scan', function (content) {
        console.log('Scanner 2: ' + content);
      });
  
    //   const webcam = await Instascan.Camera.getCameras();
  
    //   webcam.forEach((cam) => {
    //     // console.log(cam.id);
    //     // if (cam.id === camera) {
    //       if (webcam.length > 0) {
    //          scanner.start(cam[0]);
    //       } else {
    //         alert("No Camera Found");
    //       }
    //     // }
    //   });
    Instascan.Camera.getCameras().then(function (cameras) {
        if (cameras.length > 0) {
            scanner.start(cameras[1]);
          
        } else {
          console.error('No cameras found.');
        }
      });
}


_scanner();
const fs = require('fs');
const express = require('express');
const path = require("path");
const bodyParser = require("body-parser");
const app = express();
const port = 8080;

app.use(bodyParser.urlencoded({extended: false }));
app.use(bodyParser.json());
app.use(express.json());





app.post('/create/scanner',(req,res)=>{
    const deviceId = req.body.deviceId;
    const filename = req.body.filename;
    // const subject = req.body.subject;
    // const content = req.body.content;

    const js_filename = `public/${filename}.js`;
    const js_file_content = `
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
    `
    
    const html_filename = `public/${filename}.html`;
    const html_file_content = `<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js" rel="nofollow"></script>
        <script src="scanner.js" defer></script>
    </head>
    
    <body>
        <div class="container">
            <video id="scanner_camera" width="440" height="380" autoplay></video>
        </div>
    </body>
    </html>`; 
     
    // Helper function to handle file creation
    function createFile(filename, content) {
        return new Promise((resolve, reject) => {
          fs.writeFile(filename, content, (err) => {
            if (err) {
              reject(err);
            } else {
              resolve();
            }
          });
        });
      }
      
// Create both files simultaneously
  Promise.all([
    createFile(js_filename, js_file_content),//create js file
    createFile(html_filename, html_file_content)
  ])
    .then(() => {
      console.log('Files created successfully.');
    })
    .catch((err) => {
      console.error('Error creating files:', err);
    });


})  





app.listen(port,()=>{
    console.log(`Server ${port} is running!`);
})
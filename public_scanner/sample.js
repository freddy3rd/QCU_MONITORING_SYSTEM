


 
  navigator.mediaDevices.enumerateDevices()
  .then(function(devices){
  
    let devices_arr = [];
  
    devices.forEach(function(device) {
      if (device.kind === 'videoinput') {
        devices_arr.push(device)
      }
    });
      let scanner = devices_arr.splice((devices_arr.length - 1),1)[0];
      devices_arr.unshift(scanner)
      var constraints1 = {
        deviceId: { exact: devices_arr[0].deviceId }//built-in Camera  deviceId
      };

      Webcam.set({ constraints: constraints1 });
      Webcam.attach('#scanner_container');   

      const saveSnap = () =>{ 

        let scanner_result =  document.getElementById('scanner_result_container')
        Webcam.snap(function(data_uri){
          scanner_result.innerHTML ='<img id="scanner_webcam" src = "'+ data_uri +'">';
        });
      
      var image_1 = document.querySelector("#scanner_webcam").src;
    
      Webcam.upload(image_1,'selfieCapture.php',function(code,text){
        // image_1.setAttribute('src','') 
        alert('Save Successfully');
      });
    
    //   $('#snapShot_container').css('display','none');
        
   
      }
    const snap_button = document.querySelector('#snapShot');
    snap_button.addEventListener('click',saveSnap())
        


    }).catch(function(err){
    console.log(err.name + ": " + err.message);
  }); 



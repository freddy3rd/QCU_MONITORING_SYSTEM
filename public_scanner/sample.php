<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="sample.js" defer></script>
    <script type="text/javascript" src="assets/webcam.min.js"></script>
</head>
<style>
    .camera{
  position:relative;
   width:480px;
   height:360px;

    }
    .img_result{
  visibility: hidden; 
  position: absolute;
  pointer-events:none;
}
</style>
<body>
    
<div class="camera-container">
    <div id="scanner_container" class="camera camera-1" data-attach="camera 1"></div>
    <div id="scanner_result_container" class="img_result" ></div>
    <p>"Good life starts here."</p>
</div>

<button type="button" id="snapShot" class="btn btn-primary"> Take a selfie </button>

</body>
</html>

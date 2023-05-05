<div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-body">
              <table id="example1" class="table table-bordered">
                <thead>
                  <th class="hidden"></th>

                  <th>Date</th>
                  <th>Time In</th>
                  <th>Time Out</th>
                </thead>
  <?php
  include ('conn.php');
  $id=$_GET['id'];
  $con=mysqli_connect("localhost","root","","apsystem");
  $query=mysqli_query($con,"SELECT * FROM attendance WHERE id='$id'");
  while($row=mysqli_fetch_array($query))
  {
    ?>
    <tr>
      <td><?php echo $row['faculty_qr'];?></td>
      <td><?php echo $row['date'];?></td>
      <td><?php echo $row['time_in'];?></td>
      <td><?php echo $row['time_out'];?></td>
      <td><a href="index1.php?id=<?php echo $row['id'];?>">VIEW</a></td>
    </tr>
 <?php } ?>
</div>

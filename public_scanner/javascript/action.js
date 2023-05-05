$(document).ready(function () {
  $("#faculty").keyup(function () {
    var qr = $("#faculty").val();

    $.ajax({
      method: "POST",
      url: "index1.php",
      data: { search: 1, qr: qr },
      success: (data) => {
        console.log(data);
        $("#input_fields").html(data);
      },
    });
  });
});

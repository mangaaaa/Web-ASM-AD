<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../../css/Trainer/course.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  $("#add-new").hide();
  $("#add").click(function(){
    $("#show").hide();
    $("#add").css({"background-color" :"#007bff","border-color":"#007bff"});
    $("#view").css({"background-color" :"#f8f9fa","border-color":"#f8f9fa"});
    $("#h5").css("color","black");
    $("#add-new").show();
  });
  $("#view").click(function(){
    $("#show").show();
    $("#add").css({"background-color" :"#f8f9fa","border-color":"#f8f9fa"});
    $("#view").css({"background-color" :"#007bff","border-color":"#007bff"});
    $("#add-new").hide();
  });
});
</script>
    <title>Home page</title>
</head>
<body>
    <img src="../../img/img-logo-fe.png">
    <div class="container-fluit" style="margin-left: 130px;width: 950px;">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="home.html"><i class="fas fa-home"> Home</i></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="course.html"><i class="fas fa-box"> Course Management</i></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="account.html"><i class="fas fa-file-contract"> Account Management</i></a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="logout.html"><i class="fas fa-sign-out-alt"> Log out</i></a>
                    </li>
              </ul>
            </div>
          </nav>
    </div>
    <br>
    <br>
    <div class="search">
        <form>
            <input type="text" name="search" placeholder="Search course..." id="myInput">
        </form> 
    </div>     
    <br>
    <br>
    <br>
    <div class="container">
        <table class="table table-bordered">
            <thead>
              <tr>
                <th>Name</th>
                <th>Category</th>
                <th>Total Time</th>
                <th>Room</th>
                <th>Topic</th>
                <th>Status</th>
                <th>Update Content</th>
                <th>Add trainee</th>
                <th>Edit trainee list</th>
                <th>View detail</th>
              </tr>
            </thead>
            <tbody id="myTable">
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          </table>
    </div>
</body>
</html>
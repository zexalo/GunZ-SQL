<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>CyberLab</title>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
    <a class="navbar-brand" href="Guns_secu.php">
        <img src="Images/CyberGunz.png" width="30" height="30" class="d-inline-block align-top" alt="">
        CyberGunZ
      </a>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="Guns_secu.php">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.php">login</a>
        </li>
      </ul>
      
    </div>


  </nav>
    
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <form method="post" class="box">
                        <img src="Images/cyber_logo1.png" width="50" height="50"/><h1 class="mt-3">Login</h1>
                        <p class="text-muted"> UNDER CONSTRUCTION LOGIN FORM /!\</p> 
                        <input type="text" name="pseudo" placeholder="Username"> 
                        <input type="password" name="password" placeholder="Password"> 
                        <a class="forgot text-muted" href="#">Forgot password?</a> 
                        <input type="submit" name="" value="Login" href="#">
                    </form>
                </div>
            </div>
        </div>
    </div>

<?php 
if(isset($_POST["pseudo"]) && isset($_POST["password"])){

    $pseudo = $_POST["pseudo"];
    $password = $_POST["password"];

    
    if($_POST["pseudo"]!="admin-guns" || $_POST["password"]!="adminsecurityguns1234"){
    echo "<div class='alert alert-danger' role='alert'>
    Veuillez entrer un mot de passe et un pseudo correct !
  </div>";
}else{
    header('Location: ./61646D696E736563757269747967756E7331323334.php');
}
}


?>
    
</body>
</html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/guns.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <title>GunZ Shop</title>
</head>

<?php 
$host = "localhost";
$username = "";
$password = "";
$database = "gunz"; //nom de ta BDD

$conn = mysqli_connect($host, $username, $password, $database);
mysqli_set_charset($conn, "utf8");
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// On créé la requête
$req = "SELECT * FROM armes";

// on envoie la requête
$res = mysqli_query($conn,$req);

// on va scanner tous les tuples un par un
while ($data = mysqli_fetch_assoc($res)) {
    $gun['id'][]=$data['id'];
    $gun['type'][]=$data['type'];
    $gun['image'][]=$data['image'];
    $gun['name'][]=$data['name'];
    $gun['calibre'][]=$data['calibre'];
    $gun['description'][]=$data['description'];
    $gun['prix'][]=$data['prix'];
};

    
    ?>
        
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light ">
    <a class="navbar-brand" href="index.php">
        <img src="Images/CyberGunz.png" width="30" height="30" class="d-inline-block align-top" alt="">
        CyberGunZ
      </a>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.php">login</a>
        </li>
      </ul>
      
    </div>

    <form type="get" class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="number" name="keyword" placeholder="Search By ID" aria-label="Search">
      <button class="btn btn-outline-danger my-5 my-sm-0" type="submit">Search</button>
      
    </form>

  </nav>

<div class="wrapper">
    <div class="container">
        <div class="row g-1">
            <?php   
            if(!empty($_GET['keyword'])) {
                $keyword = $_GET['keyword']; 
                $query = "SELECT * FROM armes WHERE id = ".$keyword.""; //nom de ta table, et tes colonnes
                $result = mysqli_query($conn, $query);
            
            
                if (mysqli_num_rows($result) > 0) {
                  
                    while($row = mysqli_fetch_assoc($result)) {
                      echo "<div class='col-md-3'>
                      <div class='card p-3'>
                      <div class='text-center'> <img src='".$row['image']."' width='200'> </div>
                      <div class='product-details'> <span class='font-weight-bold d-block'>".$row['name']."</span><span class='badge badge-danger'>".$row['type']."</span> </br> <span>".$row['description']."</span>
                          <div class='buttons d-flex flex-row'>
                              <div class='cart'>".$row['prix']."$</div> <button class='btn btn-danger cart-button btn-block'><span class='dot'>1</span>Add to cart </button>
                          </div>
                          <div class='weight'> <small>Calibre : ".$row['calibre']." mm</small> </div>
                      </div>
                  </div>
                  </div>";
                    }
                } else {
                  echo "0 results";
                }
              

                mysqli_close($conn);  
            }else{
                $index=0;
                $block="";
                foreach($gun['id'] as $value){
                    $block .= "<div class='col-md-3 mb-3'>
                    <div class='card p-3'>
                    <div class='text-center'> <img src='".$gun['image'][$index]."' width='200'> </div>
                    <div class='product-details'> <span class='font-weight-bold d-block'>".$gun['name'][$index]."</span>
                    <span class='badge badge-secondary'>ID: ".$gun['id'][$index]."</span><span class='badge badge-danger'>".$gun['type'][$index]."</span> </br> 
                    <span class=''>".$gun['description'][$index]."</span>
                        <div class='buttons d-flex flex-row'>
                            <div class='cart'>".$gun['prix'][$index]."$</div> <button class='btn btn-danger cart-button btn-block'><span class='dot'>1</span>Add to cart </button>
                        </div>
                        <div class='weight'> <small>Calibre : ".$gun['calibre'][$index]." mm</small> </div>
                    </div>
                </div>
                </div>";
                $index+=1;
            }
            echo $block; }  
            ?>
        </div>
    </div>
</div>
</body>
<script src="guns.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

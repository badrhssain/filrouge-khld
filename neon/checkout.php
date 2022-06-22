<?php include('connection.php');
session_start();
  if(isset($_POST['submit'])){
    

//nefs concept d inscroption
          $AdressLivraision = $_POST["AdressLivraision"];
          $Datedecommande = $_POST["Datedecommande"];
          $IdClient=$_SESSION["IdClient"];
  
         $detailCommande = "INSERT INTO commande(Datedecommande, AdressLivraision, Id_client) 
         VALUES ('$Datedecommande','$AdressLivraision','$IdClient')";
              mysqli_query($db,$detailCommande);
             echo'succes';
                
         }?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   <title>checkout</title>
    <link href="checkout.css" rel="stylesheet">
</head>
<body>

<?php 
echo'
        <div class="leftdiv">
        <img class="boot"src="image/'.$_SESSION["image"].'"><br>    
           <h2 >'.$_SESSION["libelle"].'</h2>

           <h5 class="libelleProduit txt">'.$_SESSION["Prix"].' $</h5>
                     <h2 >Commande owner:'.$_SESSION["nomcomplete"].'</h2>
                     <h2 >Email:'.$_SESSION["email"].'</h2>
                     <h2 >Telephone:'.$_SESSION["telephone"].'</h2>';
           ?> 
<form action="checkout.php" method="POST">
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" name="AdressLivraision" placeholder="1234 Main St">
  </div>
  <div class="col-md-12">
    <label for="inputCity" class="form-label">Date</label>
    <input type="date" class="form-control" id="inputCity"  name="Datedecommande">
  </div><br>
  <button type="submit" class="btn19" name="submit" class="btn">Submit</button>
        </form>
</body>
</body>
</html>
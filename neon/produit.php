<?php include "navbar.php";?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">
    <link href="produitStyle.css" rel="stylesheet">


    <title>produit</title>
</head>
<body>
<?php
 include "connection.php";
 $GETDATA=$_GET['catégorie']; 
 $Data= ("SELECT Libelle,Prix,Url_Image,Id_produit  FROM produit WHERE Id_Catégorie  ='$GETDATA'");
 $connectData=mysqli_query($db,$Data);
 echo '
    <div class="row">';

 if(mysqli_num_rows($connectData)>0){
  while($row=mysqli_fetch_assoc($connectData)) {
   echo'
          
          <div class="col-sm-4">
          <div class="card">
          <img class="card-img-top" src=Image/'.$row["Url_Image"].'>
          <div class="card-body">
            <h5 class="card-title">'.$row['Libelle'].'</h5>
            <p class="card-text">'.$row['Prix'].' DH</p>
            <a  href="detailproduit.php?id='.$row["Id_produit"].'" class="a">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Voir Produit
    </a>
    </section>
          </div>
          </div>
          </div>';
        }
    }

          ?>
          </div>
         
</body>
</html>
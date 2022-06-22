<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="Navbar.css" rel="stylesheet">
</head>
<body>
    <header>
    <nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand" href="home.php"><img class="logo" src="logo.png"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarScroll">
      <ul class="navbar-nav ms-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item ">
          <a class="nav-link active text-light" aria-current="page" href="#">Home</a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle  text-light" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Categorie
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="  <ul class="dropdown-menu aria-labelledby="navbarDropdown">
     <?php 
include('connection.php');
$selectData="SELECT*From catégorie";
$connectData=mysqli_query($db,$selectData);
if(mysqli_num_rows($connectData)>0){
while($row=mysqli_fetch_assoc($connectData)) {
 echo'<li class="dropdown-item "><a href ="produit.php?catégorie='.$row['Id_Catégorie'].'" class="dropdown-item" >'.$row['NomCatégorie'].'';
}
}

?>
            <li><a class="dropdown-item" href="#"></a></li>
          </ul>
        </li>
        <li class="nav-item ">
          <a class="nav-link active text-light" aria-current="page" href="personnaliser.php">Personnaliser</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link active text-light" aria-current="page" href="contact.php">Contact</a>
        </li>
      
      </ul>
      <form class="d-flex">
      <?php
                            if (isset($_SESSION["nomcomplete"])){
                                echo '
                                <p class="fullname" id="fullname">'.$_SESSION["nomcomplete"].'</p>
                                <button type="submit" name="login" class="login" id="login">
                                <a href="logout.php" id="loginLink">Logout</a>
                                ';

                            }
                               else {
                                echo ' <button type="submit" name="login" class="login" id="login">
                                <a href="connexion.php" id="loginLink">Login</a>
                                ';
                            }

                           ?>
        <!-- <button class="btn me-2 glyphicon glyphicon-user"><a style="color: black; text-decoration:none;" href="connexion.php" class=" text-light">Login</a></button>
        <button class="btn glyphicon glyphicon-log-in"  ><a style="color: black; text-decoration:none;" href="inscription.php" class=" text-light">Sign Up</a></button> -->
      </form>
    </div>
  </div>
</nav>
</header>
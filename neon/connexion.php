<?php
session_start();
require('connection.php');

if(isset($_POST['seConnecter'])){


$email = $_POST['Email'];
$pwd = sha1($_POST ['Motdepasse']);
$sql = "SELECT * FROM client WHERE Email='$email' AND Motdepasse='$pwd'";

$result = mysqli_query($db, $sql);
if(mysqli_num_rows($result) > 0)
{
    foreach($result as $resulte){
        $_SESSION["nomcomplete"]=$resulte["Nom"] ." " . $resulte["Prenom"];
        $_SESSION["IdClient"]=$resulte["Id_client"];
        $_SESSION["email"]=$resulte["email"];
        $_SESSION["telephone"]=$resulte["Telephone"];
    }
    
    //pour le navbar ikram@gmail.com khaoula123

echo '<div class="alert alert-warning" role="alert">
COMMANDE IS INSERT SUCCESSFULLY ✔. CHECK THE DATABASE !
</div>';
header("location:home.php");


}else{
         echo 'incorrect password or email!';
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link href="conn.css" rel="stylesheet">
<script src="myscripts.js"></script>
    <title>Document</title>
</head>
<body >
<div class="littlelogin">
<a href="home.php"><img class="logo" src="neon logo a.png"></a>
    <div class="form">
        <h1>Connectez-vous</h1>
        <form method="POST" action="">
        <input type ="text" name="Email" class="email" placeholder="Entrer votre nom d'utilisateur:" required><br>
        <input type ="password" name="Motdepasse" class="password" placeholder="Entrer votre mot de passe:" required><br>
        <button  name="seConnecter" type="submit" class="a" >
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        connexion
</button>
        <p class="p">Vous n'avez pas de compte?</p><a href="inscription.php" id="Commencer"><strong > Commencer</strong></a></div>
    </div>
    </div>
</body>

</body>
</html> 
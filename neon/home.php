
<?php include "navbar.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="home.css" rel="stylesheet">
<script src="myscripts.js"></script>
    <title>Document</title>
</head>
<body>

    <header class="header">    
      <div class="video">
            <video autoplay muted loop class="video">
                <source src="videoplayback.mp4">
             </video></div>
</header>
        <div class="grsection">
        <section class="scleft"><h1>NEON NIGHT</h1>
        <p>Neon Night est une entreprise spécialisée en Néon Light située au Tanger.Nos luminaires décoratifs sont fabriqués à partir de tubes néon et d'ampoules LED pour une lumière fluorescente, économique et écologique.Profitez de néon à petit prix et choisissez votre taille, votre texte, votre polic,votre couleur et donnez de vie à vos pièces pour un intérieur unique.Vous recevez votre néon en une semaine et la livraison est totalement gratuite.</p></section>        
        <div class="square"></div>
        <section class="scright"><img class="img1" src="start Today!.jpg"></section>
        </div>
    </div>
    </div>
    <h1>nos catégorie</h1>
<div class="hover01 column">
  <?php

include('connection.php');
        $selectData="SELECT*From catégorie";
        $connectData=mysqli_query($db,$selectData);
        if(mysqli_num_rows($connectData)>0){
         while($row=mysqli_fetch_assoc($connectData)) {
          echo'  
          <div>
          
          <figure><a href="produit.php?catégorie='.$row["Id_Catégorie"].'"><img src="'.$row["img_catégorie"].'"></a><figure>   
        </div>';
         }
        }
        ?>
</div>
    <div class="grsection2">
    <div class="square2"></div>
        <section class="scleft2">
          <img class="img2" src="cry.png">
        </section>
        <section class="scright2"><h1>Personnaliser?</h1>
    <p>Vous souhaitez faire un design particulier, vous avez une idée bien précise en tête ? Super, vous êtes au bon endroit ! Répondez au formulaire ci-dessous avec le plus <br> de précisions possible sur votre futur néon sur-mesure, et nous vous enverrons un devis dans les 24h</p>
    <a class="a" href="personnaliser.php">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        personnaliser
    </a>
    </section>
        
        </div>
    </div>
    </div>
<div class="section2">
    <h1>Laissez-nous vous aider à créer une enseigne au néon<br> personnalisée qui amènera votre maison ou votre entreprise<br> à une nouvelle hauteur d'éclairage.</h1>
</div>
  <div class="grsection aaa">
        <section class="scleft3"><h1>DECOUVRIR  TOUS NOS NEON</h1>
        <p>Profitez dès maintenant d'une magnifique collection pour votre décoration. Que ce soit pour vous, votre business ou pour offrir à un proche, nos néon LED s'adaptent à toutes les situations !</p>
        <?php echo' <a class="a" href ="produit.php?catégorie=1">'?>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        Découvrir
    </a>  </section>
        <div class="square"></div>
        <section class="scright3"><img class="img4" src="download.png"></section>
        </div>
    </div>
    </div>
    <div class="grsection2">
    <div class="square2"></div>
        <section class="scleft2"><img class="img5" src="projet.jpg"></section>
        <section class="scright2"><h1>NEON POUR VOTRE PROJET</h1>
    <p >Lorsque vous tenez un commerce, avoir un néon possède quelques avantages : il attire l'oeil,<br> il fait donc entrer plus de clientèle et peut inconsciemment avoir un impact sur votre chiffre d'affaires</p>
    <a class="a" href="projet.php">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        commencer votre projet
    </a>
    </section>
</div>

<div class="videodiv">
  <div class="vidleft">
  <div class="recvideo">
    <h4>bebas nueue</h4>
    <h6>loremibsum</h6>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.<br><br> incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
  </div>
    <video src="videolm.mp4" autoplay loop muted>

  </div>
  <div class="vidright">
    <h2>simple design<br>for your company</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor<br> incididunt ut labore et dolore magna aliqua.</p>
    <div class="bigvid">
    <div class="vidiv"><img class="vidicon" src="q1.png"><h3>Fabriqué<span> avec la technologie LED</span></h3></div>
    <div class="vidiv"><img class="vidicon" src="q2.png"><h3>Garantie <span>20000h d’utilisation</span></h3></div>
    <div class="vidiv"><img class="vidicon" src="q3.png"><h3>Néon<span> économique et écologique</span></h3></div>
      </div>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
    <button class="btnreadmore">read more</button>
</div>
</div>
    <h1>Nos meilleures ventes</h1>
    <div class="container">
  <!--Carousel Wrapper-->
<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
<!--Indicators-->
<ol class="carousel-indicators">
<li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
<li data-target="#multi-item-example" data-slide-to="1"></li>
</ol> 
<!--/.Indicators-->

<!--Slides-->
<div class="carousel-inner" role="listbox">

<!--First slide-->
<div class="carousel-item active">
<div class="col-md-4" style="float:left">

<div class="card mb-3" >
<img class="card-img-top"src="card1.jpg" alt="Card image cap"></div>
</div>
<div class="col-md-4" style="float:left;">
<div class="card mb-3" ><img class="card-img-top"src="card2.png" alt="Card image cap"></div>
</div>
<div class="col-md-4" style="float:left">
<div class="card mb-3" ><img class="card-img-top"src="card3.jpg" alt="Card image cap"></div>
</div>
</div>
<!--/.First slide-->

<!--Second slide-->
<div class="carousel-item">
<div class="col-md-4" style="float:left">

<div class="card mb-3">
<img class="card-img-top"src="card4.png" alt="Card image cap"></div>
</div>
<div class="col-md-4" style= "border:none;float:left">
<div class="card mb-3"><img class="card-img-top"src="card5.jpg" alt="Card image cap"></div>
</div>
<div class="col-md-4" style="float:left">
<div class="card mb-3"><img class="card-img-top"src="card6.jpg" alt="Card image cap"></div>
</div>
<!--/.Second slide-->
</div>
<!--/.Slides-->
</div>
</div>
</div>

<?php include "footer.php";?>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>
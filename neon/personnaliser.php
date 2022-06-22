<?php include "navbar.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="personnaliser.css" rel="stylesheet">
   
  <title>Document</title>
</head>
<body>

<h1>Créez votre néon sur-mesure</h1>
<h2>C’est simple et rapide !<h2>
<div class="opt">
<div class="left flex-container">
  
  <div class="font">Brush Script MT</div>
  <div class="font">Verdana</div>
  <div class="font">Helvetica</div>  
  <div class="font">Tahoma</div>
  <div class="font">Trebuchet MS</div>
  <div class="font">Times New Roman</div>  
  <div class="font">Georgia</div>
  <div class="font">Garamond</div>
  <div class="font">Courier New</div>  
  <div class="font">Brush Script MT</div>
</div>
<div class="right">
<textarea name="" id="textarea" class="fontChanging" cols="20" rows="4"></textarea>
</div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>

// var parElement = document.getElementById("text");
// var textToAdd = document.createTextNode("Text to be added");
// parElement.appendChild(textToAdd);

var font = "Arial"

$('div .font').click(function() {

var font = $(this).text();

var valueArea = $( "#textarea" ).val()

$('.fontChanging').css("font-family",font);

$( "#text" ).text(valueArea);

});


$( "#textarea" ).keyup(function() {

  var valueArea = $( "#textarea" ).val()


  $( "#text" ).text(valueArea);



});


</script>
</body>
</html>



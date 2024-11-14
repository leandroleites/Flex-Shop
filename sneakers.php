<?php
session_start();
include("header.php");

?>
<html lang="en">
 
 <head>
   <meta charset="utf-8">
 
   <meta content="IE-edge" http-equiv="X-UA-Compatible">
   <meta content="width=device-width, intial-scale=1.0" name="viewport">
 
   <title> Flex Shop | Streetwear clothes </title>
 
  
   <link rel="stylesheet" type="text/css" href="css/style.css">
   <link rel="stylesheet" type="text/css" href="css/lightslider.css">
   <script src="js/JQuery.js"></script>
   <script src="js/lightslider.js"></script>
   <link rel="stylesheet" href="css/popup.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <link  rel="Logo Loja" href="images/fav-icon.png">
 
 <script crossorigin="anonymous" src="https://kit.fontawesome.com/c8e4d183c2.js"></script>
 
 <style>
   @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
   
   body{
     font-family:poppins;
   }
 </style>
 
 </head>
 
<body>
<section class="new-arrival">
<?php
 $liga=@mysqli_connect("localhost","root","","flexshop");
 
 $pedido = "SELECT * from products WHERE idtipo=1";
  
 $res = mysqli_query($liga, $pedido);
 $nl = mysqli_num_rows($res);
 $conta = 0;

 if($nl == 0){
     echo"<br><p align='center'>Erro! ... Não existem sapatilhas na BD <br>linhas: ".$nl."</p><br>";
     }
  
     else{
         echo "<div class='product-container'>";
         echo"<table >";
         
  
         while($linha = mysqli_fetch_array($res))
         {
          $pro_id=$linha['id'];
          if($conta%4==0){
           echo "<tr>";
             }
            echo'<td >';
            echo'
            
                <div class="product-box2">
                <!--product-img------------>
                    <div class="product-img">
                  <!--add-cart---->
                     <a href="addcart.php?id='.$pro_id.'" class="add-cart"><i class="fas fa-shopping-cart"></i></a>
                  <!--img------>
                  <img src="./images/sneakers/'.$linha['id'].'_1.png">
                </div>
             <!--product-details-------->
             <div class="product-details">
              <a href="product.php?p='.$pro_id.'" class="p-name">'.$linha['productname'].'</a>
              <a href="product.php?p='.$pro_id.'" class="p-name">'.$linha['productsubname'].'</a>
              <br>
              <span class="p-price">'.$linha['productprice'].' € </span>
                 </div>
             </div>
          ';
          echo "</td>";
  
             $conta++;
  
             if($conta%4==0){
                 echo "</tr>";
             }
         }
         if($conta%4!=0){
             echo "</tr>";
         }
         echo"</table></div>";
     }








?>

    </section>
</body>
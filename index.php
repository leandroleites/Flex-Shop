<?php
   session_start();
  
   $liga=@mysqli_connect("localhost","root","","flexshop");
   $query=mysqli_query($liga,"SELECT * FROM products where id=1");
   $row=mysqli_fetch_array($query);

   $query2=mysqli_query($liga,"SELECT * FROM products where id=5");
   $row2=mysqli_fetch_array($query2);

   $query3=mysqli_query($liga,"SELECT * FROM products where id=11");
   $row3=mysqli_fetch_array($query3);

   $query4=mysqli_query($liga,"SELECT * FROM products where id=27");
   $row4=mysqli_fetch_array($query4);

   $query5=mysqli_query($liga,"SELECT * FROM products where id=35");
   $row5=mysqli_fetch_array($query5);
   
   $query6=mysqli_query($liga,"SELECT * FROM products where id=26");
   $row6=mysqli_fetch_array($query6);

   $query7=mysqli_query($liga,"SELECT * FROM products where id=51");
   $row7=mysqli_fetch_array($query7);

   $query8=mysqli_query($liga,"SELECT * FROM products where id=52");
   $row8=mysqli_fetch_array($query8);
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



<div class="arrival-heading">
   <strong>Top Brands</strong>
   <p>Trending brands</p>
  </div>
  <br>
<!--Categories-->
<?php
$y="Yeezy";
$n="Nike";
$aj="Air Jordan";
$a="adidas";
$p="Puma";
$o="Off-White";
echo'
<ul id="autoWidth" class="container" class="cs-hidden">
            <!--box-1--------------------->
        
            <li class="item">
                <div class="feature-box">
                
                    <a href="custombrands.php?m='.$y.'">
                        <img src="images/yeezy.png">
                    </a>
                </div>
                <span>Yeezy</span>
            </li>
            <!--box-2--------------------->
            <li class="item">
                <div class="feature-box">
                    <a href="custombrands.php?m='.$n.'">
                        <img src="images/nike.png">
                    </a>
                </div>
                <span>Nike</span>
            </li>
            <!--box-3--------------------->
            <li class="item">
                <div class="feature-box">
                    <a href="custombrands.php?m='.$o.'">
                        <img src="images/off-white.png">
                    </a>
                </div>
                <span>Off-White</span>
            </li>
            <!--box-4--------------------->
            <li class="item">
                <div class="feature-box">
                    <a href="custombrands.php?m='.$a.'">
                        <img src="images/adidas.png">
                    </a>
                </div>
                <span>Adidas</span>
            </li>
            <!--box-5--------------------->
            <li class="item">
                <div class="feature-box">
                    <a href="custombrands.php?m='.$aj.'">
                        <img src="images/air-jordan.png">
                    </a>
                </div>
                <span>Air Jordan</span>
            </li>
            <!--box-6--------------------->
            <li class="item">
                <div class="feature-box">
                    <a href="custombrands.php?m='.$p.'">
                        <img src="images/puma.png">
                    </a>
                </div>
                <span>Puma</span>
            </li>
            
</ul>';
?>
<?php
        $pro_id=$row['id'];
        $pro_id2=$row2['id'];
        $pro_id3=$row3['id'];
        $pro_id4=$row4['id'];
        $pro_id5=$row5['id'];
        $pro_id6=$row6['id'];
        $pro_id7=$row7['id'];
        $pro_id8=$row8['id'];

         echo' <section class="new-arrival">
            
            <!--heading-------->
            <div class="arrival-heading">
                <strong>New Arrival</strong>
                <p>We Provide You New Fasion Design Clothes</p>
            </div>
            <div class="product-container">
                  
                <!--product-box-1---------->
                  <div class="product-box">
                      <!--product-img------------>
                      <div class="product-img">
                          <!--add-cart---->
                          <a href="addcart.php?id='.$pro_id.'" class="add-cart">
                              <i class="fas fa-shopping-cart"></i>
                            </a>
                          <!--img------>
                        <img src="images/sneakers/1_1.png">
                      </div>
                      <!--product-details-------->
                      <div class="product-details">
                          <a href="product.php?p='.$pro_id.'" class="p-name">'. $row['productname'].'</a>
                          <a href="product.php?p='.$pro_id.'" class="p-name">'. $row['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row['productprice'].' €</span>
                      </div>
                  </div>
                    <!--product-box-2---------->
                    <div class="product-box">
                        <!--product-img------------>
                        <div class="product-img">
                            <!--add-cart---->
                          <a href="addcart.php?id='.$pro_id2.'" class="add-cart"><i class="fas fa-shopping-cart"></i></a>
                          
                          <!--img------>
                          <img src="images/sneakers/5_1.png">
                        </div>
                        <!--product-details-------->
                        <div class="product-details">
                          <a href="product.php?p='.$pro_id2.'" class="p-name">'. $row2['productname'].'</a>
                          <a href="product.php?p='.$pro_id2.'" class="p-name">'. $row2['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row2['productprice'].' €</span>
                      </div>
                    </div>
                  <!--product-box-3---------->
                  <div class="product-box">
                    <!--product-img------------>
                    <div class="product-img">
                        <!--add-cart---->
                        <a href="addcart.php?id='.$pro_id3.'" class="add-cart"><i class="fas fa-shopping-cart"></i></a>
                        <!--img------>
                      <img src="images/sneakers/11_1.png">
                    </div>
                    <!--product-details-------->
                    <div class="product-details">
                          <a href="product.php?p='.$pro_id3.'" class="p-name">'. $row3['productname'].'</a>
                          <a href="product.php?p='.$pro_id3.'" class="p-name">'. $row3['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row3['productprice'].' €</span>
                      </div>
                </div>
                  <!--product-box-4---------->
                  <div class="product-box">
                    <!--product-img------------>
                    <div class="product-img">
                        <!--add-cart---->
                        <a href="addcart.php?id='.$pro_id4.'" class="add-cart"><i class="fas fa-shopping-cart"></i></a>
                        <!--img------>
                      <img src="images/sneakers/27_1.png">
                    </div>
                    <!--product-details-------->
                    <div class="product-details">
                          <a href="product.php?p='.$pro_id4.'" class="p-name">'. $row4['productname'].'</a>
                          <a href="product.php?p='.$pro_id4.'" class="p-name">'. $row4['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row4['productprice'].' €</span>
                      </div>
                </div>
          
                  <!--product-box-5---------->
                  <div class="product-box">
                    <!--product-img------------>
                    <div class="product-img">
                        <!--add-cart---->
                        <a href="addcart.php?id='.$pro_id5.'" class="add-cart"><i class="fas fa-shopping-cart"></i></a>
                        <!--img------>
                      <img src="images/sneakers/35_1.png">
                    </div>
                    <!--product-details-------->
                    <div class="product-details">
                          <a href="product.php?p='.$pro_id5.'" class="p-name">'. $row5['productname'].'</a>
                          <a href="product.php?p='.$pro_id5.'" class="p-name">'. $row5['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row5['productprice'].' €</span>
                      </div>
                </div>
                  <!--product-box-6---------->
                  <div class="product-box">
                    <!--product-img------------>
                    <div class="product-img">
                        <!--add-cart---->
                        <a href="addcart.php?id='.$pro_id6.'" class="add-cart"><i class="fas fa-shopping-cart"></i></a>
                        <!--img------>
                      <img src="images/sneakers/26_1.png">
                    </div>
                    <!--product-details-------->
                    <div class="product-details">
                          <a href="product.php?p='.$pro_id6.'" class="p-name">'. $row6['productname'].'</a>
                          <a href="product.php?p='.$pro_id6.'" class="p-name">'. $row6['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row6['productprice'].' €</span>
                      </div>
                </div>
                  <!--product-box-7---------->
                  <div class="product-box">
                    <!--product-img------------>
                    <div class="product-img">
                        <!--add-cart---->
                        <a href="addcart.php?id='.$pro_id7.'" class="add-cart"><i class="fas fa-shopping-cart"></i></a>
                        <!--img------>
                      <img src="images/clothes/51_1.png">
                    </div>
                    <!--product-details-------->
                    <div class="product-details">
                          <a href="product.php?p='.$pro_id7.'" class="p-name">'. $row7['productname'].'</a>
                          <a href="product.php?p='.$pro_id7.'" class="p-name">'. $row7['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row7['productprice'].'  €</span>
                      </div>
                </div>
                  <!--product-box-8---------->
                  <div class="product-box">
                    <!--product-img------------>
                    <div class="product-img">
                        <!--add-cart---->
                        <a href="addcart.php?id='.$pro_id8.'" class="add-cart">
                            <i class="fas fa-shopping-cart"></i>
                        </a>
                        <!--img------>
                      <img src="images/clothes/52_1.png">
                    </div>
                    <!--product-details-------->
                    <div class="product-details">
                          <a href="product.php?p='.$pro_id8.'" class="p-name">'. $row8['productname'].'</a>
                          <a href="product.php?p='.$pro_id8.'" class="p-name">'. $row8['productsubname'].'</a>
                          <br>
                          <span class="p-price">'.$row8['productprice'].' €</span>
                      </div>
                </div>
              </div>
              
          </section>';
          

?>









      
    <!--footer---------------------------->
    <footer>
        <!--copyright-------------->
        <span class="copyright">
            Copyright 2022 - FlexShop - Leandro Ferreira
        </span>
        <!--subcribe---------------->
        <div class="subscribe">
            <form>
            <input type="email" placeholder="Example@gmail.com" required/>
            <input type="submit" value="Subscribe">
            </form>
        </div>
    </footer>
    
  
<!--script-->

<script type="text/javascript">

$(document).on('click','.search', function(){
  $('.pesquisa-barra').addClass('pesquisa-barra-active')

});
$(document).on('click','.cancelar-pesquisa', function(){
  $('.pesquisa-barra').removeClass('pesquisa-barra-active')

});

/*--Login-Sign-Up-Entradas------------------------*/

$(document).on('click','.user,.already-acount', function(){
  $('.form').addClass('login-active').removeClass('sign-up-active')

});

$(document).on('click','.sign-up', function(){
  $('.form').addClass('sign-up-active').removeClass('login-active')

});


$(document).on('click','.form-cancel', function(){
  $('.form').removeClass('login-active').removeClass('sign-up-active')

});

$(document).ready(function() {
    $('#adaptive').lightSlider({
        adaptiveHeight:true,
        auto:true,
        item:1,
        slideMargin:0,
        loop:true
    });
});

$(document).ready(function() {
    $('#autoWidth').lightSlider({
        autoWidth:true,
        loop:true,
        onSliderLoad: function() {
            $('#autoWidth').removeClass('cS-hidden');
        } 
    });  
  });
  

</script>


</body>
</html>
  
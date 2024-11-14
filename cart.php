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
  <link rel="stylesheet" type="text/css" href="css/slick.css">
  <link rel="stylesheet" href="css/stylecart.css">
  <link rel="stylesheet" href="css/popup.css">
  <script src="js/JQuery.js"></script>
  <script src="js/lightslider.js"></script>
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
<br>
<br>
<br>
<br>

<main class="container">


    <div class="item-flex">

      <!--
       - checkout section
      -->
      <section class="checkout">

        <h2 class="section-heading">Payment Details</h2>

        <div class="payment-form">

          <div class="payment-method">

            <button class="method selected">
              <ion-icon name="card"></ion-icon>

              <span>Credit Card</span>

              <ion-icon class="checkmark fill" name="checkmark-circle"></ion-icon>
            </button>

            <button class="method">
              <ion-icon name="logo-paypal"></ion-icon>

              <span>PayPal</span>

              <ion-icon class="checkmark" name="checkmark-circle-outline"></ion-icon>
            </button>

          </div>

          <form action="#">

            <div class="cardholder-name">
              <label for="cardholder-name" class="label-default">Cardholder name</label>
              <input type="text" name="cardholder-name" id="cardholder-name" class="input-default">
            </div>

            <div class="card-number">
              <label for="card-number" class="label-default">Card number</label>
              <input type="number" name="card-number" id="card-number" class="input-default">
            </div>

            <div class="input-flex">

              <div class="expire-date">
                <label for="expire-date" class="label-default">Expiration date</label>

                <div class="input-flex">

                  <input type="number" name="day" id="expire-date" placeholder="31" min="1" max="31"
                    class="input-default">
                  /
                  <input type="number" name="month" id="expire-date" placeholder="12" min="1" max="12"
                    class="input-default">

                </div>
              </div>

              <div class="cvv">
                <label for="cvv" class="label-default">CVV</label>
                <input type="number" maxlength="3" name="cvv" id="cvv" class="input-default">
              </div>

            </div>

          </form>

        </div>

        <button class="btn btn-primary">
          <b>Pay</b> € <span id="payAmount">0</span>
        </button>

      </section>

      <?php
          $liga=@mysqli_connect("localhost","root","","flexshop");
        if(!isset($_SESSION["ID"]))
          {
            
            echo'<script>alert("Precisas de logar ou criar conta!")</script>';
            echo'<script type="text/javascript">history.go(-1);</script>';
          }
          else{

          
          $s=$_SESSION["ID"];	
          $pedido="SELECT * from orders_items where idclient='$s'";
          $res=mysqli_query($liga,$pedido);
          $nl=mysqli_num_rows($res);
          $soma=0;
          $cont=0;

          if($nl>0)
          {

          echo' <section class="cart">

            <div class="cart-item-box">

              <h2 class="section-heading">Order Summary</h2>';
            for($i=0;$i<$nl;$i++)
            {
             
              $linha = mysqli_fetch_array($res);
              $pro_id=$linha['productid'];
              echo' 
              <div class="product-card" align="right">

                <div class="card">

                  <div class="img-box">
                     <img src="./images/clothes/'.$linha['productid'].'_1.png" alt=""  class="product-img">
                  </div>

                  <div class="detail">

                      <h4 class="product-name">'.$linha['order_item_details'].'</h4>

                      <div class="wrapper">

                        <div class="product-qty">
                          <button id="decrement">
                              <ion-icon name="remove-outline"></ion-icon>
                          </button>

                          <span id="quantity">'.$linha['order_item_quantity'].'</span>

                          <button id="increment">
                             <ion-icon name="add-outline"></ion-icon>
                          </button>
                        </div>

                      <div class="price">
                         $ <span id="price">'.$linha['order_item_price'].'</span>
                      </div>

                  </div>

                </div>

                <button  type="submit" class="product-close-btn">
                    <a href="delcart.php?id='.$pro_id.'"><ion-icon  name="close-outline"></ion-icon></a>
                </button>

              </div>';
            }

         echo' </div>
          <div class="wrapper">

              <div class="discount-token">

                <label for="discount-token" class="label-default">Gift card/Discount code</label>

                <div class="wrapper-flex">

                  <input type="text" name="discount-token" id="discount-token" class="input-default">

                  <button class="btn btn-outline">Apply</button>

                </div>

              </div>

              <div class="amount">

                <div class="subtotal">
                  <span>Subtotal</span> <span>€ <span id="subtotal">0</span></span>
                </div>

                <div class="tax">
                  <span>Tax</span> <span>€ <span id="tax">0.10</span></span>
                </div>

                <div class="shipping">
                  <span>Shipping</span> <span>€ <span id="shipping">0.00</span></span>
                </div>

                <div class="total">
                  <span>Total</span> <span>€ <span id="total">0</span></span>
                </div>

              </div>

            </div>

          </section>';
        }         
        else
        {
            echo'<h2 class="">Empty Cart</h2>';
            echo'<div class="wrapper">

            <div class="discount-token">

              <label for="discount-token" class="label-default">Gift card/Discount code</label>

              <div class="wrapper-flex">

                <input type="text" name="discount-token" id="discount-token" class="input-default">

                <button class="btn btn-outline">Apply</button>

              </div>

            </div>

            <div class="amount">

              <div class="subtotal">
                <span>Subtotal</span> <span>€ <span id="subtotal">0</span></span>
              </div>

              <div class="tax">
                <span>Tax</span> <span>€ <span id="tax">0.10</span></span>
              </div>

              <div class="shipping">
                <span>Shipping</span> <span>€ <span id="shipping">0.00</span></span>
              </div>

              <div class="total">
                <span>Total</span> <span>€ <span id="total">0</span></span>
              </div>

            </div>

          </div>

        </section>';

          }
         ;
        }
      ?>

    </div>

  </main>






  <!--
    - custom js link
  -->
  <script src="js/script.js"></script>

  <!--
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

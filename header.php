
<html lang="en">
 
<head>
  <meta charset="utf-8">

  <meta content="IE-edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width, intial-scale=1.0" name="viewport">

  <title> Flex Shop | Streetwear clothes </title>

 
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/lightslider.css">
  <link rel="stylesheet" type="text/css" href="css/slick.css">
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
<script type="text/javascript">

function do_login()
{
 var email=$("#email").val();
 var pass=$("#password").val();
 if(email!="" && pass!="")
 {
  $("#loading_spinner").css({"display":"block"});
  $.ajax
  ({
  type:'post',
  url:'login.php',
  data:{
   do_login:"do_login",
   email:email,
   password:pass
  },
  success:function(response) {
  if(response=="success")
  {
    window.location.href="index.php";
  }
  else
  {
    $("#loading_spinner").css({"display":"none"});
    alert("Wrong Email or Password!");
  }
  }
  });
 }

 else
 {
  alert("Please Fill All The Details");
 }

 return false;
}
</script>

</head>



<body>
<!--navegação-->
<nav>
  <!--numero telemovel e social-->
<div class="social-numero">
 <div class="social">
 ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 <a href="https://www.facebook.com/" ><i class="fab fa-facebook-square"></i></a>
 <a href="https://twitter.com/home"><i class="fab fa-twitter"></i></a>
 <a href="https://www.instagram.com/leandro_leites17/"><i class="fab fa-instagram"></i></a>
 <a href="https://youtube.com/home"><i class="fab fa-youtube"></i></a>
</div>

</div>

<!--Menu-->
<div class="navegar">
  <!--Logo do site -->
  
  <a href="index.php" class="logo">
 
    <img  src="images/logo.png"/>
  </a>
  <!--Menu seleção-->
  <ul class="menu" >

    <li><a href="sneakers.php">Sneakers</a></li>
 

    <!--descontos-->
    <!--<span class="sale-lab">Sale</span>-->
 
    <li><a href="clothes.php">Clothes</a></li>

    <li><a href="accessories.php">Accessories</a></li>
    
  </ul>
  
  <!--Menu da direita-->
  <div class="right-menu">

    <!--Menu de procurar-->
    
    
		<!--icon----------->

    <!--Utilizador-->
 
      <?php
            if(isset($_SESSION["ID"])){     
                            
                    echo '
                      <div class="dropdownn">
                      <a href="#" class="user">
                      <i class="far fa-user"></i>
                      </a>
                     <div class="dropdownn-content">
                     <a href="profile.php" data-toggle="modal" data-target="#profile"><i class="fa fa-user-circle" aria-hidden="true" ></i> Profile</a>
                    <a href="logout.php"  ><i class="fa fa-sign-in" aria-hidden="true"></i> Log out</a>
                                              
              </div>
              </div>';
  }
            else { 
  
                    echo'
                    <a href="#" class="user">
                    <i class="far fa-user"></i>
                    </a>
                    <div class="form">
                    <!--Login-->
                    <div class="login-form" >
                      <!--Cancelar botao-->
                      <a href="#" class="form-cancel">
                        <i class="fas fa-times"></i>
                      </a>
                      <!--heading-->
                      <strong> Log In </strong>
                      <!--inputs-->
                      <form method="POST" action="login.php"">
                      <input type="email" placeholder="Email" name="email" required>
                      <input type="password" placeholder="Password" name="password" required>
                      <!--Submit botao-->
                      <input type="submit" value="Login">
                      
                      </form>
                      <!--Esqueceu se da pass e botao de registar-->
                      <div class="form-bt">
                      <a href="#" class="forget">Esqueceu-se da password?</a>
                      <a href="#" class="sign-up">Criar conta</a>
                      </div>
                    </div>
                  
                    
                  
                  
                  
                    <!--Criar Conta//SignUp-->
                    <div class="sign-up-form">
                      <!--Cancelar botao-->
                      <a href="#" class="form-cancel">
                        <i class="fas fa-times"></i>
                      </a>
                      <!--heading-->
                      <strong> Sign Up </strong>
                      <!--inputs-->
                      <form method="POST" action="register.php">
                      <input type="text" placeholder="First Name" name="firstname" required>
                      <input type="text" placeholder="Last Name" name="lastname" required>
                      <input type="email" placeholder="Email" name="email" required>
                      <input type="password" placeholder="Password" name="password" required>
                      <input type="password" placeholder="Confirm password" name="cpassword" required>
                      <!--Submit botao-->
                      <input type="submit" value="Sign up">
                      
                      </form>
                      <!--Esqueceu se da pass e botao de registar-->
                      <div class="form-bt">
                      <a href="#" class="already-acount">Já tem conta?</a>
                      </div>
                    </div>
                  
                  
                  </div>';

                 }
?>
   
 
    <!--Carrinho-->
    <a href="cart.php">
      <i class="fas fa-shopping-cart">
      <!--Numero de produtos no carrinho-->
      ⠀⠀⠀
    </i>
    </a>

  </div>
</div>
</nav>
</html>
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
<?php
$s=$_SESSION["ID"];	
	
	$liga=@mysqli_connect("localhost","root","","flexshop");
	if(!$liga)
	{
		echo "ERRO! Não consegui ligar".PHP_EOL;
		exit;
	}
	else
	{		
		$id=$_GET["id"];	
		$pedido="SELECT * from orders_items where productid='$id' and idclient='$s'";
		$res=mysqli_query($liga,$pedido);
		$nl=mysqli_num_rows($res);
		if($nl>0)
		{
			//Recolher a quantidade existente no carrinho da bebida seleccionada
			$linha = mysqli_fetch_array($res);
			if($linha["order_item_quantity"]>1)
			{
				 $qtd=$linha["order_item_quantity"];
				 $qtd--;
				 $pedido2="UPDATE orders_items set order_item_quantity='$qtd' where productid='$id'";
                 echo'<script>window.location.href="cart.php"</script>';
			}
			else
			{
				$pedido2="DELETE from orders_items where productid='$id' and idclient='$s'";
                echo'<script>window.location.href="cart.php"</script>';
			}
					
			$res=mysqli_query($liga,$pedido2);
			mysqli_close($liga);
		}	
	}

    ?>
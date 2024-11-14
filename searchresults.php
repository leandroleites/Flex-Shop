<?php
session_start();
include("header.php");

?>
<html>
<body>


            <?php
            $liga=@mysqli_connect("localhost","root","","flexshop");
             $merch = $_POST['search'];
            $pedido = "SELECT * from products WHERE productname='$merch'";
  
            $res = mysqli_query($liga, $pedido);
            $nl = mysqli_num_rows($res);
            $conta = 0;

            if($nl == 0){
                echo"<br><p align='center'>Erro! ... Não existem produtos com esse nome! <br></p><br>";
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
                            <img src="./images/clothes/'.$linha['id'].'_1.png">
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













</body>


</html>
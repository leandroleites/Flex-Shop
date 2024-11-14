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
  <link rel="stylesheet" type="text/css" href="css/product.css">
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

</head>

<body>
  <br>
  <br>
  <br>
 

  <table width="75%" height="20%" align=center class=tabela border=0>   

					
					<?php 
							
								$product_id = $_GET['p'];
								$liga=@mysqli_connect("localhost","root","","flexshop");
					
								$sql = " SELECT * FROM products WHERE id = $product_id";
                
								$result = mysqli_query($liga, $sql);
                $nl = mysqli_num_rows($result);
								if ($nl > 0) 
								{
									while($linha = mysqli_fetch_assoc($result)) 
									{
                 
                    $id=$linha["id"];
                    $marca=$linha["productname"];
                    $modelo=$linha["productsubname"];
                    $preco=$linha["productprice"];
                    $desc=$linha["productdesc"];
                    $tipo=$linha["idtipo"];
       
                   
                    echo'<div class = "card-wrapper">
                    <div class = "card">
            
                      <div class = "product-imgs">
                        <div class = "img-display">
                          <div class = "img-showcase">

                            <img src = "images/clothes/'.$product_id.'_1.png" alt = "shoe image">
                            <img src = "images/clothes/'.$product_id.'_2.png" alt = "shoe image">
                            <img src = "images/clothes/'.$product_id.'_3.png" alt = "shoe image">
                            <img src = "images/clothes/'.$product_id.'_4.png" alt = "shoe image">
                          </div>
                        </div>
                        <div class = "img-select">
                          <div class = "img-item">
                            <a href = "#" data-id = "1">
                            <img src = "images/clothes/'.$product_id.'_1.png" alt = "shoe image">
                            </a>
                          </div>
                          <div class = "img-item">
                            <a href = "#" data-id = "2">
                            <img src = "images/clothes/'.$product_id.'_2.png" alt = "shoe image">
                            </a>
                          </div>
                          <div class = "img-item">
                            <a href = "#" data-id = "3">
                            <img src = "images/clothes/'.$product_id.'_3.png" alt = "shoe image">
                            </a>
                          </div>
                          <div class = "img-item">
                            <a href = "#" data-id = "4">
                            <img src = "images/clothes/'.$product_id.'_4.png" alt = "shoe image">
                            </a>
                          </div>
                        </div>
                      </div>
                      <!-- card right -->
                      <div class = "product-content">
                        <h4 class = "product-title">'.$marca.'</h4>
                        <h2 href = "#" class = "">'.$modelo.'</h2>
                        <br>
                        
                        <div class = "product-rating">
                          <i class = "fas fa-star"></i>
                          <i class = "fas fa-star"></i>
                          <i class = "fas fa-star"></i>
                          <i class = "fas fa-star"></i>
                          <i class = "fas fa-star-half-alt"></i>
                          <span>4.7(21)</span>
                        </div>
              
                        <div class = "product-price">
                      
                          <h3 class = "new-price"> Price: <span>'.$preco.'</span> €</h3>
                        </div>
              
                        <div class = "product-detail">
                      
                         
                          <ul>
                           
                            <li>Available: <span>In stock</span></li>
                            <li>Condition: <span>New</span></li>

                          
                          </ul>
                        </div>';
                        if ($id<=50)
                        {
                         echo' <div class="form-group" ><!-- form-group Starts -->
                         

                              <label class="col-md-5 control-label" > Size</label>                            
                              
                              <div class="col-md-7" ><!-- col-md-7 Starts -->
                              
                              <select name="product_size" class="form-control" >
                              
                              <option>Select a Size</option>
                              <option>39</option>
                              <option>40</option>
                              <option>41</option>
                              <option>42</option>
                              <option>43</option>
                              <option>44</option>
                              <option>45</option>
                              <option>46</option>
                              
                              </select>
                              
                              </div>
                            
                              </div>';
                        }
                        if ($id>=50 && $id<=62)
                        {
                         echo' <div class="form-group" ><!-- form-group Starts -->

                              <label class="col-md-5 control-label" >Size</label>
                              
                              <div class="col-md-7" ><!-- col-md-7 Starts -->
                              
                              <select name="product_size" class="form-control" >
                              
                              <option>Select a Size</option>
                              <option>S</option>
                              <option>M</option>
                              <option>L</option>
                              <option>XL</option>
                              
                              </select>
                              
                              </div><!-- col-md-7 Ends -->
                            
                              </div>';
                        }
                        

                       echo'
                        <div class = "purchase-info">
                          <input type = "number" min = "0" value = "1">
                       <a href="addcart.php?id='.$product_id.'">   <button type = "button" class = "btn">
                            Add to Cart <i class = "fas fa-shopping-cart"></i>
                          </button></a>
                 
                        </div>
                        <br>
                        <br>
              
                      </div>
                      <hr size="6" width="210%" align="left" color="grey">
                      <br>
                      <h2>    About this item: </h2>
                          <p align="center">'.$desc.'</p>
                          <hr size="6" width="210%" align="left" color="grey">
                          <br>
                          <br>
                    </div>
                  </div>';
              
                    

									
                                    
								?>	
                </table>
					     		<?php 
						    		$_SESSION['id'] = $linha['id'];
								}
								} 
						    	?>	
									
           <script src="js/script2.js"></script>






</body>

</html>
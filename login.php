<?php
session_start();
?>
<html>
<link rel='stylesheet' type='text/css' href='style.css'>
<body>
<?php
$liga=@mysqli_connect("localhost","root", "", "flexshop");
if (!$liga){
	echo "ERRO ! Falha na ligação à BD". PHP_EOL;
	exit;
	
}
else {
    $email=$_POST['email'];
    $pass=$_POST['password'];


    $query="SELECT * FROM users where email='$email' and pass='$pass'";
    
    $sql=mysqli_query($liga,$query);
    $nl=mysqli_num_rows($sql);
   
    if($nl>0)
    {
     
        $row  = mysqli_fetch_array($sql);
        $_SESSION["ID"] = $row['id'];
      
        $_SESSION["email"]=$row['email'];
       
        $_SESSION["firstname"]=$row['firstname'];
       
        $_SESSION["lastname"]=$row['lastname'];
   

       
        echo'<script>alert("Login com sucesso!")</script>';
        echo'<script>window.location.href="index.php"</script>';
    }
    else
    {   
        echo'<script>alert("Password ou Email errados!")</script>';
        echo'<script>window.location.href="index.php"</script>';
        
    }
}









mysqli_close($liga);

?>

</body>
</html> 

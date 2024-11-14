<html>
<link rel='stylesheet' type='text/css' href='style.css'>
<?php
session_start();



if (!empty($_POST["firstname"]) && !empty ($_POST["lastname"]) && !empty ($_POST["email"]) && !empty ($_POST["password"]) && !empty ($_POST["cpassword"]))
{
    
	if ($_POST["password"]==$_POST["cpassword"])
	{
		
		$liga=@mysqli_connect("localhost", "root", "", "flexshop");
		if (!$liga)
		{
			echo "ERRO! Falha na ligação à BDados!...", PHP_EOL;
		}
	   else
	   {
		    $email=$_POST['email'];
			$query2 = mysqli_query($liga,"SELECT email FROM users WHERE email='" . $email . "'");
			$a = mysqli_num_rows($query2);
			if ((!filter_var($email, FILTER_VALIDATE_EMAIL)) OR ($a >= 1))
			{
				echo "Your email is not valid or already exists!";
				echo $a;
			}
			else
			{		
				$fn=$_POST["firstname"];
				$ln=$_POST["lastname"];
				$em=$_POST['email'];
				$pass=$_POST['password'];
				$pedido="INSERT INTO users VALUES(null,'$fn','$ln','$em','$pass',null,null,null,null,null,null,null)";
				
				$res=mysqli_query($liga,$pedido);
				if ($res)
				{
					echo '<script>alert("Registado com sucesso")</script>';
					echo'<script>window.location.href="index.php"</script>';
				}
				else
				{
					echo'<script>alert("ERRO")</script>';
					
				}				
				mysqli_close($liga);
			}
	   }
	}
	else{
       echo '<script>alert("Passwords não coicidem")</script>';
	}
}
 else{
    echo '<script>alert("Existe campos por preencher")</script>';
}


?>
</html>

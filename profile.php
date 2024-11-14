<?php
   session_start();
   $id=$_SESSION['ID'];
   $liga=@mysqli_connect("localhost","root", "", "flexshop");
   $query2=mysqli_query($liga,"SELECT * FROM users where id='$id'")or die(mysqli_error());
   $row=mysqli_fetch_array($query2);
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
  <link rel="stylesheet" href="css/popup.css">
 
  <script src="js/JQuery.js"></script>
  <script src="js/lightslider.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link  rel="Logo Loja" href="images/fav-icon.png">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script crossorigin="anonymous" src="https://kit.fontawesome.com/c8e4d183c2.js"></script>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
  
  body{
    font-family:poppins;
  }
</style>
</head>
<body>


  
	<section class="py-5 my-5">
		<div class="container">
			<h1 class="mb-5">Account Settings</h1>
         
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
							<!--<img src="" alt="#" class="shadow">-->
						</div>
						<h4 class="text-center"><?php echo $row['firstname'];?></h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i> 
							Account
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							Password
						</a>
						<!--<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
							<i class="fa fa-user text-center mr-1"></i> 
							Security
						</a>
						<a class="nav-link" id="application-tab" data-toggle="pill" href="#application" role="tab" aria-controls="application" aria-selected="false">
							<i class="fa fa-tv text-center mr-1"></i> 
							Application
						</a>
						<a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
							<i class="fa fa-bell text-center mr-1"></i> 
							Notification
						</a>-->
					</div>
				</div>
				<div  class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					<div  class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
					<form action="profile.php" method="POST">
                    <h3 class="mb-4">Account Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>First Name</label>
								  	<input name="firstn" type="text" class="form-control" value="<?php echo $row['firstname']  ?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Last Name</label>
								  	<input name="lastn"   type="text" class="form-control" value="<?php echo $row['lastname']  ?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Email</label>
								  	<input name="emai"  type="email" class="form-control" value="<?php echo $row['email']  ?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Phone number</label>
								  	<input name="num" type="text" class="form-control" value="<?php echo $row['phonenumber']  ?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Address</label>
								  	<input name="address" type="text" class="form-control" value="<?php echo $row['address1']  ?>">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>ZipCode</label>
								  	<input name="zip" type="text" class="form-control" value="<?php echo $row['zipcode1']  ?>">
								</div>
							</div>
                            <div class="col-md-6">
								<div class="form-group">
								  	<label>Country</label>
								  	<input name="country"  type="text" class="form-control" value="<?php echo $row['country']  ?>">
								</div>
							</div>

						</div>
						<div>
							<button name="update" type="submit" class="btn btn-primary">Update</button>
							<button type="submit" class="btn btn-light">Cancel</button>
						</div>
                    </form>
					</div>
                   


                   
					<div  class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
					<form action="profile.php" method="POST">
						<h3 class="mb-4">Password Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Old password</label>
								  	<input name="oldp" type="password" class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>New password</label>
								  	<input name="newp" type="password" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Confirm new password</label>
								  	<input name="newp2" type="password" class="form-control">
								</div>
							</div>
						</div>
						<div>
                            <button name="update2" type="submit" class="btn btn-primary">Update</button>
							<button type="submit" class="btn btn-light">Cancel</button>
						</div>
						</form>
					</div>

					<!--<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
						<h3 class="mb-4">Security Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Login</label>
								  	<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Two-factor auth</label>
								  	<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="recovery">
										<label class="form-check-label" for="recovery">
										Recovery
										</label>
									</div>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
					<div class="tab-pane fade" id="application" role="tabpanel" aria-labelledby="application-tab">
						<h3 class="mb-4">Application Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="app-check">
										<label class="form-check-label" for="app-check">
										App check
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="defaultCheck2" >
										<label class="form-check-label" for="defaultCheck2">
										Lorem ipsum dolor sit.
										</label>
									</div>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>
					</div>
					<div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
						<h3 class="mb-4">Notification Settings</h3>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification1">
								<label class="form-check-label" for="notification1">
									Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium accusamus, neque cupiditate quis
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification2" >
								<label class="form-check-label" for="notification2">
									hic nesciunt repellat perferendis voluptatum totam porro eligendi.
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification3" >
								<label class="form-check-label" for="notification3">
									commodi fugiat molestiae tempora corporis. Sed dignissimos suscipit
								</label>
							</div>
						</div>
						<div>
							<button class="btn btn-primary">Update</button>
							<button class="btn btn-light">Cancel</button>
						</div>-->
					</div>
				</div>
			</div>
		</div>
	</section>
    <?php
         if(isset($_POST['update']))
         {
                  
            $liga=@mysqli_connect("localhost","root", "", "flexshop");
                     $firstname = $_POST['firstn'];
                     $lastname = $_POST['lastn'];
                     $email = $_POST['emai'];
                     $number = $_POST['num'];
                     $address = $_POST['address'];
                     $zipcode = $_POST['zip'];
                     $country = $_POST['country'];
                     $query = "UPDATE users SET firstname = '$firstname', lastname = '$lastname', email = '$email', phonenumber= '$number', address1 = '$address', zipcode1 = '$zipcode', country = '$country' 
                         WHERE id = '$id'";
                     
                    $result = mysqli_query($liga,$query) or die(mysqli_error($liga));
                    echo'<script>window.location.href="profile.php"</script>';
         }
                    
    ?>
	<?php
		 if(isset($_POST['update2']))
         {
                  
            $liga=@mysqli_connect("localhost","root", "", "flexshop");
			$pedido="SELECT pass from users where id='$id'";
			$res=mysqli_query($liga,$pedido);
			$row=mysqli_fetch_array($res);
			$oldpassword =$row["pass"];

			$oldpassword2 = $_POST['oldp'];
			$newpa = $_POST['newp'];
			$newp2 = $_POST['newp2'];

			if ($oldpassword==$oldpassword2 && $newpa==$newp2)
			{
				$query = "UPDATE users SET pass = '$newpa' WHERE id = '$id'";
				$result = mysqli_query($liga,$query) or die(mysqli_error($liga));
		
				echo'<script>alert("Password mudada com sucesso!")</script>';


			}
			else
			{
				echo'<script>alert("As passwords não combinam ou a antiga password não é a mesma!")</script>';

			}
                   
         }

	?>
	                    
              
  
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   
</html>
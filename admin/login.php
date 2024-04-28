<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <link rel="stylesheet" href="../../fos/admin/assets/css/admin_login.css" type="text/css">

  <title>Admin | TastyDrive</title>
 	

<?php 
include('../user/header.php');
include('./database/db_connect.php');

session_start();
if(isset($_SESSION['login_id'])){
	header("location:index.php?page=home");
	exit();
}

$query = $conn->prepare("SELECT * FROM system_settings LIMIT 1");
$query->execute();
$result = $query->get_result();
$row = $result->fetch_assoc();

foreach ($row as $key => $value) {
	if(!is_numeric($key)){
		$_SESSION['setting_'.$key] = $value;
	}
}
?>

</head>


<body>


  <main id="main" class=" bg-dark">
  		<div id="login-left">
  			<div class="logo">
  				<img src="../assets/img/sample_logo.png" alt="">
  			</div>
  		</div>
  		<div id="login-right">
  			<div class="card col-md-8">
  				<div class="card-body">
  					<form id="login-form" >
  						<div class="form-group">
  							<label for="username" class="control-label">Username</label>
  							<input type="text" id="username" name="username" class="form-control">
  						</div>
  						<div class="form-group">
  							<label for="password" class="control-label">Password</label>
  							<input type="password" id="password" name="password" class="form-control">
  						</div>
  						<center><button class="btn-sm btn-block btn-wave col-md-4 btn-primary">Login</button></center>
  					</form>
  				</div>
  			</div>
  		</div>
   

  </main>

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>


</body>
<script>
	$('#login-form').submit(function(e){
		e.preventDefault()
		$('#login-form button[type="button"]').attr('disabled',true).html('Logging in...');
		if($(this).find('.alert-danger').length > 0 )
			$(this).find('.alert-danger').remove();
		$.ajax({
			url:'./ajax.php?action=login',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
		$('#login-form button[type="button"]').removeAttr('disabled').html('Login');

			},
			success:function(resp){
				if(resp == 1){
					location.href ='./index.php?page=home';
				}else if(resp == 2){
					location.href ='../admin/index.php?page=home';
				}else{
					$('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>')
					$('#login-form button[type="button"]').removeAttr('disabled').html('Login');
				}
			}
		})
	})
</script>	
</html>
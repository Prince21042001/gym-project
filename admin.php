<?php 

include 'config.php';
session_start();
error_reporting(0);

	

if (isset($_POST['submit'])) {
	$email = $_POST['email'];
	$password = $_POST['password'];


	if ($email == 'prince@gmail.com' AND $password == "12345678") {
		
		header("Location: dashboard.php");

	} else {
		echo "<script>alert('Woops! Email or Password is Wrong.')</script>";

	}
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="login.css">'
	<script>
	function validateForm()
{



if(document.admin.email.value=="" || document.admin.email.value=="null" )
{
alert(' Enter the Email');
document.admin.email.focus();
return false;
}
if(document.admin.password.value=="" || document.admin.password.value=="null" )
{
alert(' Enter the password');
document.admin.password.focus();
return false;
}
}
</script>

	<title>Admin Page</title>
</head>
<body>
	<div class="container">
		<form action="" method="POST" class="login-email" name="admin">
			<h1>Admin</h1>
			<div class="textbox">
				<input type="email" placeholder="Email" name="email">
			</div>
			<div class="textbox">
				<input type="password" placeholder="Password" name="password">
			</div>
			
			<button name="submit" class="btn" onclick="return validateForm()">Login</button>

		</form>
	</div>
</body>
</html>
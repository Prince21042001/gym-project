<?php 
include 'config.php';
error_reporting(0);

session_start();
if (isset($_SESSION['username'])) {
    header("Location: home_l.php");
}

if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$cpassword = $_POST['cpassword'];

	if ($password == $cpassword) {
		$sql = "SELECT * FROM signup WHERE email='$email'";
		$result = mysqli_query($conn, $sql);  //procedural style  it will return a mysqli_result object
		if (!$result->num_rows > 0) {
			$sql = "INSERT INTO signup (username, email, password)
					VALUES ('$username', '$email', '$password')";
			$result = mysqli_query($conn, $sql);
			if ($result)    // true or false in this case.
			{
				echo "<script>alert('Registration Completed.')</script>";
				$username = "";
				$email = "";
				$_POST['password'] = "";
				$_POST['cpassword'] = "";
			} else {
				echo "<script>alert('Something Wrong Went.')</script>";
			}
		} else {
			echo "<script>alert('Email Already Exists.')</script>";
		}
		
	} else {
		echo "<script>alert('Password Not Matched.')</script>";
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="login.css">
<script>
	function validateForm()
{


if(document.signup.username.value=="" || document.signup.username.value=="null" )
{
alert(' Enter the username');
document.signup.username.focus();
return false;
}
if(document.signup.email.value=="" || document.signup.email.value=="null" )
{
alert(' Enter the Email');
document.signup.email.focus();
return false;
}
if(document.signup.password.value=="" || document.signup.password.value=="null" )
{
alert(' Enter the password');
document.signup.password.focus();
return false;
}
if(document.signup.password.value.length <=5 || document.signup.password.value.length >=12)
{
alert('Your Password Should have Min 6 & Max 12 Char');
document.signup.password.focus();
return false;

}
if(document.signup.cpassword.value=="" || document.signup.cpassword.value=="null" )
{
alert(' Confirm the password');
document.signup.cpassword.focus();
return false;
}
}
</script>
<title>Register Form</title>
</head>
<body>
	<div class="container">
		<form action="" method="POST" name="signup">
            <h1>Sign up</h1>
			<div class="textbox">
				<input type="text" placeholder="Name" name="username">
			</div>
			<div class="textbox">
				<input type="email" placeholder="Email" name="email">
			</div>
			<div class="textbox">
			<input type="password" placeholder="Password" name="password">
            </div>
            <div class="textbox">
			<input type="password" placeholder="Confirm Password" name="cpassword">
			</div>
			<button name="submit" class="btn" onclick="return validateForm()">Register</button>
			<div class="signup">
			Have an account? <a href="login.php">Login Here</a>.
    

  </div>
		</form>
	</div>
</body>
</html>

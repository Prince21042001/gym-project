<?php 

include 'config.php';

session_start();

error_reporting(0);

if (isset($_SESSION['username'])) {
    header("Location: home_l.php");
}	

if (isset($_POST['submit'])) {
	$email = $_POST['email'];
	$password = $_POST['password'];


	$sql = "SELECT * FROM signup  WHERE email='$email' AND password='$password'";
	$result = mysqli_query($conn, $sql);
	if ($result->num_rows > 0) {
		$row = mysqli_fetch_assoc($result);     //Returns an associative array of strings representing the fetched row. NULL if there are no more rows in result-set
		$_SESSION['username'] = $row['username'];
		header("Location: home_l.php");
	} else {
		echo "<script>alert('Email or Password is Wrong.')</script>";
	}
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
    <script>
		function validateForm()
{



if(document.login.email.value=="" || document.login.email.value=="null" )
{
alert(' Enter the Email');
document.login.email.focus();
return false;
}
if(document.login.password.value=="" || document.login.password.value=="null" )
{
alert(' Enter the password');
document.login.password.focus();
return false;
}
}
</script>
  </head>
  <body>
<div class="container">
<form action="" method="POST" name="login">

  <h1>Login</h1>
  <div class="textbox">
  
    <input type="email" placeholder="Email" name="email" >
  </div>

  <div class="textbox">
    
    <input type="password" placeholder="Password" name="password">

  </div>

  <button name="submit" class="btn" onclick=" return validateForm()">Login</button>

  <div class="signup">
      Don't have an account? <a href="signup.php">Register Here</a>

  </div>


  </form>

</div>
  </body>
</html>
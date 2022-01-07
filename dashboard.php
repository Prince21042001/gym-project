<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Bootstrap -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" />
    <link rel="stylesheet" href="dashboard.css">


</head>
<body>

<a href="home.html"><h1 class="admin"> Admin Dashboard </h1></a>

<?php 
include 'config.php';
$selcetquery =" select * from trainer order by date DESC";
$query = mysqli_query($conn,$selcetquery);
$total = mysqli_num_rows($query);
$selcetquery2 =" select * from trainer where date(Date) = curdate()";
$query = mysqli_query($conn,$selcetquery2);
$today = mysqli_num_rows($query);
?>
<span class="total"> Date: <?php  echo  date("Y-m-d") ?> </span>
<span class="total"> Total request: <?php  echo $total ?> </span>
<span class="total"> Today: <?php  echo $today ?> </span>

 


  <!-- table -->
<div class="center-div">
<div class="table-responsive">  
<table class="table table-striped"> 
  <thead>
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">City</th>
      <th scope="col">Phone No.</th>

    </tr>
  </thead>
  <tbody>


<?php
include 'config.php';
$selectquery =" select * from trainer order by date DESC";
$query = mysqli_query($conn,$selectquery);
$total = mysqli_num_rows($query);


while($res = mysqli_fetch_array($query))  //mysqli_fetch_array() function fetches a result row as an associative array, a numeric array, or both.
{
?>
    
    
<tr>
      <th scope="row"><?php echo $res['Date'];?></th>
      <td><?php echo $res['name'];?></td>
      <td><?php echo $res['age'];?></td>
      <td><?php echo $res['city'];?></td>
     <b> <td><?php echo $res['phone'];?></td></b>

    </tr>
<?php
}

?>
</tbody>


</table>
</div>
</div>

</body>
</html>
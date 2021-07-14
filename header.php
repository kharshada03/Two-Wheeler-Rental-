
<header>
<img src="image/logo.jpg" width="300px" height="150px">
<?php
$conn=mysqli_connect('localhost','root','');
if(!$conn)
{
	echo 'Not Connected To Server';
}
if(!mysqli_select_db($conn , 'bikerental'))
{
	echo 'Database Not Selected';
}
session_start(); 
if(isset($_POST['submit']))
{
	 $checkifusernamenotnull = $_POST['lemail'];
	 $checkifpasswrdnotnull = $_POST['lpsw'];
	 $sql=mysqli_query($conn,"Select * From user Where Emailid='$checkifusernamenotnull' and Password='$checkifpasswrdnotnull'");
	 $r=mysqli_num_rows($sql);
	 $result = mysqli_fetch_assoc($sql);		
			$_SESSION['lemail']=$checkifusernamenotnull;
			// echo $_SESSION['lemail'];
			// header('location:user/index.php');
	 ob_end_flush();
}
?>
<!-- Login Button -->
<?php   
if(isset($_SESSION['lemail'])==0)
	{	
?>
<button class="button" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<div id="id01" class="modal">
  <form class="modal-content animate" action="home.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="image/user.jpg" alt="Avatar" class="avatar">
    </div>
    <div class="container">
      <label for="email"><b>EmailId:</b></label>
      <input type="text" placeholder="Enter EmailId" name="lemail" required>
	  <br>
      <label for="psw"><b>Password:</b></label>
      <input type="password" placeholder="Enter Password" name="lpsw" required>
        
      <button type="submit" name="submit">Login</button><br>
	  <br>
	  <label align="center"><a href="signin.php" align="center">Don't have account?</a></label>
    </div>
  </form>
</div>
<!--/Login -->
<?php }
else{ ?>
<button class="button" style="width:auto;"><a href="logout.php">Logout</a></button>
<?php 
 } ?>



<!--Navigation bar-->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="home.php">Home</a></li>
      <li><a href="homepage.php?option=bike">Bike Listing</a></li>
      <li><a href="homepage.php?option=contact">About Us</a></li>
    </ul>
	<?php   
if(isset($_SESSION['lemail'])==0)
	{	
?>
<label></label>
<?php }
else{ ?>
<label style="float:right;color:white"><?php echo $_SESSION['lemail'];?></label>
<?php
 } ?>
  </div>
</nav>
<div>
</header>
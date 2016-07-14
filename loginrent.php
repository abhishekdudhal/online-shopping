<?php
$i=$_REQUEST['itemno'];
session_start();
require_once("class.user.php");
$login = new USER();
require 'config.php';
if(isset($_POST['btn-login']))
{    
	$uname = strip_tags($_POST['txt_uname_email']);
	$umail = strip_tags($_POST['txt_uname_email']);
	$upass = strip_tags($_POST['txt_password']);
	$_SESSION['eid']=$uname;
		$sql=mysql_query("select * from users where user_name='$uname'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $se=$mat['servicea'];
		}
          $spl=mysql_query("select * from booksonrent where user_name='$uname'");
	   $nck=0;
	   if($spl==false)
	{
		die(mysql_error());
	}
	 while($mt = mysql_fetch_array($spl)) 
        {
			   $mtc=$mt['Status'];
			   if($mtc=='Approved')
				   $nck++;
		}  		
	if($login->doLogin($uname,$umail,$upass))
	{
		if($se=='PRO')
		{
		   if($nck==0)
		   {			   
		echo "<script>location.href='orderrent.php?itemno=$i'</script>";
		}
		
                 else
		{
                echo "<script>location.href='cannotrent.php'</script>";
		}
		}
                 else if($se=='REQP')
                 {
                      echo "<script>location.href='pending.php'</script>";
                  }
		else
		{
			echo "<script>location.href='proreg.php'</script>";
		}
	}
	else
	{
		
		$error = "Wrong Details !";
	}	
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Log-in</title>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="style.css" type="text/css"  />
<style>
  body
      {
        background-image:url(14.jpg);
        background-position:0px 0px;
    background-size: cover;
        background-repeat: norepeat;
      }
	 
	  </style>
</head>
<body>

<div class="signin-form">

	<div class="container">
     
        
       <form class="form-signin" method="post" id="login-form">
      
        <h2 class="form-signin-heading">Welcome to Engineering Books</h2><hr />
        
        <div id="error">
        <?php
			if(isset($error))
			{
				?>
                <div class="alert alert-danger">
                   <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; <?php echo $error; ?> !
                </div>
                <?php
			}
		?>
        </div>
        
        <div class="form-group">
        <input type="text" class="form-control" name="txt_uname_email" placeholder="Username" required />
        <span id="check-e"></span>
        </div>
        
        <div class="form-group">
        <input type="password" class="form-control" name="txt_password" placeholder="Your Password" />
        </div>
       
     	<hr />
        
        <div class="form-group">
            <button type="submit" name="btn-login" class="btn btn-default">
                	<i class="glyphicon glyphicon-log-in"></i> &nbsp; SIGN IN
            </button>
        </div>  
      	<br />
            <label>Don't have account yet ! <a href="login.php">Sign Up</a></label>
			<br />
            <label>Forget Password<a href="forgetpassword.php">click here</a></label>
      </form>

    </div>
    
</div>

<nav class="navbar navbar-inverse navbar-fixed-top">  
	<div class="container-fluid">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	   <div class="collapse navbar-collapse" id="myNavbar">
	 <ul class="nav navbar-nav">

 <li><a  href="index.php">NewBooks</a></li>
  <li><a  href="oldbook.php">OldBooks</a></li>
  <li ><a href="rentbook.php">Rent a book</a></li>
  <li><a href="login.php?con=1">Feedback</a></li>
  <li><a href="contact.php">ContactUs</a></li>
  </ul>
   <ul class="nav navbar-nav navbar-right">
  <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
  <li><a href="?log=out"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
</ul>
   
</div>
</div>
</nav>
<br/>
<br/>
<br/>
  

<div id="Bottom" align='center'>
<h5 class="down" align='center'><b><font color="white">Copyright &copy; ABHISHEK DUDHAL</font></b></h5>

</div>


</body>
</html>
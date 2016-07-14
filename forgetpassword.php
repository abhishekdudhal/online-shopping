<?php
	require("config.php");    
if(isset($_POST['btn-login']))
{
		  
  
	$uname = strip_tags($_POST['txt_uname_email']);
	 $sql=mysql_query("select * from users where user_email='$uname'");
	if($sql==false)
	{
		
		die(mysql_error());
	}
	else
	{
		 while($mat = mysql_fetch_array($sql)) 
		 {
			 $c=1;
		 }
		 if($c==1)
		 {
		session_start();
		$_SESSION['uname'] = $uname;
		$itemno='EB'.rand(1000,9999);
		$_SESSION['itemno'] = $itemno;
		$msg="Code for change password: ".$itemno;
 mail($uname,"PASSWOED CHANGE EB BOOK",$msg);
		header("location:fpw.php");
	}
	else
	{
		$error="Wrong Details";
	}
		
}

}



?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Login</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="style.css" type="text/css"  />
<style>
 body
      {
        background-image:url(sign.jpg);
        background-position:0px 0px;
    background-size: cover;
        background-repeat: repeat;
      }
	  </style>
</head>
<body>

<br/>
<br/>
<div class="signin-form">

	<div class="container">
     
        
       <form class="form-signin" method="post" id="login-form" >
      
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
        <input type="email" class="form-control" name="txt_uname_email" placeholder="E mail ID" required />
        <span id="check-e"></span>
        </div>
        
      
       
     	<hr />
        
        <div class="form-group">
            <button type="submit" name="btn-login" class="btn btn-default">
                	<i class="glyphicon glyphicon-log-in"></i> &nbsp; Confirm
            </button>
        </div>  
      	<br />
            
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
</ul>
   
</div>
</div>
</nav>
<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>
</body>
</html>
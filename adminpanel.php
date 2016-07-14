<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
$sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $s=$mat['utype'];
		}
    if($s=='ADMIN')
	{
		
	}
else
{
	header("location:index.php");
}

if($id=="")
{
header("location:index.php");
}	
?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cz">
<?php
error_reporting(1);

?>
     <head>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	
	<style>

</style>
    <style>
	
     body
      {
        background-image: url("back.jpg");
        background-position:0px 0px;
    background-size: cover;
        background-repeat: repeat;
      }
    </style>
	<style>
.center {
    margin: auto;
    width: 60%;
    padding: 100px;
}
 table{
        border-spacing:15px;
    }
    td{
        padding:30px;
    }
     body
      {
        background-image: url(back.jpg);
		background-position:0px 0px;
background-attachment:fixed;
    background-size: cover;
        background-repeat: repeat;
      }
	   .a{
    opacity: 0.7;
    filter: alpha(opacity=50); 
	}
	.ascroll{
		max-height:605px;
		overflow-y:scroll;
	}
	.bscroll{
		max-height:600px;
		overflow-y:scroll;
	}
</style>
    </head>
    <body>
	
		 <nav class="navbar navbar-inverse navbar-fixed-top">  
	<div class="container-fluid">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	   <div class="collapse navbar-collapse" id="myNavbar">
	 <ul class="nav navbar-nav">

 <li class="active"><a  href="index.php">NewBooks</a></li>
  <li><a href="oldbook.php">OldBooks</a></li>
  <li><a href="rentbook.php">Rent a book</a></li>
  <li><a href="feedback.php">Feedback</a></li>
  <li><a href="contact.php">ContactUs</a></li>
  </ul>
   <ul class="nav navbar-nav navbar-right">
 <li><a href="login.php"><span class="glyphicon glyphicon-user"></span> MyProfile</a></li>
 <?php
 	session_start();
$id=$_SESSION['eid'];
    if($id!="")
   echo"<li><a href='?log=out'><span class='glyphicon glyphicon-log-out'></span> Logout</a></li>";
   if(isset($_REQUEST['log'])=='out')
{
session_destroy();
header("location:index.php");
}
   ?>
 
</ul>
   
</div>
</div>
</nav>	

<br/>
<br/>

<div class="container-fluid">
<div class="row">

    <div class="col-sm-2"><br/>
	<div align="center">
<img class="a" src="logo.jpg" width="100%" >
</div>
<br/>
<div class="bscroll">

<h3>AdminPanel</h3>
<li class="list-group-item"><a  href="cpanel.php?itemno=1">NewBooks</a></li>
<li class="list-group-item"><a  href="cpanel.php?itemno=2">RentBook</a></li>
<li class="list-group-item"><a href="cpanel.php?itemno=3">Orders</a></li>
<li class="list-group-item"><a  href="cpanel.php?itemno=4">Couriers</a></li>
<li class="list-group-item"><a  href="cpanel.php?itemno=5">BookOnrent</a></li>
<li class="list-group-item"><a  href="cpanel.php?itemno=6">USERS</a></li>
<li class="list-group-item"><a  href="cpanel.php?itemno=7">OldBook</a></li>
<li class="list-group-item"><a  href="cpanel.php?itemno=8">Feedback</a></li>
<li class="list-group-item"><a href="cpanel.php?itemno=9">contactus</a></li>
<li class="list-group-item"><a href="cpanel.php?itemno=10">Requirment</a></li>
</ul>	
  </div>	
  </div>
  <br/>
 <div class="ascroll">
	 <div class="col-sm-10">
	 <br/>
	 <h1 align='center'><font color="Black"style="century">Welcome ADMIN</font></h1>
	 <hr>
    <?php


   ?>
   <div class="cleaner"></div>
</div>
</div>
</div>
	 </div>
<br/>
<br/>
<br/>
 

<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>


    </body>
    </html>

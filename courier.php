
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

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color:Green;
    color: white;
}
tr:nth-child(even){background-color: #f2f2f2}
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

<div clas="container-fluid">
<div class="row">

    <div class="col-sm-2"><br/>
	<div align="center">
<img class="a" src="logo.jpg" width="100%" >
</div>
<br/>
	
  </div>
  <br/>
 <div class="ascroll">
	 <div class="col-sm-10">
	 <br/>
	 <h1 align='center'><font color="Black"style="century">Welcome</font></h1>
	 <hr>
     <?php
	session_start();
$id=$_SESSION['eid'];
include("config.php");
$cnd=$_REQUEST['itemno'];
 require "connect.php";

        $sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
       $m=0;
	  while($mat = mysql_fetch_array($sql)) 
        {
               $i=$mat['utype'];
			   if($i=='ADMIN')
				$m=1;
                if($i=='COURIER')
                $m=1;	
               					 
		}
    if($m==1)
	{ 		
		 $scl="select * from courier where user_name='$id'";
			   $rowc = $conn->query($scl);
			   if($arc = $rowc->fetch_assoc())
               {
				 $cnb=$arc['courire_id'];
			   }
     if($cnd=='0')
	 {		 
	
		  $sql="select * from orders where courire_id=$cnb";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>ORDERNO</th><th>USER</th><th>OrderStatus</th><th>PAYMETHOD</th>
	<th>PAYSTATUS</th><th>PAYTOKEN</th><th>ADDRESS</th><th>CITY</th><th>MONO</th><th>COURIER</th><th>BOOKID</th>
	<th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
			   $oun=$arr['user_name'];
               $on=$arr['order_no'];
			   $os=$arr['OrderStatus'];
			   $oa=$arr['Address'];
			   $opm=$arr['PaymentMethod'];
			   $ops=$arr['PaymentStatus'];
			   $pt=$arr['PaymentToken'];
			   $oc=$arr['city'];
			   $pp=$arr['courire_id'];
			   $obi=$arr['BookId'];
			   $om=$arr['MobileNumber'];
              
              $sl="select * from courier where courire_id=$pp";
    $rw = $conn->query($sl);
              		 while($ar = $rw->fetch_assoc()) 
					 {
						 $occ=$ar['courier_name'];
					 }						 
       echo "<tr><td>" .$on."</td><td>" . $oun."</td><td>" . $os."</td><td>" . $opm."</td><td>" . $ops."</td><td>" . $pt."</td><td>" . $oa."</td>
	   <td>" . $oc."</td><td>" . $om."</td><td>" . $occ."</td><td>" . $obi."</td>
	   <td>.<a href='upcorder.php?itemno=$on'><img src='images/update.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
	 
	 }
	 if($cnd=='1')
	 {
		
		  $sql="select * from orders ";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>ORDERNO</th><th>USER</th><th>OrderStatus</th><th>PAYMETHOD</th>
	<th>PAYSTATUS</th><th>PAYTOKEN</th><th>ADDRESS</th><th>CITY</th><th>MONO</th><th>COURIER</th><th>BOOKID</th>
	<th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
			   $oun=$arr['user_name'];
               $on=$arr['order_no'];
			   $os=$arr['OrderStatus'];
			   $oa=$arr['Address'];
			   $opm=$arr['PaymentMethod'];
			   $ops=$arr['PaymentStatus'];
			   $pt=$arr['PaymentToken'];
			   $oc=$arr['city'];
			   $pp=$arr['courire_id'];
			   $obi=$arr['BookId'];
			   $om=$arr['MobileNumber'];
              
              $sl="select * from courier where courire_id=$pp";
    $rw = $conn->query($sl);
              		 while($ar = $rw->fetch_assoc()) 
					 {
						 $occ=$ar['courier_name'];
					 }		
              			 
       echo "<tr><td>" .$on."</td><td>" . $oun."</td><td>" . $os."</td><td>" . $opm."</td><td>" . $ops."</td><td>" . $pt."</td><td>" . $oa."</td>
	   <td>" . $oc."</td><td>" . $om."</td><td>" . $occ."</td><td>" . $obi."</td>
	   <td>.<a href='uporder.php?itemno=$on'><img src='images/update.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
	}
	}
	else
	{
		header("location:index.php");
	}
if($_REQUEST['itemno']=="")
{
	header("location:courierlogin.php");
}	
if(isset($_REQUEST['log'])=='out')
{
session_destroy();
header("location:index.php");
}
else if($id=="")
{
header("location:index.php");
}
error_reporting(1);
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

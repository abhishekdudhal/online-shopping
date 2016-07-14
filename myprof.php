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
	align:center;
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
]
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
</br>
</br>
</br>
</br>
<div class="container-fluid">
<div class="row">

    <div class="col-sm-2"><br/>
	<div align="center">
<img class="a" src="logo.jpg" width="100%" >
</div>
<br/>
<div class="bscroll">
  
 <div>
<h3>My Profile</h3>
<li class="list-group-item"><a  href="myprof.php">MyOrders</a></li>
<li class="list-group-item"><a  href="myprof.php?itemno=1">MyCart</a></li>
<li class="list-group-item"><a href="myprof.php?itemno=2">RentBookStatus</a></li>
<li class="list-group-item"><a  href="myprof.php?itemno=3">Delete Add</a></li>
<li class="list-group-item"><a  href="myprof.php?itemno=4">change Password</a></li>
</ul>	
</div>
  </div>	
  </div>
  <br/>
 <div class="ascroll">
	 <div class="col-sm-10">
	 <br/>
	 <br/>
<br/>
<br/>  
<br/>
<div align:center>
<br/>
	


      <?php
	session_start();
$id=$_SESSION['eid'];
$itemno=$_REQUEST['itemno'];
 require "connect.php";

 $sql="select * from mycart where user_name='$id'";
    $row=$conn->query($sql);
	if($itemno==1)
	{
	echo"<h1 align='center'><strong>MYCART</strong></h1>";
	if($row->fetch_assoc()>0)
	{
 $sml="select * from myacart where user_name='$id'";
	
		
	$sql="select * from mycart where user_name='$id'";
    $row = $conn->query($sql);
   echo "<table align='center'><tr> <th>BOOKNAME</th><th>Author</th><th>Price</th><th>Discount</th><th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
               $bi=$arr['BookId'];
                           $cartid=$arr['cartid'];
			   $sel="select * from nbook where BookID='$bi'";
			   $rowb = $conn->query($sel);
			   if($arb = $rowb->fetch_assoc())
               {
				 $bn=$arb['BOOKNAME'];
				 $ammount=$arb['Price'];
				 $Dis=$arb['Discount'];
				 $ar=$arb['Author'];
			   }	
              			 
       echo "<tr><td>" .$bn."</td><td>" . $ar."</td><td>" .$ammount."</td><td>".$Dis."</td><td>.<a href='loginshop.php?itemno=$bi'><img src='images/MetalPlakDa5new.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='deletecart.php?itemno=$cartid'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
	}
else
{
	echo"<h2 align='center'><strong>NOTHING IN THE CART</strong></h2>";
}	
	}
	if($itemno=="")
	{
 //order code
 $sql="select * from orders where user_name='$id'";
    $row=$conn->query($sql);
	echo"<h2 align='center'><strong>ORDER STATUS</strong></h2>";
	if($row->fetch_assoc()>0)
	{
		
	$sql="select * from orders where user_name='$id'";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>ORDERNO</th><th>BOOKNAME</th><th>Amount Paid</th><th>DiliveryAddress</th><th>Courier</th><th>orderstatus</th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
               $on=$arr['order_no'];
			   $ad=$arr['Address'];
			   $bi=$arr['BookId'];
			   $ci=$arr['courire_id'];
			   $os=$arr['OrderStatus'];
			   $sel="select * from nbook where BookID='$bi'";
			   $rowb = $conn->query($sel);
			   if($arb = $rowb->fetch_assoc())
               {
				 $bn=$arb['BOOKNAME'];
				 $ammount=$arb['Price'];
				 $Dis=$arb['Discount'];
				 $ap=$ammount-($ammount*$Dis)/100;
			   }	
               $scl="select * from courier where courire_id='$ci'";
			   $rowc = $conn->query($scl);
			   if($arc = $rowc->fetch_assoc())
               {
				 $cnb=$arc['courier_name'];
			   }	
             $rowc = $conn->query($scl);	
              			 
       echo "<tr><td>" .$on."</td><td>" . $bn."</td><td>" .$ap."</td><td>".$ad."</td><td>".$cnb."</td><td>".$os."</td> <td>.<a href='cancel.php?itemno=$on'><img src='images/cancel.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
		  
	}
	else
	{
		echo"<h2 align='center'><strong>NO ORDER YET</strong></h2>";
	
	}
	}
	if($itemno==2)
	{	//rent code
echo"<h2 align='center'><strong>BOOK RENT STATUS</strong></h2>";
		  $srl="select * from users where user_name='$id'";
           $rrow = $conn->query($srl);
		   if($rar = $rrow->fetch_assoc())
               {
				 $us=$rar['servicea'];
			   }
		if($us=='PRO')
		{
			
			$sql="select * from booksonrent where user_name='$id'";
    $row = $conn->query($sql);
	echo"<h2 align='center'><strong>BOOK RENT STATUS</strong></h2>";
	if($row->fetch_assoc()>0)
	{
		$spl="select * from booksonrent where user_name='$id'";
    $rw = $conn->query($spl);
		
    echo "<table align='center'><tr> <th>ORDERNO</th><th>BOOKNAME</th><th>Rent</th><th>DAys Issued</th><th>Ammount</th><th>Status</th></tr>";
        while($arr = $rw->fetch_assoc()) 
        {
               $onr=$arr['order_no'];
			   $bid=$arr['ID'];
			   $di=$arr['daysissued'];
			   $par=$arr['PayAmnt'];
			   $rent=$arr['rent'];
			   $osr=$arr['Status'];
			   $sel="select * from rbook where ID='$bid'";
			   $rowb = $conn->query($sel);
			   if($arb = $rowb->fetch_assoc())
               {
				 $bnr=$arb['BOOKNAME'];
			   }		
              			 
       echo "<tr><td>" .$onr."</td><td>" . $bnr."</td><td>" .$rent."</td><td>".$di."</td><td>".$par."</td><td>".$osr."</td></tr>";
        }
          echo "</table>";
			
			
			
			
			
			
	}
else
{
	echo"<h2 align='center'><strong>NO ORDER YET</strong></h2>";
}	
		}
	
else
{
	echo"<h4 align='center'><strong>You are Not a pro user</strong></h4>";
	echo"<h4 align='center'><strong><a  href='proreg.php'>Apply </a>for Pro membership to rent a book</strong></h4>";
}	
			   
	}
	if($itemno==3)
	{
 $sql="select * from obook where SELLER='$id'";
    $row=$conn->query($sql);
	
	echo"<h1 align='center'><strong>MY POSTS</strong></h1>";
	if($row->fetch_assoc()>0)
	{
 $sml="select * from obook where SELLER='$id'";
	
		
	$sql="select * from obook where SELLER='$id'";
    $row = $conn->query($sql);
   echo "<table align='center'><tr> <th>BOOKNAME</th><th>Author</th><th>Price</th><th></th></tr>";
        while($arb = $row->fetch_assoc()) 
        {
                 $bi=$arb['BOOKID'];
				 $bn=$arb['BOOKNAME'];
				 $ammount=$arb['PRICE'];
				 $Dis=$arb['AUTHOR'];
			  
              			 
       echo "<tr><td>" .$bn."</td><td>" . $Dis."</td><td>" .$ammount."</td>
	   <td>.<a href='deletepost.php?itemno=$bi'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
	}
else
{
	echo"<h2 align='center'><strong>NO POST YET</strong></h2>";
}
	}
	if($itemno==4)
	header("location:changepwd.php");	
	if($itemno>4)
		header("location:myprof.php");
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

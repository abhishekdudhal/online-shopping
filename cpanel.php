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

 <li><a  href="index.php">NewBooks</a></li>
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
 
<h3>Panel</h3>
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
               					 
		}
    if($m==1)
	{ 
 if($cnd=='1')
	 {           
		 $sql="select * from nbook";
    $row = $conn->query($sql);
	
    echo "<table align='center'><tr> <th>BOOKID</th><th>NAME</th><th>Branch</th><th>SEM</th><th>AUTHOR</th><th>PUBLISHER</th><th>PRICE</th><th>DISCOUNT</th><th>STOCK</th><th>SOLD</th><th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['BookId'];
			  $bn=$arr['BOOKNAME'];
			  $bss=$arr['Sem'];
			  $bb=$arr['Branch'];
			  $bu=$arr['Author'];
			  $bp=$arr['PublicatonHouse'];
			  $bpr=$arr['Price'];
			  $bd=$arr['Discount'];
			  $bs=$arr['Stock'];
			  $bq=$arr['soldq'];
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $bb."</td><td>" . $bss."</td><td>" . $bu."</td><td>" . $bp."</td>
	   <td>" . $bpr."</td><td>" . $bd."</td><td>" . $bs."</td><td>" . $bq."</td>
	   <td>.<a href='upnbook.php?itemno=$bi'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=1&itemno=$bi'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
		 echo"<a href='addnewbook.php'><img src='images/new.gif' width='70' height='20'/></a>";
	 }
	  else if($cnd=='2')
	 {
		 $sql="select * from rbook";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>BOOKID</th><th>NAME</th><th>Branch</th><th>SEM</th><th>AUTHOR</th><th>PUBLISHER</th><th>Rent</th>
	<th>STOCK</th><th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['ID'];
			  $bn=$arr['BOOKNAME'];
			  $bss=$arr['Sem'];
			  $bb=$arr['Branch'];
			  $bu=$arr['Author'];
			  $bp=$arr['PublicatonHouse'];
			  $bpr=$arr['Rent'];

			  $bs=$arr['stock'];
			 
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $bb."</td><td>" . $bss."</td><td>" . $bu."</td><td>" . $bp."</td>
	   <td>" . $bpr."</td><td>" . $bs."</td><td>.<a href='uprbook.php?itemno=$bi'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=2&itemno=$bi'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
		   echo"<a href='addrbook.php'><img src='images/new.gif' width='70' height='20'/></a>";
	 }
	 else if($cnd=='3')
	 {
		  $sql="select * from orders";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>ORDERNO</th><th>USER</th><th>OrderStatus</th><th>PAYMETHOD</th>
	<th>PAYSTATUS</th><th>PAYTOKEN</th><th>ADDRESS</th><th>CITY</th><th>MONO</th><th>COURIER</th><th>BOOKID</th>
	<th></th><th></th></tr>";
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
			   $occ=$arr['couriers'];
			   $obi=$arr['Book_Id'];
			   $om=$arr['MobileNumber'];
              
            
              			 
       echo "<tr><td>" .$on."</td><td>" . $oun."</td><td>" . $os."</td><td>" . $opm."</td><td>" . $ops."</td><td>" . $pt."</td><td>" . $oa."</td>
	   <td>" . $oc."</td><td>" . $om."</td><td>" . $occ."</td><td>" . $obi."</td>
	   <td>.<a href='uporder.php?itemno=$on'><img src='images/update.gif' width='70' height='20'/>
	   </a>.</td><td>.<a href='delete.php?con=3&itemno=$on'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";
        }
          echo "</table>";
	 }
	  else if($cnd=='4')
	 {
		 $sql="select * from courier";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>ID</th><th>user_name</th><th>Name</th><th>Owner</th><th>ContactNo</th><th>EmailId</th><th>City</th><th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
               $ci=$arr['courire_id'];
			   $cu=$arr['cuser_id'];
			   $cn=$arr['courier_name'];
			   $cm=$arr['contact'];
			   $co=$arr['owner'];
			   $cc=$arr['city'];
			   $ce=$arr['email_id'];
              
            
              			 
       echo "<tr><td>" .$ci."</td><td>" . $cu."</td><td>" . $cn."</td><td>" . $co."</td><td>" . $cm."</td><td>" . $ce."</td>
	   <td>" . $cc."</td><td>.<a href='upcourier.php?itemno=$ci'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=4&itemno=$ci'><img src='images/delete.gif' width='70' height='20'/></a>.</td></tr>";
        }
          echo "</table>";
		  echo"<a align='center 'href='addcourier.php'><img src='images/new.gif' width='70' height='20'/></a>";
	 }
	  else if($cnd=='5')
	 {
		  $sql="select * from booksonrent";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>username</th><th>bookid</th><th>address</th><th>city</th><th>mobileno</th>
	<th>dayissued</th>
	<th>orderno</th><th>status</th><th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['user_name'];
			  $bn=$arr['book_id'];
               $bb=$arr['daysissued'];
			   $bm=$arr['MobileNumber'];
			   $ba=$arr['Address'];
			  $bc=$arr['city'];
			  $bu=$arr['order_no'];
			  $bp=$arr['Status'];
			 
			 
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $ba."</td><td>" . $bc."</td><td>" . $bm."</td><td>" . $bb."</td><td>" . $bu."</td><td>" . $bp."</td>
	   <td>.<a href='upbooksonrent.php?itemno=$bu'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=5&itemno=$bu'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td>
	   </tr>";
        }
          echo "</table>";
	 }
	 else if($cnd=='6')
	 {
		$sql="select * from users";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>NAME</th><th>USERNAME</th><th>EMAIL</th><th>ADDRESS</th><th>CITY</th>
	<th>PIN</th><th>MOBILE</th><th>UTYPE</th><th>SERVICE</th><th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['Name'];
			  $bn=$arr['user_name'];
			  $bss=$arr['user_email'];
			  $bb=$arr['Address'];
			  $bu=$arr['City'];
			  $bp=$arr['Pin'];
			  $bpr=$arr['Mobile'];

			  $bs=$arr['utype'];
			  $bk=$arr['servicea'];
			 
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $bss."</td><td>" . $bb."</td><td>" . $bu."</td><td>" . $bp."</td><td>" . $bpr."</td><td>" . $bs."</td><td>" . $bk."</td>
	   <td>.<a href='upuser.php?itemno=$bn'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=6&itemno=$bn'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";	 
		 
	 } echo "</table>";
	 }
	 else if($cnd==7)
	 {
		 	$sql="select * from obook";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>BookId</th><th>BookName</th><th>Author</th><th>Publisher</th><th>Price</th><th>Seller</th>
<th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['BOOKID'];
			  $bn=$arr['BOOKNAME'];
			  $bss=$arr['AUTHOR'];
			  $bb=$arr['PUBLISHER'];
			  $bu=$arr['PRICE'];
			  $bp=$arr['SELLER'];
			
			 
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $bss."</td><td>" . $bb."</td><td>" . $bu."</td><td>" . $bp."</td>

	   <td>.<a href='upoldbook.php?itemno=$bi'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=7&itemno=$bi'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";	 
		 
	 } echo "</table>";
	  
	 }
	 else if($cnd==8)
	 {
		 
		 	$sql="select * from feedback";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>SrNo</th><th>username</th><th>comment</th>
	
<th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['srno'];
			  $bn=$arr['user_name'];
			  $bss=$arr['comment'];
			 
			
			 
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $bss."</td>
	  

	   <td>.<a href='upfeedback.php?itemno=$bi'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=8&itemno=$bi'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";	 
		 
	 } echo "</table>";
	 }
	 else if($cnd==9)
	 {
		 $sql="select * from contactus";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>srno</th><th>Name</th><th>emailid</th><th>mobileno</th><th>purpose</th><th>discription</th>
<th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['srno'];
			  $bn=$arr['name'];
			  $bss=$arr['emailid'];
			  $bb=$arr['mobileno'];
			  $bu=$arr['purpose'];
			  $bp=$arr['discription'];
			
			 
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $bss."</td><td>" . $bb."</td><td>" . $bu."</td><td>" . $bp."</td>

	   <td>.<a href='upcontactus.php?itemno=$bi'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=9&itemno=$bi'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";	 
		 
	 } echo "</table>";
	 }
	 else if($cnd==10)
	 {
		 
		 	$sql="select * from requirment";
    $row = $conn->query($sql);
    echo "<table align='center'><tr> <th>SrNo</th><th>username</th><th>bookName</th><th>Author</th><th>Publisher</th>
	
<th></th><th></th></tr>";
        while($arr = $row->fetch_assoc()) 
        {
              $bi=$arr['srno'];
			  $bn=$arr['user_name'];
			  $bss=$arr['BookName'];
			  $ba=$arr['Author'];
			  $bp=$arr['Publisher'];
			 
			
			 
			  
              
            
              			 
       echo "<tr><td>" .$bi."</td><td>" . $bn."</td><td>" . $bss."</td><td>" .$ba."</td><td>" .$bp."</td>
	  

	   <td>.<a href='upreq.php?itemno=$bi'><img src='images/update.gif' width='70' height='20'/></a>.</td>
	   <td>.<a href='delete.php?con=10&itemno=$bi'><img src='images/delete.gif' width='70' height='20'/>
	   </a>.</td></tr>";	 
		 
	 } echo "</table>";
	 }
	 
	}
	else
	{
		header("location:index.php");
	}
if($_REQUEST['itemno']=="")
{
	header("location:adminlogin.php");
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
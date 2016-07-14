<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cz">
<?php
error_reporting(1);

?>
     <head>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	
	<style>
}
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
</style>
    </head>
    <body>
	    <style>
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
    </style>
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
<br/><br/>	
<div id="RightPart">
<h1 align='center'>Please contact seller</h1>
    <?php
 require "connect.php";
 $itemno=$_REQUEST['itemno'];
	$sql="select * from obook where BOOKID='$itemno'";
    $row = $conn->query($sql);
    $n=0;
    echo"<form method='post'><table border='0' align='center'><tr>";
        while($arr = $row->fetch_assoc()) 
        {
               $i=$arr['BOOKID'];
			   $uid=$arr['SELLER'];
			   $scl="select * from users where user_name='$uid'";
    $rowb = $conn->query($scl);
	      while($arrb = $rowb->fetch_assoc()) 
		  {
			  $name=$arrb['Name'];
			  $mob=$arrb['Mobile'];
			  $emailid=$arrb['user_email'];
		  }
        if($n%3==0)
        {
        echo "<tr>";
        }
       echo "
        <td height='280' width='240' align='center'><img src='data:image/jpg;base64,".base64_encode( $arr['IMAGE'] )."'height='250' width='200'><br/>
        <b>BOOKNAME:</b>".$arr['BOOKNAME']."
       <br><b>Author:</b>".$arr['AUTHOR']."
       <br><b>Publication:</b>&nbsp;".$arr['PUBLICATION']."
	   <br><b>Price:</b>".$arr['PRICE']."RS
        <br><b>Name:</b>&nbsp;".$name."
		 <br><b>mobileno:</b>&nbsp;".$mob."
		  <br><b>emailid:</b>&nbsp;".$emailid."
		
       </td>";
      $n++;
        }
          echo "</tr></table>
		  
           </form>";
		   

error_reporting(1);
if($itemno=="")
{
	header("location:index.php");
}
   ?>
   <div class="cleaner"></div>
</div>
<br/>
<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>	</div>
</div>
    </body>
    </html>

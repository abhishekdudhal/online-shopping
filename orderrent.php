<?php
error_reporting(1);

?><?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
$itemno=$_REQUEST['itemno'];
if(isset($_REQUEST['send']))
  {
       $spl=mysql_query("select * from booksonrent where user_name='$id'");
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
		if($nck==0)
		{
	  $sql=mysql_query("select * from rbook where ID='$itemno'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $s=$mat['stock'];
		}  
	if($s!=0)
	{
		
  $uid=$_REQUEST['uid'];
  $bn=$_REQUEST['bn'];
  $dy=$_REQUEST['dy'];
  $pr=$_REQUEST['pr'];
  $pn=$_REQUEST['pn'];
  $mn=$_REQUEST['mn'];
  $add=$_REQUEST['ad'];
  $c=$_REQUEST['c'];
  $pa=$dy*$pr;
  $order_no='rent'.rand(100,500);
  if($pa>0)
  {
	  if($pa<15)
	  {
		  if($pa>5)
		  {
	  $s=$s-1;
	if(mysql_query("UPDATE rbook                                                              
SET stock='$s'
WHERE ID='$itemno'"))
{ }
else
{
	die(mysql_error());
}	
 if(mysql_query("insert into booksonrent (user_name,ID,MobileNumber,Address,city,daysissued,rent,PayAmnt,order_no) values('$uid','$itemno','$mn','$add','$c','$dy','$pr','$pa','$order_no')"))
    {
	     echo "<script>location.href='ordersent.php?ordersent.php?order=$order_no&i=3&pa=$pa'</script>";
    }
	else
	{
		die(mysql_error());
	}
	}
	else
	{
		echo "sorry we cant provide books less than 5 days";
	}
	  }
	else
		echo "sorry we cant provide books more than 15 days";
  }
	else
	{
		header("location:days.html");
	}
	}
	else
	{
		header("location:outofstock.php");
	}
  }
  else
  {
	  echo"<h2 align='center'><strong>SORRY YOU CAN RENT ONLY ONE BOOK AT A TIME</strong></h2>";
  }
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
 else if($itemno=="")
{
header("location:index.php");
} 
?>

<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	
	<link rel="stylesheet" href="form-basic.css">
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <style>
 body
      {
        background-image:url(12.jpg);
       
    background-size:cover;
       
      }
	  </style>
</head>

<body>
<?php
	$sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
			
               $j=$mat['Name'];
			   echo $j;
		}   
	?>
		 <nav class="navbar navbar-inverse navbar-fixed-top">  
	<div class="container-fluid">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
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
   
</div>
</div>
</nav>
<br/>
<br/>
<br/>  
<br/>
<div>
<div><br/><center><h2><font face="Lucida Handwriting" size="+2" color="white">Welcome 
	<?php
	$sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
			
               $j=$mat['Name'];
			   echo $j;
		}   
	?>
</font></h2>

</div>
<?php
	$sql=mysql_query("select * from rbook where ID='$itemno'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $a=$mat['Author'];
			   $b=$mat['BOOKNAME'];
			   $p=$mat['Rent'];
			   $pc=$mat['PublicatonHouse'];
		}   
	?>
    <div class="main-content">


        <form method="post" name="f1" onSubmit="return vali()" class="form-basic">

            <div class="form-title-row">
                <h3>Rent Form</h3>
            </div>

            <div class="form-row">
                <label>
                    <span>User Id:</span>
                    <input name="uid" type="text" id="uid" onChange="return fnam()" readonly="readonly" value="<?php echo $id;?>">
                </label>
            </div>


			<div class="form-row">
                <label>
                    <span>BookName:</span>
					 <input name="bn" type="text" id="bn" onChange="return fnam()" readonly="readonly" value="<?php echo $b;?>">
					</label>
            </div>
			
			 <div class="form-row">
                <label>
                    <span>Author:</span>
                     <input name="au" type="text" id="au" onChange="return fnam()" readonly="readonly" value="<?php echo $a;?>">
                </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Publisher:</span>
                      <input name="pn" type="text" id="pn" onChange="return fnam()" readonly="readonly" value="<?php echo $pc;?>">
                </label>
            </div>
			
             <div class="form-row">
                <label>
                    <span>Rent:</span>
                    <input name="pr" type="text" id="pr" onChange="return lnam()" readonly="readonly" value="<?php echo $p;?>Rs">
                </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>No of Days:</span>
                    <input name="dy" type="text" id="dy" required="required" onChange="return phone()">
                </label>
            </div>
			
			
			<div class="form-row">
                <label>
                    <span>Mobile no:</span>
                    <input name="mn" required="required" type="text" id="mn" onChange="return phone()">
                </label>
            </div>
			
            <div class="form-row">
                <label>
                    <span>Address</span>
                     <textarea name="ad" required="required" id="ad" value="return add()"></textarea>
                </label>
            </div>

        <div class="form-row">
                <label>
                    <span>City</span>
                    <select name="c" id="c">
                        <option value="Mumbai">Mumbai</option>
                        <option value="Pune">Pune</option>
                        
                    </select>
                </label>
            </div>
            <div class="form-row">
                <button name="send" type="submit" id="send" value="Send">Submit</button>
            </div>

        </form>

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

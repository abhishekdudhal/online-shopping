<?php
error_reporting(1);

?><?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
$itemno=$_REQUEST['itemno'];
if(isset($_REQUEST['send']))
  {
	   
	   $sql=mysql_query("select * from nbook where BookId='$itemno'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $s=$mat['Stock'];
			   $sq=$mat['soldq'];
		}  
	if($s!=0)
	{
		
  $uid=$_REQUEST['uid'];
  $bn=$_REQUEST['bn'];
  $pr=$_REQUEST['pr'];
  $au=$_REQUEST['au'];
  $ap=$_REQUEST['ap'];
  $ds=$_REQUEST['ds'];
  $pn=$_REQUEST['pn'];
  $mob_no=$_REQUEST['mn'];
  $add=$_REQUEST['ad'];
  $bank=$_REQUEST['ban'];
  $city=$_REQUEST['c'];
  $order_no='ord'.rand(100,500);
  	  $s=$s-1;
	  $sq=$sq+1;
	if(mysql_query("UPDATE nbook                                                              
SET stock='$s',soldq='$sq'
WHERE BookId='$itemno'"))
{ }
else
{
	die(mysql_error());
}
$sql=mysql_query("select courire_id from courier where city='$city'");
	   if($sql==false)
	{
		die(mysql_error());
	}
        $p=$itemno;
	  while($mat = mysql_fetch_array($sql)) 
        {       $k=1;
               $ci=$mat['courire_id'];
		}  
 if(mysql_query("insert into orders (user_name,BookId,MobileNumber,Address,city,order_no,PaymentMethod,courire_id) values('$uid','$p','$mob_no','$add','$city','$order_no','$bank','$ci')"))
    {
	 if($bank=='PAYTM')
		{
	 echo "<script>location.href='ordersent.php?order=$order_no&i=2&pa=$ap'</script>";
	  }
	  else
	  {
		echo "<script>location.href='ordersent.php?order=$order_no&i=1&pa=$ap'</script>";
	  }
	  }
	 else
	 {
		 die(mysql_error());
	 }		 
    }
	else
	{
		header("location:outofstock.php");
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
if($itemno=="")
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
<br/><br/>
<br/>  
<br/>


</div>
<?php
	$sql=mysql_query("select * from nbook where BookId='$itemno'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $a=$mat['Author'];
			   $b=$mat['BOOKNAME'];
			   $p=$mat['Price'];
			   $pc=$mat['PublicatonHouse'];
			   $d=$mat['Discount'];
			   $k=$p-$p*$d/100;
		}   
	?>
    <div class="main-content">


        <form method="post" name="f1" onSubmit="return vali()" class="form-basic" action="#">

            <div class="form-title-row">
                <h3>Order Form</h3>
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
                    <span>Price:</span>
                    <input name="pr" type="text" id="pr" onChange="return lnam()" readonly="readonly" value="<?php echo $p;?>Rs">
                </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Discount:</span>
                    <input name="ds" type="text" id="ds" onChange="return lnam()" readonly="readonly" value="<?php echo $d;?>%">
                </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Amount to Pay:</span>
                   <input name="ap" type="text" id="ap" onChange="return lnam()" readonly="readonly" value="<?php echo $k;?>Rs">
                </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Mobile no:</span>
                    <input name="mn" type="text" id="mn" required="required" onChange="return phone()">
                </label>
            </div>
			
            <div class="form-row">
                <label>
                    <span>Address</span>
                    <textarea name="ad" id="ad"  required="required" value="return add()"></textarea>
                </label>
            </div>

            <div class="form-row">
                <label>
                    <span>Payment Method</span>
                    <select name="ban" id="ban">
                        <option value="COD">Cash on delivery</option>
                        <option value="PAYTM">Paytm wallet</option>
                        
                    </select>
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
                <button name="send" type="submit" id="send" value="Send">Submit Form</button>
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

<!DOCTYPE html>
<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
if(isset($_REQUEST['send']))
  {
	   
		
  $uid=$_REQUEST['uid'];
if(mysql_query("UPDATE users                                                             
SET servicea='REQP'
WHERE user_name='$uid'"))
{ 
    header("location:thankyou.php");
}
else
{
	die(mysql_error());
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
        background-image:url(sign.jpg);
        background-position:0px 0px;
    background-size: cover;
        background-repeat: norepeat;
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

 <li><a  href="index.php">NewBooks</a></li>
  <li><a  href="oldbook.php">OldBooks</a></li>
  <li class="active"><a href="rentbook.php">Rent a book</a></li>
  <li><a href="login.php?con=1">Feedback</a></li>
  </ul>
   <ul class="nav navbar-nav navbar-right">
  <li><a href="?log=out"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
</ul>
   
</div>
</div>
</nav>
<br/>
<br/>  
<br/><br/>
<div align="center"><h3><strong>You are Not a pro user to rent a book</br>Take lifetime Pro membership in Rs 1000</strong></h3>
<br/>

</div>
    <div class="main-content">


        <form method="post" name="f1" onSubmit="return vali()" class="form-basic" action="#">

            <div class="form-title-row">
                <h1>Pro User Form</h1>
            </div>

            <div class="form-row">
                <label>
                    <span>User Name</span>
                    <input name="uid" type="text" id="uid" onChange="return fnam()" readonly="readonly" value="<?php echo $id;?>">
                </label>
            </div>

			<div class="form-row">
                <label>
                    <span>Amount to pay</span>
                    <input name="ap" type="text" id="ap" onChange="return lnam()" readonly="readonly" value="<?php echo 1000;?>Rs">
                </label>
            </div>
			
			 <div class="form-row">
                <label>
                    <span>Mobile No</span>
                    <input name="mn" type="text" id="mn" onChange="return phone()">
                </label>
            </div>
			

            <div class="form-row">
                <label>
                    <span>Address</span>
                    <textarea  name="ad" id="ad" value="return add()"></textarea>
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

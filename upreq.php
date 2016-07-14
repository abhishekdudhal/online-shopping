<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
require 'connect.php';
$itemno=$_REQUEST['itemno'];
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
if(isset($_REQUEST['send']))
  {
	   
		
  $a=$_REQUEST['bi'];
  $b=$_REQUEST['bn'];
  $c=$_REQUEST['by'];
   $d=$_REQUEST['bk'];
  $e=$_REQUEST['bl'];


  
	if(mysql_query("UPDATE requirment                                                             
SET srno='$a',user_name='$b',BookName='$c',Author='$d',Publisher='$e'
WHERE srno='$itemno'"))
{ 
header("location:cpanel.php?itemno=10");
}
else
{
	die(mysql_error());
} 
}
  }
	else
	{
		header("location:index.php");
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
 	
</ul>
   
</div>
</div>
</nav>
<?php
	$sql=mysql_query("select * from requirment where srno='$itemno'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
			    $a=$mat['srno'];
               $b=$mat['user_name'];
			   $c=$mat['BookName'];
			   $d=$mat['Author'];
			   $e=$mat['Publisher'];
			   
			   
			
		}   
	?>	
<br/>
<br/>

<div>
	
<br/><br/>
<br/>  
<br/>


</div>

    <div class="main-content">


        <form method="post" name="f1" onSubmit="return vali()" class="form-basic" action="#">

            <div class="form-title-row">
                <h3>UPDATE REQUIREMENTS</h3>
            </div>

            <div class="form-row">
                <label>
                    <span>Sr.No:</span>
                 <input name="bi" type="text" id="bi" required="required" onChange="return phone()" value="<?php echo $a;?>">
				  </label>
            </div>


			
			
			<div class="form-row">
                <label>
                    <span>User Name:</span>
               <input name="bn" type="text" id="bn" required="required" value="<?php echo $b;?>"onChange="return phone()">
				  </label>
            </div>
			
			 <div class="form-row">
                <label>
                    <span>Book Name:</span>
<input name="by" type="text" id="by" required="required" value="<?php echo $c;?>" onChange="return phone()">
			   </label>
            </div>
			
			 <div class="form-row">
                <label>
                    <span>Author:</span>
       <input name="bk" type="text" id="bk" required="required" onChange="return phone()" value="<?php echo $d;?>">
					</label>
            </div>
			
			 <div class="form-row">
                <label>
                    <span>Publisher:</span>
      <input name="bl" type="text" id="bl" required="required" value="<?php echo $e;?>"onChange="return phone()">
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

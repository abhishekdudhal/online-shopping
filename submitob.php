<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
require 'connect.php';	
if(isset($_REQUEST['send']))
  {
	   if(is_uploaded_file($_FILES['photo']['tmp_name']) && getimagesize($_FILES['photo']['tmp_name']) != false)
	   
	   {
  $b=$_REQUEST['bn'];
  $c=$_REQUEST['by'];
  $d=$_REQUEST['bb'];
  $e=$_REQUEST['bs'];
  $f=$_REQUEST['ba'];
  $g=$_REQUEST['bp'];	 
 $file=$_FILES['photo']['tmp_name'];
   
   if($file)
   {
     $image=addslashes(file_get_contents($_FILES['photo']['tmp_name']));
	
    $image_name=addslashes($_FILES['photo']['name']); 
    $image_size=getimagesize($_FILES['photo']['tmp_name']);
	 if( mysql_query("INSERT INTO obook (BOOKNAME, AUTHOR,PUBLISHER,PRICE,SELLER,IMAGE,Branch,Sem)
		VALUES ('$b' ,'$c','$d','$e','$id','$image','$f','$g')"))
		{
			header("location:oldbook.php");
		}
		else
		{
			die(mysql_error());
		}
		
  } 
}
  
  }
if(isset($_REQUEST['log'])=='out')
{
session_destroy();
header("location:index.php");
}
else if($id=="")
{
header("location:login.php");
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

 <li ><a  href="index.php">NewBooks</a></li>
  <li class="active"><a href="oldbook.php">OldBooks</a></li>
  <li><a href="rentbook.php">Rent a book</a></li>
  <li><a href="feedback.php">Feedback</a></li>
  <li><a href="contact.php">ContactUs</a></li>
  </ul>
   <ul class="nav navbar-nav navbar-right">
  <li><a href="login.php"><span class="glyphicon glyphicon-user"></span> MyProfile</a></li>
  <?php
   	session_start();
$id=isset($_SESSION['eid']);
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

<div>
	
<br/><br/>
<br/>  
<br/>


</div>

    <div class="main-content">


        <form method="post" name="f1" onSubmit="return vali()" class="form-basic" enctype="multipart/form-data">

            <div class="form-title-row">
                <h3>Submit OB</h3>
            </div>

            <div class="form-row">
                <label>
                    <span>Book Name:</span>
            <input name="bn" type="text" id="bn" required="required" onChange="return phone()">
			</label>
            </div>


			
			
			<div class="form-row">
                <label>
                    <span>Author:</span>
          <input name="by" type="text" id="by" required="required"  onChange="return phone()">
				  </label>
            </div>
			
			 <div class="form-row">
                <label>
                    <span>Publisher:</span>
<input name="bb" type="text" id="bb" required="required" onChange="return phone()">
			   </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Price:</span>
          <input name="bs" type="text" id="bs" required="required" onChange="return phone()">
				  </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Branch:</span>
           <input name="ba" type="text" id="ba" required="required"  onChange="return phone()">
				  </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Sem:</span>
          <input name="bp" type="text" id="bp" required="required" onChange="return phone()">
				  </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Image:</span>
         <input name="photo" type="file" required="required"/>
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

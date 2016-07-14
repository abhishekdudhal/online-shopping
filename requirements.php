<?php
require 'config.php';
session_start();
$id=$_SESSION['eid'];
if(isset($_REQUEST['send']))
  {
	  
  $b=$_REQUEST['bn'];
  
$c=$_REQUEST['au'];
$d=$_REQUEST['pn'];

	 if( mysql_query("INSERT INTO requirment (user_name,BookName,Author,Publisher)
		VALUES ('$id' ,'$b','$c','$d')"))
		{
			 $sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $umail=$mat['user_mail'];
			   
		}  
		$msg="THANK YOU WE WILL REPLY YOU SOON WHEN BOOKS WILL BE ADDED : ";
 mail($umail,"WE GOT YOUR REQUIRMENTS",$msg);
			echo"<h2 align='center'><strong>We will contact you</strong></h2>";
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
        background-image:url(back.jpg);
       background-position:0px 0px;
background-attachment:fixed;
    background-size: cover;
    
       
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

 <li><a href="index.php">NewBooks</a></li>
  <li><a  href="oldbook.php">OldBooks</a></li>
  <li ><a href="rentbook.php">Rent a book</a></li>
  <li><a href="feedback.php">Feedback</a></li>
   <li><a href="contact.php">ContactUs</a></li>
  </ul>
   <ul class="nav navbar-nav navbar-right">
  <li><a href="?log=out"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
</ul>
   
</div>
</div>
</nav>
<br/>
<br/>
<br/>  
<br/>
</body>
<div class="main-content">


        <form method="post" name="f1" action='requirements.php' onSubmit="return vali()" class="form-basic">

            <div class="form-title-row">
                <h3>Requirements</h3>
            </div>

            <div class="form-row">
                <label>
                    <span>User Name:</span>
                    <input name="uid" type="text" id="uid" onChange="return fnam()" readonly="readonly" value="<?php echo $id;?>">
                </label>
            </div>


			<div class="form-row">
                <label>
                    <span>BookName:</span>
					 <input name="bn" type="text" id="bn" onChange="return fnam()"  value="">
					</label>
            </div>
			
			 <div class="form-row">
                <label>
                    <span>Author:</span>
                     <input name="au" type="text" id="au" onChange="return fnam()"  value="">
                </label>
            </div>
			
			<div class="form-row">
                <label>
                    <span>Publisher:</span>
                      <input name="pn" type="text" id="pn" onChange="return fnam()"  value="">
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

</html>
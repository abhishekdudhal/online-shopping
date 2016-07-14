<?php
require 'config.php';
require 'dbconfig.php';
require 'connect.php';
session_start();
$id=$_SESSION['eid'];
if(isset($_REQUEST['send']))
  {
	  
  $b=$_REQUEST['name'];

 $f=$_REQUEST['comments'];
	 if( mysql_query("INSERT INTO feedback (user_name,comment)
		VALUES ('$b' ,'$f')"))
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
		$msg="THANK YOU FOR UR FEEDBACK : ";
 mail($umail,"WE WILL REPLY YOU SOON",$msg);
			echo"<h2 align='center'><strong>Thank you</strong></h2>";
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
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Feedback</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="form-basic.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <style>
  .modal-header, h4, .close {
      background-color: #b7b795;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #b7b795;
  }
  
  body
  {
    background-image: url(back.jpg);
    background-size: cover;
    background-repeat: no-repeat;
  }
  </style>
</head>
<body>
<br/>
<br/>
<br/>
<div class="container">

   <div class="container-fluid bg-grey">
  <h2 class="text-center"><font color="white">FeedBack Form</font></h2>
  <div class="row">
    <div class="col-sm-5">
      <p></span><font color="black" size="4px">Contact us and we'll get back to you within 24 hours.</font></p>
      <p><font color="black" size="3px"><span class="glyphicon glyphicon-map-marker"></span>Mumbai,Maharashtra,India</font></p>
      <p><font color="black" size="3px"><span class="glyphicon glyphicon-phone"></span></span> +91-7768000788</font></p>

      <p><font color="black" size="3px"><span class="glyphicon glyphicon-envelope"></span></span>abhishekdudhal@gmail.com</font></p>

    </div>
    <div class="col-sm-6">
      <div class="row">
	  <form method="post" action='fsubmit.php' name="f1" onSubmit="return vali()">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" readonly="readonly" type="text" value="<?php echo $id;?>" required>
        </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" id='send' name='send' type="submit">Send</button>
        </div>
      </div>
	  </form>
    </div>
  </div>
</div>
<div id="googleMap" style="height:350px;width:100%;"></div>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(19.0224 , 72.8556);

function initialize() {
var mapProp = {
  center:myCenter,
  zoom:12,
  scrollwheel:false,
  draggable:false,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
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
  <li ><a href="rentbook.php">Rent a book</a></li>
  <li class="active"><a href="feedback.php">Feedback</a></li>
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


<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>
</body>
</html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cz">
<?php
error_reporting(1);

?>
     <head>
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
  <li><a  href="oldbook.php">OldBooks</a></li>
  <li class="active"><a href="rentbook.php">Rent a book</a></li>
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

<
<div class="container-fluid">

<div class="row">
 <div class="col-sm-2">
 <div >
<img class ="a"src="logo.jpg" width="100%" >
</div>
	
<br/>
<div class="bscroll">
<div >
            <form class="form" action='rsearch.php' role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="q">
					<br/>
					<br/>
                   
              <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
			  
                  
              </div>
       </form>
 </div>   
<h3>Select Branch Wise</h3>
<ul class="list-group">
<li class="list-group-item"><a  href="rcivil.php">Civil</a></li>
<li class="list-group-item"><a  href="rextc.php">ExTC</a></li>
<li class="list-group-item"><a href="rit.php">Info Tech</a></li>
<li class="list-group-item"><a  href="rcs.php">Computer</a></li>
<li class="list-group-item"><a  href="rmech.php">Mechanical</a></li>
<li class="list-group-item"><a  href="relec.php">Electrical</a></li>
<li class="list-group-item"><a  href="relex.php">Electronics</a></li>
<li class="list-group-item"><a  href="rtext.php">Textile</a></li>
<li class="list-group-item"><a href="rprod.php">Production</a></li>
</ul>	
  </div>
</div>
<div class="ascroll"  >
  <div class="col-sm-10">
  <br/>
<br/><br/>
<h1 align='center'><font color="black">Surf Our Huge Library</font></h1><hr>
    <?php
 require "connect.php";
	$sql="select * from rbook where Branch='IT'";
    $row = $conn->query($sql);
    $n=0;
    echo"<form method='post'><table border='0' align='center'><tr>";
        while($arr = $row->fetch_assoc()) 
        {
               $i=$arr['ID'];
        if($n%3==0)
        {
        echo "<tr>";
        }
       echo "
        <td height='280' width='240' align='center'><img src=".$arr['BookImage']." width='200' height='250'/><br/>
        <b>BOOKNAME:</b>".$arr['BOOKNAME']."
       <br><b>Author:</b>".$arr['Author']."
       <br><b>Publication:</b>&nbsp;".$arr['PublicatonHouse']."
       <br><b>Rent Per Day:</b>".$arr['Rent']."RS
       <br><br><a href='loginrent.php?itemno=$i'><img src='images/rent.gif' width='70' height='20'/></a>
       
       </td>";
      $n++;
        }

          echo "</tr></table>
           </form>";

error_reporting(1);
   ?>
   <div class="cleaner"></div>
</div>
</div>
</div>
<div/>
	
<br/>
<br/>
<hr>
  

<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>

    </body>
    </html>

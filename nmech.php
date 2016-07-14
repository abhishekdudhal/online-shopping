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

<div class="container-fluid">
<div class="row">

    <div class="col-sm-2"><br/>
	<div align="center">
<img class="a" src="logo.jpg" width="100%" >
</div>
<br/>
<div class="bscroll">
<div >
           <form class="form" action='search.php' role="search">
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
<li class="list-group-item"><a  href="ncivil.php">Civil</a></li>
<li class="list-group-item"><a  href="nextc.php">ExTC</a></li>
<li class="list-group-item"><a href="nit.php">Info Tech</a></li>
<li class="list-group-item"><a  href="ncs.php">Computer</a></li>
<li class="list-group-item"><a  href="nmech.php">Mechanical</a></li>
<li class="list-group-item"><a  href="nelec.php">Electrical</a></li>
<li class="list-group-item"><a  href="nelex.php">Electronics</a></li>
<li class="list-group-item"><a  href="ntext.php">Textile</a></li>
<li class="list-group-item"><a href="nprod.php">Production</a></li>
</ul>	
  </div>	
  </div>
  <br/>
 <div class="ascroll">
	 <div class="col-sm-10">
	 <br/>
	 <h1 align='center'><font color="Black"style="century">MOST SOLD BOOKS</font></h1>
	 <hr>
    <?php
 require "connect.php";
	$sql="select * from nbook where Branch='Mechanical'";
    $row = $conn->query($sql);
    $n=0;
    echo"<form method='post'><table border='0' align='center'><tr>";
        while($arr = $row->fetch_assoc()) 
        {
			
               $i=$arr['BookId'];
        if($n%3==0)
        {
        echo "<tr>";
        }
       echo "
        <td height='280' width='240' align='center'><img src=".$arr['BookImage']." width='200' height='250'/><br/><br/>
        <b>BOOKNAME:</b>".$arr['BOOKNAME']."
       <br><b>Author:</b>".$arr['Author']."
       <br><b>Publication:</b>&nbsp;".$arr['PublicatonHouse']."
       <br><b>Discount:</b>".$arr['Discount']."%
	   <br><b>Price:</b>".$arr['Price']."RS
       <br><br><a href='loginshop.php?itemno=$i'><img src='images/MetalPlakDa5new.gif' width='70' height='20'/></a>
       <a href='logincart.php?itemno=$i'><img src='images/addtocart.gif' width='70' height='20'/></a>
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

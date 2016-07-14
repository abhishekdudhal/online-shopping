<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cz">
<?php
error_reporting(1);

?>
     <head>
	 
	 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	

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
	  hr {
  color: #333333;
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

<div class="container-fluid">
<div class="row">

    <div class="col-sm-2"><br/>
	<div>
<img class="a"src="logo.jpg" width="100%" >
</div>
<br/>
<div class="bscroll">
<div >
            <form class="form" action='osearch.php' role="search">
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
<li class="list-group-item"><a  href="ocivil.php">Civil</a></li>
<li class="list-group-item"><a  href="oextc.php">ExTC</a></li>
<li class="list-group-item"><a href="oit.php">Info Tech</a></li>
<li class="list-group-item"><a  href="ocs.php">Computer</a></li>
<li class="list-group-item"><a  href="omech.php">Mechanical</a></li>
<li class="list-group-item"><a  href="oelec.php">Electrical</a></li>
<li class="list-group-item"><a  href="oelex.php">Electronics</a></li>
<li class="list-group-item"><a  href="otext.php">Textile</a></li>
<li class="list-group-item"><a href="oprod.php">Production</a></li>
</ul>	
</div>
  </div>	<br/>
  <div class="ascroll">
   <div class="col-sm-10"><br/><br/>
<br/>
<h1 align='center'><font color="black">Surf Old Books</font></h1>
<hr>
    <?php
 require "connect.php";
	$sql="select * from obook where Branch='civil'";
    $row = $conn->query($sql);
    $n=0;
    echo"<form method='post'><table border='0' align='center'><tr>";
        while($arr = $row->fetch_assoc()) 
        {
               $i=$arr['BOOKID'];
        if($n%3==0)
        {
        echo "<tr>";
        }
       echo "
        <td height='280' width='240' align='center'><img src='data:image/jpeg;base64,".base64_encode( $arr['IMAGE'] )."'height='250' width='200'><br/>
        <b>BOOKNAME:</b>".$arr['BOOKNAME']."
       <br><b>Author:</b>".$arr['AUTHOR']."
       <br><b>Publication:</b>&nbsp;".$arr['PUBLICATION']."
	   <br><b>Price:</b>".$arr['PRICE']."RS
       <br><br><a href='sellerinfo.php?itemno=$i'><img src='images/view7.jpg' width='70' height='20'/></a>
       </td>";
      $n++;
        }
          echo "</tr></table>
           </form>";

error_reporting(1);
   ?>
   <div class="cleaner"></div>
   </div>
   <div/>
   </div>
   
</div>
<br/>
<hr color="black"><br/>

<div id="Bottom" align='center'>
<br><br><a href='submitob.php'><img src='images/post.gif' width='70' height='20'/></a>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>

    </body>
    </html>

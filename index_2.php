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
</style>
    </head>
    <body>
		 <nav class="navbar navbar-default navbar-fixed-top">  
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
  <li><a href="login.php?con=1">Feedback</a></li>
  </ul>
   <ul class="nav navbar-nav navbar-right">
  <li class="active" id="myBtn"><a href="login.php"><span class="glyphicon glyphicon-user"></span> MyProfile</li>
</ul>
   
</div>
</div>
</nav>	

<br/>
<br/>

<div align="center">
<img src="Sym.jpg" width="100%"  height="300px" >
</div>
<div class="container-fluid">
<div class="row">

    <div class="col-sm-2">
	
<br/>
<div >
            <form class="form" role="search">
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
<li class="list-group-item"><a  href="#">Civil</li>
<li class="list-group-item"><a  href="#">ExTC</li>
<li class="list-group-item"><a href="#">Info Tech</li>
<li class="list-group-item"><a  href="#">Computer</li>
<li class="list-group-item"><a  href="#">Mechanical</li>
<li class="list-group-item"><a  href="#">Electrical</li>
<li class="list-group-item"><a  href="#">Electronics</li>
<li class="list-group-item"><a  href="#">Textile</li>
<li class="list-group-item"><a href="#">Production</li>
</ul>	
  </div>	
 
	 <div class="col-sm-10">
	 <h1 align='center'><font color="Black"style="century">MOST SOLD BOOKS</font></h1>
	 <hr>
    <?php
 require "connect.php";
	$sql="select * from nbook order by soldq desc limit 21";
    $row = $conn->query($sql);
    $n=0;
    echo"<form method='post'><table border='0' align='center'><tr>";
        while($arr = $row->fetch_assoc()) 
        {
			if($n<21)
			{
               $i=$arr['BookId'];
        if($n%3==0)
        {
        echo "<tr>";
        }
       echo "
        <td height='280' width='240' align='center'><img src='data:image/jpg;base64,".base64_encode( $arr['BookImage'] )."'height='250' width='200'><br/><br/>
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
		}
          echo "</tr></table>
           </form>";

error_reporting(1);
   ?>
   <div class="cleaner"></div>
</div>
</div>
	 </div>
<br/>
<br/>
<hr>
<br/>
 

<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>


    </body>
    </html>

<?php

  require_once("session.php");
  
  require_once("class.user.php");
  $auth_user = new USER();
  
  
  $user_id = $_SESSION['user_session'];
  
  $stmt = $auth_user->runQuery("SELECT * FROM users WHERE user_id=:user_id");
  $stmt->execute(array(":user_id"=>$user_id));
  
  $userRow=$stmt->fetch(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>welcome - <?php print($userRow['user_email']); ?></title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

     <style>
/*div.carousel slide {
  width: 80%;
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
}

div.container {
  text-align: center;
  padding: 10px 20px;

}*/

.carousel-caption{
	padding-bottom: 100px;
}
      .carousel-inner > .item > img{
      width: 100%;
      height:100%;
     
    top: 0px;
    left: 0px;
    z-index: 0;
      
  }
 
  .carousel-inner > .item > a > img {
      width: 100%;
      height:100%;
      
  }
 .navbar {
   <!-- background-color: transparent; -->
   
   border-color: transparent;

}

.navbar li { color: #ffffff } 
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu>.dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -6px;
    margin-left: -1px;
    -webkit-border-radius: 0 6px 6px 6px;
    -moz-border-radius: 0 6px 6px;
    border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
    display: block;
}

.dropdown-submenu>a:after {
    display: block;
    content: " ";
    float: right;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px 0 5px 5px;
    border-left-color: #ccc;
    margin-top: 5px;
    margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
    border-left-color: #fff;
}

.dropdown-submenu.pull-left {
    float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
    left: -100%;
    margin-left: 10px;
    -webkit-border-radius: 6px 0 6px 6px;
    -moz-border-radius: 6px 0 6px 6px;
    border-radius: 6px 0 6px 6px;
}
body{
  position: fixed;
  background:cover;
}

  </style>


</head>
<body>
 <nav class="navbar navbar navbar-inverse navbar-fixed-top">
   <div class="container-fluid">
     <div class="navbar-header" >

          <a href="#" class="navbar-brand">INFONGINEERING</a>
     </div>
     <div>
       <ul class="nav navbar-nav">
              <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" class="active" >Study Resources <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href=" prevpapers.php">Previous Papers</a></li>
             <li><a href="tabler.php">Syllabus</a></li>
               <li><a href="books1.php">Popular Books</a></li>
            </ul>
               </li>
            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Knowledge Hub <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="clg.php">College Reviews</a></li>
         
               <li><a href="coursedesc.php">Course Description</a></li>
            <li class="dropdown-submenu">  
            <a href="#" >Cut Offs <!--<span class="caret">--></span></a>
            <ul class="dropdown-menu dropdown-menu-right">
    <li><a href=" http://fileserver.mkcl.org/DTE.ORG.IN/FE2014/CAP-I/2014ENGG_Cutoff_CAP1.pdf?did=1542">CAP Round-1</a></li>
    <li><a href=" http://182.18.154.150/fe2015/CAP-II/2015ENGG_CAP2_CutOff.pdf?did=1592">CAP Round-2</a></li>
    <li><a href=" http://182.18.154.150/FE2015/OasisModules_Files/Files/167.pdf?did=1642">Additional Round</a></li>
           </ul>
                </li></ul>
            <li ><a href="#">About us</a></li>
           
       </ul>
       <ul class="nav navbar-nav navbar-right"><li><a href="logout.php?logout=true"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li></ul>
     </div>
 </nav>
 <div id="mycarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
    <li data-target="#mycarousel" data-slide-to="1"></li>
    <!--<li data-target="#mycarousel" data-slide-to="2"></li>  
     <li data-target="#mycarousel" data-slide-to="3"></li> -->
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="1.jpg" data-color="whitw" alt="First Image">
    </div>
    <!--<div class="item">
      <img src="f4.jpg" data-color="firebrick" alt="Second Image">
      <div class="carousel-caption">
        <h3></h3>
      </div>
    </div>-->
      <!-- <div class="item">
      <img src="12.jpg" data-color="firebrick" alt="Second Image">
      <div class="carousel-caption">
        <h3></h3>
      </div>
    </div>-->
      <div class="item">
      <img src="2.jpg" data-color="firebrick" alt="Second Image">
      <div class="carousel-caption">
        <h3></h3>
      </div>
    </div>
    </div>

    <!-- more slides here -->
  </div>

  <!-- Controls -->
  <!--<a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
 
  <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>-->
</div>
<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>
</body>
</html> 
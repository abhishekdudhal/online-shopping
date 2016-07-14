
<?php
if(isset($_REQUEST['send']))
{
	echo 'in';
}
?>
<head>
<link rel="stylesheet" type="text/css" href="searchbox.css">
 <title>Search Box</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<form action="checkmyflight1.php"method="get">
<div class="row">
    <div class="col-md-4">
         
    </div>
    <div class="col-md-6">
      <div class="row">
        
        <div class="col-sm-8 form-group">
          <input class="form-control" id="Dest" name="Ser" placeholder="Search for the name of book" type="text" required>
        </div>
      </div>
	  
	  </div>
	  </div>
	  
	  <div class="row">
    <div class="col-md-5">
         
    </div>
	<div class="col-md-6">
      <div class="row">
        
        <div class="col-sm-8 form-group">
		 <div class="row"><br/>
        <div class="col-md-4 form-group">
          <button class="btn pull-right" type="submit"><span class="glyphicon glyphicon-search"></span> Search</button>
        </div>
      </div>
           </div>
      </div>
	  </div>
	  </div>
     </form>
	 <div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>
 </body>

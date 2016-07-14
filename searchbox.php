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

<div class="container">
	<div class="row">
		<div class="col-md-12">
            <div class="input-group" id="adv-search">
			<form method="post" name="f1" onSubmit="return vali()">
                <input type="text" class="form-control" placeholder="Search for a book..." />
               
                        <br/>
			
  
</div>
</div>
</div>
<br/>
<div class="row">
        <div class="col-md-4 form-group">
          <button class="btn pull-right" type="submit">Search</button>
        </div>
      </div>
  </form>

					
                
				
            
     <div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>     
        
  </div>
</div>
</body>

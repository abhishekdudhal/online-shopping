
<html>
<head>
<script type="text/javascript" src="jquery-1.2.6.min.js"></script>
<style type="text/css">
body {
margin:;
font-size:16px;
color: #000000;
font-family:Arial, Helvetica, sans-serif;
}
#sliderWrap {
margin: auto;
width: 300px;
}
#slider {

position: absolute;
background-image:url(usepics/flo6.jpg);
background-repeat:no-repeat;
background-position: bottom;
width: 300px;
height: 159px;
margin-top: -141px;
}
#slider img {
border: 0;
}
#sliderContent {
margin: 30px 0 0 30px;
position: absolute;
text-align:top_left;
color:#003399;
font-weight:simple;
padding: 10px;
}
#header {
margin: 0 auto;
width: 600px;
background-color: #F0F0F0;
height: 200px;
padding: 10px;
}
#openCloseWrap {
position:absolute;
margin: 143px 0 0 120px;
font-size:12px;
font-weight:bold;
}
</style>

</head>
<body>


	<script type="text/javascript">
	$(document).ready(function() {
		$(".topMenuAction").click( function() {
			if ($("#openCloseIdentifier").is(":hidden")) {
				$("#slider").animate({ 
					marginTop: "-141px"
					}, 500 );
				$("#topMenuImage").html('<img src="open.png" alt="open" />');
				$("#openCloseIdentifier").show();
			} else {
				$("#slider").animate({ 
					marginTop: "0px"
					}, 500 );
				$("#topMenuImage").html('<img src="close.png" alt="close" />');
				$("#openCloseIdentifier").hide();
			}
		});  
	});
	</script>
	
	
	
	<div id="sliderWrap">
		<div id="openCloseIdentifier"></div>
		<div id="slider">
			<div id="sliderContent">
			<span ><font size="+1.5"><center>Developed By:<br>Priya Gupta <br>
			    Contact:+91-94143-47699</center><br></font></span>
				
			</div>
			<div id="openCloseWrap">
				<a href="#" class="topMenuAction" id="topMenuImage">
					<img src="open.png" alt="open" />
				</a>
			</div>
		</div>
	</div>
	

<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

</head>
<body>
<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>
</body>

</html>
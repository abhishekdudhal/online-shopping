<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
if(isset($_REQUEST['log'])=='out')
{
session_destroy();
header("location:index.php");
}
else if($id=="")
{
header("location:index.php");
}
include('buy.php');
?>

<html>
<div>

<br><br>
<center><div style="width:70%;align="center">
<div><br/><center><h2><font size="+2">ThankYou for Registering with us</font></h2></center>
</div>
<br><br><br>
<fieldset style="width:50%">
<br><br>
<font size="+1"><b>Your order is sent successfully!!! </b></font><br/><br/>
<font size="+1" ><b>Your provided acces to rent book</br>NOTE:Please pay money to cont with us</font><br/><br/></font>


</fieldset>
</div>
</center>

</div>
<br/><br/><br/>
<br/>
<br/>
<br/>
<br/>
  

<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>
</html>
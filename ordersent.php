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
if($_REQUEST['order']=="")
{header("location:index.php");}
include('buy.php');
 $sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $umail=$mat['user_mail'];
			   
		}  
$msg="YOUR ORDER NO IS ".$itemno;
 mail($umail,"THANK YOU FOR SHOPPING WITH EB",$msg);
		
?>

<html>
<div>

<br><br>
<center><div style="width:70%;align="center">
<div><br/><center><h2><font size="+2">ThankYou for Shopping With Us</font></h2></center>
</div>
<br><br><br>
<fieldset style="width:50%" border="+1">
<br><br>
<font size="+2"><b>Your order is sent successfully!!! </b></font><br/><br/>
<font size="+2" ><b>Your order no. is:</b><?php echo $_REQUEST['order'];?></font><br/><br/></font>
<?php
$i=$_REQUEST['i'];
if($i==1)
{
echo "Keep Ready RS:".$_REQUEST['pa']."";	
}
else if($i==2)
{
	echo "To proceed Order Pay Ammount RS:".$_REQUEST['pa']."To paytm no 9011902243";	
}
else if($i==3)
{
	echo "To proceed Order Pay Ammount RS:".$_REQUEST['pa']."To paytm no 9011902243";	
}
?>


</fieldset>
</div>
</center>

</div>
	
<br/>
<br/>
<br/>
<br/>
<br/><br/><br/>
  

<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>

</html>
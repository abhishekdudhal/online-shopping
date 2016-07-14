<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
$sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $i=$mat['utype'];
			   if($i=='ADMIN')
				$it=1;
                if($i=='COURIER')
                $it=0;					
		} 	
if($it==1||$it==0)
{
$itemno=$_REQUEST['itemno'];
	if(mysql_query("UPDATE orders                                                              
SET OrderStatus='Delivered',PaymentStatus='Receive'
WHERE order_no='$itemno'"))
{
echo "<script>location.href='courier.php?itemno=$it'</script>";	
}
else
{
	die(mysql_error());
}
}
if($itemno=="")
{
	echo "<script>location.href='index.php'</script>";	
}

?>
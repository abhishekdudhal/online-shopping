<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
require 'connect.php';
$itemno=$_REQUEST['itemno'];	

$sql="select * from orders where order_no='$itemno'";
    $row=$conn->query($sql);
	
	if($arr=$row->fetch_assoc())
	{
		$chck=$arr['OrderStatus'];
	}
   	if($chck!='COMPLETE')
	{
  
	if(mysql_query("UPDATE orders                                                          
SET OrderStatus='CANCEL' WHERE order_no='$itemno'"))
{ 
header("location:myprof.php");
}
else
{
	die(mysql_error());
} 
	}else
	{
		header("location:myprof.php");
	}
	
  
if(isset($_REQUEST['log'])=='out')
{
session_destroy();
header("location:index.php");
}
else if($id=="")
{
header("location:index.php");
}
if($itemno=="")
{
	header("location:index.php");
}
	
?>
<?php
	session_start();
$id=$_SESSION['eid'];
include("config.php");
$cnd=$_REQUEST['itemno'];
$preq=$_REQUEST['con'];
 require "connect.php";
 $sql="DELETE FROM obook
WHERE BOOKID='$cnd'";
             if($conn->query($sql))
			 {
				 
					 
				header("location:myprof.php");
			 }
 if($_REQUEST['itemno']=="")
{
	header("location:courierlogin.php");
}	
if(isset($_REQUEST['log'])=='out')
{
session_destroy();
header("location:index.php");
}	
	if($id=="")
{
	header("location:courierlogin.php");
}
?>
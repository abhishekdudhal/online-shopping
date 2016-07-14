<?php
	session_start();
$id=$_SESSION['eid'];
include("config.php");
$cnd=$_REQUEST['itemno'];
$preq=$_REQUEST['con'];
 require "connect.php";

        $sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
       $m=0;
	  while($mat = mysql_fetch_array($sql)) 
        {
               $i=$mat['utype'];
			   if($i=='ADMIN')
				$m=1;
               					 
		}
    if($m==1)
	{ 
         if($preq==1)
		 {
		
				 $sql="DELETE FROM nbook
WHERE BookId='$cnd'";
            if($conn->query($sql))
			{
				 
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==2)
		 {
			 
				 $sql="DELETE FROM rbook
WHERE ID='$cnd'";
           if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==3)
		 {
			
				 $sql="DELETE FROM orders
WHERE order_no='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==4)
		 {
			 
				 $sql="DELETE FROM courier
WHERE courire_id='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==5)
		 {
			
				 $sql="DELETE FROM booksonrent
WHERE order_no='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==6)
		 {
			 
				 $sql="DELETE FROM users
WHERE user_name='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==7)
		 {
			 
				 $sql="DELETE FROM obook
WHERE BOOKID='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==8)
		 {
				 $sql="DELETE FROM feedback
WHERE srno='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		 else if($preq==9)
		 {
			 
				 $sql="DELETE FROM contactus
WHERE srno='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
		  else if($preq==10)
		 {
			
				 $sql="DELETE FROM requirment
WHERE srno='$cnd'";
            if($conn->query($sql))
			{
				header("location:cpanel.php?itemno=$preq");
			}
		 }
	}
	else
	{
		header("location:index.php");
	}
	if($id=="")
{
	header("location:courierlogin.php");
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
	?>
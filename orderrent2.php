<?php
session_start();
$id=$_SESSION['eid'];
include("config.php");
$itemno=$_REQUEST['itemno'];
if(isset($_REQUEST['send']))
  {
       $spl=mysql_query("select * from booksonrent where user_name='$id'");
	   $nck=0;
	   if($spl==false)
	{
		die(mysql_error());
	}
	 while($mt = mysql_fetch_array($spl)) 
        {
			   $mtc=$mt['Status'];
			   if($mtc=='Approved')
				   $nck++;
		}  
		if($nck==0)
		{
	  $sql=mysql_query("select * from rbook where ID='$itemno'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $s=$mat['stock'];
		}  
	if($s!=0)
	{
		
  $uid=$_REQUEST['uid'];
  $bn=$_REQUEST['bn'];
  $dy=$_REQUEST['dy'];
  $pr=$_REQUEST['pr'];
  $pn=$_REQUEST['pn'];
  $mn=$_REQUEST['mn'];
  $add=$_REQUEST['ad'];
  $c=$_REQUEST['c'];
  $pa=$dy*$pr;
  $order_no='rent'.rand(100,500);
  if($pa>0)
  {
	  if($pa<15)
	  {
		  if($pa>5)
		  {
	  $s=$s-1;
	if(mysql_query("UPDATE rbook                                                              
SET stock='$s'
WHERE ID='$itemno'"))
{ }
else
{
	die(mysql_error());
}	
 if(mysql_query("insert into booksonrent (user_name,book_id,MobileNumber,Address,city,daysissued,rent,PayAmnt,order_no) values('$uid','$itemno','$mn','$add','$c','$dy','$pr','$pa','$order_no')"))
    {
	     echo "<script>location.href='buy.php?order=$order_no'</script>";
    }
	else
	{
		die(mysql_error());
	}
	}
	else
	{
		echo "sorry we cant provide books less than 5 days";
	}
	  }
	else
		echo "sorry we cant provide books more than 15 days";
  }
	else
	{
		header("location:days.html");
	}
	}
	else
	{
		header("location:outofstock.html");
	}
  }
  else
  {
	  echo"<h2 align='center'><strong>SORRY YOU CAN RENT ONLY ONE BOOK AT A TIME</strong></h2>";
  }
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
 else if($itemno=="")
{
header("location:index.php");
} 
?>
<body>
<div>
<div><br/><center><h2><font face="Lucida Handwriting" size="+2" color="#111">Welcome 
	<?php
	$sql=mysql_query("select * from users where user_name='$id'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
			
               $j=$mat['Name'];
			   echo $j;
		}   
	?>
</font></h2></center>
<h2 align="right"><a href="?log=out"><font color="#111">LogOut</font></a></h2>
</div>
<div style="width:25%;float:right">
<br><br><br><br>
</div>
<center><div style="width:70%;float:right" align="center">
<center><h2><font strong size="+1" color="#1f1f1f">Order Form</font></h2></center>
<fieldset style="width:50%">
<br><br>
		<?php
	$sql=mysql_query("select * from rbook where ID='$itemno'");
	if($sql==false)
	{
		die(mysql_error());
	}
   
	  while($mat = mysql_fetch_array($sql)) 
        {
               $a=$mat['Author'];
			   $b=$mat['BOOKNAME'];
			   $p=$mat['Rent'];
			   $pc=$mat['PublicatonHouse'];
		}   
	?>
<form method="post" name="f1" onSubmit="return vali()">
<table width="366" border="0" align="center">
   <tr>
    <td width="164"><div align="center"><font size="+1" face="Comic Sans MS"><b>User Id:</b></font></div></td>
    <td width="192">
      
        <input name="uid" type="text" id="uid" onChange="return fnam()" readonly="readonly" value="<?php echo $id;?>">    </td>
  </tr>
  <tr>
    <td><div align="center"><strong><font size="+1" face="Comic Sans MS">BookName: </font></strong></div></td>
    <td><label>
    <input name="bn" type="text" id="bn" onChange="return fnam()" readonly="readonly" value="<?php echo $b;?>">

    </label></td>
  </tr>
  <tr>
    <td width="164"><div align="center"><font size="+1" face="Comic Sans MS"><b> Author:</b></font></div></td>
    <td width="192">
      
        <input name="au" type="text" id="au" onChange="return fnam()" readonly="readonly" value="<?php echo $a;?>">    </td>
  </tr>
  <tr>
    <td width="164"><div align="center"><font size="+1" face="Comic Sans MS"><b> Publlisher:</b></font></div></td>
    <td width="192">
      
        <input name="pn" type="text" id="pn" onChange="return fnam()" readonly="readonly" value="<?php echo $pc;?>">    </td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>Rent:</strong></font></div></td>
    <td><input name="pr" type="text" id="pr" onChange="return lnam()" readonly="readonly" value="<?php echo $p;?>Rs">  </td>
  </tr>
  <tr> <td><div align="center"><font size="+1"  face="Comic Sans MS"><b>Daysyouwant: </b></font></div></td>
    <td><input name="dy" type="text" id="dy" required="required" onChange="return phone()"></td>
  </tr>
  <tr> <td><div align="center"><font size="+1" face="Comic Sans MS"><b>Mobile no: </b></font></div></td>
    <td><input name="mn" required="required" type="text" id="mn" onChange="return phone()"></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>Address:</strong></font></div></td>
    <td><label>
      <textarea name="ad" required="required" id="ad" value="return add()"></textarea>
    </label></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>City:</strong></font></div></td>
    <td><input name="c" type="text" id="c" onChange="return coun()"></td>
  </tr>
  <tr>
    <td colspan="2"><label><br>
    <center>
      <input name="send" type="submit" id="send" value="Send">
    </center>
    </label></td>
    </tr>
</table>
 </form>
</fieldset>
</div>
</center>

</div>
<div id="Bottom" align='center'>
<h5 class="down" align='center'><b>DONT USE THIS PROJECT FOR COMMERCIAL PURPOSE</b></h5>
<h5 class="down" align='center'><b>Copyright &copy; ABHISHEK DUDHAL</b></h5>

</div>
</body>

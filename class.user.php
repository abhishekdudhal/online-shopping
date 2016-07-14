<?php

require_once('dbconfig.php');
require("config.php");
require("connect.php");

class USER
{	
   
	private $conn;
	
	public function __construct()
	{
		$database = new Database();
		$db = $database->dbConnection();
		$this->conn = $db;
    }
	
	public function runQuery($sql)
	{
		$stmt = $this->conn->prepare($sql);
		return $stmt;
	}
	
	public function register($fname,$uname,$umail,$upass,$aname,$cname,$pname,$mname)
	{
		try
		{
			$new_password = hash('ripemd160',$upass);
			
			$stmt = $this->conn->prepare("INSERT INTO users(Name,user_name,user_email,user_pass,Address,City,Pin,Mobile) 
		                                               VALUES(:fname,:uname, :umail, :upass, :aname, :cname, :pname, :mname)");
			$stmt->bindparam(":fname", $fname);									  
			$stmt->bindparam(":uname", $uname);
			$stmt->bindparam(":umail", $umail);
			$stmt->bindparam(":upass", $new_password);
            $stmt->bindparam(":aname", $aname);			
			$stmt->bindparam(":cname", $cname);
			$stmt->bindparam(":pname", $pname);
			$stmt->bindparam(":mname", $mname);
			$stmt->execute();	
			
			return $stmt;	
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}				
	}
		public function uppwd($uname,$unpass)
	{
		$np= hash('ripemd160',$unpass);
		  
	if(mysql_query("UPDATE users                                                            
SET user_pass='$np' WHERE user_name='$uname'"))
{ 
return 1;
}
else
{
	die(mysql_error());
} 
			
	}
	
	public function doLogin($uname,$umail,$upass)
	{
		try
		{
			$umail="blank";
			$stmt = $this->conn->prepare("SELECT user_name, user_email, user_pass FROM users WHERE user_name=:uname OR user_email=:umail ");
			$stmt->execute(array(':uname'=>$uname, ':umail'=>$umail));
			$userRow=$stmt->fetch(PDO::FETCH_ASSOC);
			if($stmt->rowCount() == 1)
			{
				$new_password = hash('ripemd160',$upass);
				if($new_password==$userRow['user_pass'])
				{
					$_SESSION['user_session'] = $userRow['user_name'];
					$id=$userRow['user_name'];
					return true;
				}
				else
				{
					return false;
				}
			}
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}
	
	public function is_loggedin()
	{
		if(isset($_SESSION['user_session']))
		{
			return true;
		}
	}
	
	public function redirect($url)
	{
		header("Location: $url");
	}
	
	public function doLogout()
	{
		session_destroy();
		unset($_SESSION['user_session']);
		return true;
	}
	public function changepwd($uname,$umail,$upass,$unpass)
	{
		try
		{
			$stmt = $this->conn->prepare("SELECT user_name, user_email, user_pass FROM users WHERE user_name=:uname OR user_email=:umail ");
			$stmt->execute(array(':uname'=>$uname, ':umail'=>$umail));
			$userRow=$stmt->fetch(PDO::FETCH_ASSOC);
			if($stmt->rowCount() == 1)
			{
				$new_password = hash('ripemd160',$upass);
				if($new_password==$userRow['user_pass'])
				{
					if($this->uppwd($uname,$unpass))
					return true;
				}
				else
				{
					return false;
				}
			}
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();
		}
	}
}
?>
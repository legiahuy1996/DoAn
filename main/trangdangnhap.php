<?php
 $username = $_POST['username'];
 $password = $_POST['password'];

 	
 if($username == '' && $password == '')
 {

 	$_SESSION['errormess']= "Vui lòng nhập đầy đủ tài khoản và mật khẩu";
 	
 }
 else
 {
 	$ketqua = $c_index->DangNhap($username,$password);
 	
 	if($ketqua==true)
 	{	
 		
 		if(isset($_SESSION['errormess']))
 		{
 			unset($_SESSION['errormess']);
 			
 		}	
 		if($ketqua['TenKH']==null)
 		{
 				$_SESSION['username'] = $username;
 				$_SESSION['password'] = $password;
 				$_SESSION['TenKH']= $username;
 				header("location:index.php");
 				
 		}
 		else
 		{
 			
 				$_SESSION['username'] = $username;
 				$_SESSION['password'] = $password;
 				$_SESSION['TenKH']=$ketqua['TenKH'];
 				$_SESSION['makh'] = $ketqua['MaKH'];
 				$_SESSION['loai']= $ketqua['loai'];
 				// var_dump($_SESSION['loai']); exit;
 				if($_SESSION['loai']=="kh")
 					header("location:index.php");
 				else
 					header('location:admin.php');
 		}
 		
 	}



 	
 	else
 	{
 		$_SESSION['errormess'] = "Tài Khoản hoặc Mật Khẩu không đúng!!";
 	}

 
 
 }



?>
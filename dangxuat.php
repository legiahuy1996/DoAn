<?php
session_start();
if(isset($_SESSION['TenKH']))
{
	
	unset($_SESSION['TenKH']);
	header("location:index.php");
}
elseif(!isset($_SESSION['TenKH']))
{
	
	$_SESSION['errormess']="Không thể đăng xuất khi bạn chưa đăng nhập!!";
	header("location:dangnhap.php");
}
	



?>

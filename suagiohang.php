<?php

session_start();
$id  = $_GET['masach'];
$soluong =$_GET['soluong'];
$giaban = $_GET['giaban'];
$tongso=0;
if(isset($_SESSION['giohang'][$id]))
{
	
	$_SESSION['giohang'][$id]['soluong'] = $soluong;

	$_SESSION['giohang'][$id]['thanhtien'] = $_SESSION['giohang'][$id]['soluong'] * $_SESSION['giohang'][$id]['Giaban'];

	foreach ($_SESSION['giohang'] as $key => $value) {
	 	$tongso+=$value['soluong'];

	}
	$_SESSION['tongso'] = $tongso;
}
header('location:giohang.php');


?>
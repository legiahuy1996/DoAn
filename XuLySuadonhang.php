<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$madonhang = $_GET['madonhang'];
if(isset($_POST['submit']))
{
	$makh = $_POST['makh'];
	$ngaygiao = $_POST['ngaygiao'];
	$diachi = $_POST['diachi'];
	$a = $m_admin->suadonhang($madonhang,$makh,$ngaygiao,$diachi);
	header('location:admin_donhang.php');
}


?>
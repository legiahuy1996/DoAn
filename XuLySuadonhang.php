<?php
session_start();
include('model/m_admin.php');
$m_admin = new M_admin();
$madonhang = $_GET['madonhang'];
$b = $m_admin->getDonhangbyID($madonhang);

$ND = $b['NgayDat'];

$ngaygiao = $_POST['ngaygiao'];
$NG = strtotime($ngaygiao);
$ND = strtotime($ND);


if(isset($_POST['submit']))
{

	$makh = $_POST['makh'];
	if($NG>=$ND)
	{
		$ngaygiao = $_POST['ngaygiao'];
		$diachi = $_POST['diachi'];
	$a = $m_admin->suadonhang($madonhang,$makh,$ngaygiao,$diachi);
	header('location:admin_donhang.php');
	}
	
	
	else
	{
		$_SESSION ['errormess'] = 'sai thông tin';
		header('location:suadonhang.php?Madonhang='.$madonhang);
	}
}


?>
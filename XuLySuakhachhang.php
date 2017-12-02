<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$makh = $_GET['makh'];
$tenkh = $_POST['tenkh'];
$diachi = $_POST['diachi'];
$ngaysinh= $_POST['ngaysinh'];

$sdt = $_POST['sdt'];

$gioitinh = $_POST['gioitinh'];

if($gioitinh == "nam")
{
	$gioitinh = 1;
}
else
	$gioitinh = 0;

$m_admin->suakhachhang($makh,$tenkh,$diachi,$sdt,$gioitinh,$ngaysinh);
header('location:admin_khachhang.php');
?>
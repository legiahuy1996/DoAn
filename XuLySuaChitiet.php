<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$mact= $_GET['mact'];
$madonhang = $_POST['madonhang'];
$masach = $_POST['masach'];
$kiemtramasach = $m_admin->kiemtrasachtrung($masach);


$soluong = $_POST['soluong'];
$dongia = $_POST['dongia'];

if($kiemtramasach['COUNT(*)']>0)
{
	if($dongia>0 && $soluong >0 )
	{

		$a = $m_admin->suachitiet($mact,$madonhang,$masach,$soluong,$dongia);
		header('location:admin_donhang.php');
	}
	else
	{
		header('location:Suachitietdonhang.php?mact='.$mact);
	}
}
else echo 'Khong ton tai ma sach nay!<br><a href="admin_donhang.php">Click vao day de quay lai</a>';



?>
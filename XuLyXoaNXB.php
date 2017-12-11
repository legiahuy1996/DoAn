<?php
session_start();
include('model/m_admin.php');
$manxb = $_GET['manxb'];
$m_admin = new M_admin();
$result = $m_admin->getsachbyNXB($manxb);
if(sizeof($result)>0)
{
	$_SESSION['errormess']="Khong the xoa nha xuat ban do co sach thuoc nha xuat ban nay";
	header('location:admin_nxb.php');
}
else
{
	$_SESSION['success']="Xoa thanh cong!";
 	$m_admin->xoanxb($manxb);
 	header('location:admin_nxb.php');
}

?>
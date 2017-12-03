<?php
include('model/m_admin.php');
$m_admin = new M_admin();
if(isset($_POST['submit']))
{
	$a ='';
	$b='';
	
	$makhachhang  = $_POST['makhachhang'];
	$ngaygiao = $_POST['ngaygiao'];
	$c = getdate();

	$ngaydat = $c['year'].'-'.$c['mon'].'-'.$c['mday'];
	$diachi=$_POST['diachi'];
	$a = strtotime($ngaygiao);
	$b = strtotime($ngaydat);

	if($a-$b>=86400)
	{
		// var_dump($makhachhang,$ngaygiao,$ngaydat,$diachi);
		$result = $m_admin->themdonhang($makhachhang,$ngaygiao,$ngaydat,$diachi);
		$a= $m_admin->getmadonhang();
		$madonhang = $a['max(madonhang)'];
		$masach = $_POST['masach'];
		$soluong = $_POST['soluong'];
		$dongia = $_POST['dongia'];
		$them = $m_admin->themchitietdonhang($madonhang,$masach,$soluong,$dongia);
		// header('location:admin_donhang.php');
	}
		

}


?>
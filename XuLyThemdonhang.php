<?php
session_start();
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
	/*$array[]= $ngaygiao;
	$array[] = $makhachhang;
	$array[] = $masach;
	$array[] = $soluong;
	$array[] = $dongia;
	if($ngaygiao = '')
	{
		$_SESSON['errormess'] = "vui long nhap ngay";
	}
	else if($makhachhang= '')
	{
		$_SESSON['errormess'] = "vui lòng nhập mã";
	}
	else if($masach= '')
	{
		$_SESSON['errormess'] = "vui lòng nhập mã sách";
	}
	else if($soluong= ''&& $soluong<1 )
	{
		$_SESSON['errormess'] = "so luong khong dung";
	}
	else if($dongia = "")
	{
		$_SESSON['errormess'] = "vui lòng nhập đơn giá";
	}
	else if($a-$b<86400)
	{
		$_SESSON['errormess'] = "them khong thanh cong";
	}*/




	if($a-$b>=86400)
	{
		$result = $m_admin->themdonhang($makhachhang,$ngaygiao,$ngaydat,$diachi);
		$a= $m_admin->getmadonhang();
		$madonhang = $a['max(madonhang)'];
		$masach = $_POST['masach'];
		$soluong = $_POST['soluong'];
		$dongia = $_POST['dongia'];
		$them = $m_admin->themchitietdonhang($madonhang,$masach,$soluong,$dongia);
		
		header("location:admin_donhang.php");
	}
	else
	{
		$_SESSION['errormess'] = "sai thông tin";
		header("location:themdonhang.php");
	}
}


?>
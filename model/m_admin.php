<?php
include('database.php');
class M_admin extends database{
	function getlistsach(){
		$sql = "SELECT * from sach ";
		return $this->get_list($sql);
	}
	function getlistchude()
	{
		$sql = "SELECT * from chude";
		return $this->get_list($sql);
	}
	
	function getlistnxb()
	{
		$sql = "SELECT * from nhaxuatban";
		return $this->get_list($sql);
	}
	function themsach($tensach,$tenchude,$tennxb,$giaban,$ngay,$name,$mota)
	{
		$sql = "INSERT into sach values(NULL,'$tensach','$giaban','$mota','$ngay','$name','$tenchude','$tennxb','1')" ;
		return $this->execute($sql);
	}
	function xoasach($masach)
	{
		$sql = "DELETE from sach where masach = '$masach'";
		return $this->execute($sql);
	}
	function getSachByID($masach)
	{
		$sql = "SELECT * from sach where MaSach = $masach";
		return $this->get_row($sql);
	}
	function suasach($tensach,$tenchude,$tennxb,$giaban,$name,$mota,$ngay,$masach)
	{
		if($name=='')
			$sql="UPDATE sach set TenSach =N'$tensach' ,Giaban ='$giaban' , Mota=N'$mota' , MaChuDe='$tenchude' , MaNXB = '$tennxb',NgayCapNhat ='$ngay' where MaSach='$masach' ";
		else
			$sql ="UPDATE sach set TenSach =N'$tensach' , Giaban ='$giaban' , Mota=N'$mota', MaChuDe='$tenchude' , MaNXB = '$tennxb' , AnhBia = '$name',NgayCapNhat ='$ngay' where MaSach='$masach'  " ;
		return $this->execute($sql);
	}
}

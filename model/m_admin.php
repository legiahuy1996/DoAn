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
	
	function getlisttacgia()
	{
		$sql = "SELECT * from tacgia";
		return $this->get_list($sql);
	}
	function getlistnxb()
	{
		$sql = "SELECT * from nhaxuatban";
		return $this->get_list($sql);
	}
	function themsach($tensach,$tenchude,$tennxb,$giaban,$ngay,$name,$mota)
	{
		$sql = "INSERT into sach values(NULL,N'$tensach','$giaban',N'$mota','$ngay','$name','$tenchude','$tennxb','1')" ;
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
	function getChudeByID($machude)
	{
		$sql = "SELECT * from chude where machude = $machude";
		return $this->get_row($sql);
	}
	function themchude($tenchude)
	{
		$sql = "INSERT into chude values(NULL,N'$tenchude')" ;
		return $this->execute($sql);
	}
	function xoachude($machude)
	{
		$sql = "DELETE from chude where machude = '$machude'";
		return $this->execute($sql);
	}
	function suachude($machude,$tenchude)
	{
		$sql = "UPDATE chude set tenchude =N'$tenchude' where machude = '$machude' ";
		return $this->execute($sql);
	}
	function getNXBByID($ma)
	{
		$sql = "SELECT * from nhaxuatban where MaNXB = $ma";
		return $this->get_row($sql);
	}
	function suanxb($ma,$ten,$diachi,$SDT)
	{
		$sql = "UPDATE nhaxuatban set TenNXB = N'$ten', Diachi = N'$diachi',SDT = $SDT where MaNXB = $ma";
		return $this->execute($sql);
	}
	function themsdt($tennxb,$diachi,$sdt)
	{
		$sql = "INSERT into nhaxuatban values(NULL,N'$tennxb',N'$diachi','$sdt')";
		return $this->execute($sql);
	}
	function xoanxb($ma)
	{
		$sql ="DELETE from nhaxuatban where MaNXB = $ma";
		return $this->execute($sql);
	}
	function themtacgia($tentacgia,$diachi,$sdt,$tieusu)
	{
		$sql = "INSERT into tacgia values(NULL,N'$tentacgia',N'$diachi',N'$tieusu',$sdt)" ;
		return $this->execute($sql);
	}
	function xoatacgia($ma)
	{
		$sql ="DELETE from tacgia where MaTacGia = $ma";
		return $this->execute($sql);
	}
}

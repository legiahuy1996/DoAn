<?php
include('database.php');
class M_index extends database{
	function getlistsachmoi($start,$limit){
		$sql = "SELECT * from sach where Moi =1 limit $start,$limit";
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
	function getlistnhaxuatban()
	{
		$sql = "SELECT * from nhaxuatban";
		return $this->get_list($sql);
	}
	function getTotalRecordSach(){
		$sql = "SELECT count(*)as Totalrecord from sach where Moi=1";
		return $this->get_row($sql);
	}
	function getSachByChuDe($machude,$start,$limit)
	{
		$sql = "SELECT * from sach where MaChuDe =$machude limit $start,$limit";
		return $this->get_list($sql);
	}
	function getChudeByID($machude)
	{
		$sql ="SELECT * from chude where machude = $machude";
		return $this->get_row($sql);

	}
	function getTotalRecordSachByChude($machude)
	{
		$sql = "SELECT count(*) as Totalrecord from sach where MachuDe = $machude";
		return $this->get_row($sql);
	}
	function getSachByID($masach)
	{
		$sql = "SELECT * from sach where MaSach = $masach";
		return $this->get_row($sql);
	}
	function getNXBByID($manxb)
	{
		$sql = "SELECT * from nhaxuatban where MaNXB=$manxb";
		return $this->get_row($sql);
	}
	function getTacGiafromThamGia($masach)
	{
		$sql ="SELECT TenTG FROM `tacgia` WHERE MaTacGia in (select MaTacGia from thamgia tg INNER JOIN sach s on s.MaSach = tg.MaSach WHERE s.MaSach=$masach)";
		return $this->get_list($sql);
	}
	function getSachByNXB($manxb,$start,$limit)
	{
		$sql = "SELECT * from sach where MaNXB = $manxb limit $start,$limit";
		return $this->get_list($sql);
	}
	function getTotalRecordSachByNXB($manxb)
	{
		$sql = "SELECT count(*) as Totalrecord from sach where MaNXB = $manxb";
		return $this->get_row($sql);
	}
	function getSachByTacGia($matacgia,$start,$limit)
	{
		$sql = "SELECT * from sach where MaSach in (select s.MaSach from thamgia tg INNER JOIN sach s on s.MaSach = tg.MaSach where MaTacGia=$matacgia) limit $start,$limit";
		return $this->get_list($sql);
	}
	
	function getTotalRecordSachByTacgia($matacgia)
	{
		$sql = "SELECT count(*) as Totalrecord from tacgia where MaTacGia = $matacgia";
		return $this->get_row($sql);
	}
	function getTacGiaByID($matacgia)
	{
		$sql = "SELECT * from tacgia where MaTacGia =$matacgia";
		return $this->get_row($sql);
	}
	function DangNhap($username,$password)
	{
		$sql = "SELECT * from khachhang where taikhoan = '$username' && matkhau ='$password'";
		return $this->get_row($sql);
	}
	function suataikhoan($hoten,$matkhau,$makh,$email)
	{
		$sql = "UPDATE khachhang set TenKH =N'$hoten',matkhau='$matkhau',email = '$email' where MaKH=$makh";
		 $this->execute($sql);

	}
	function DangKy($username,$password,$email,$phone,$address,$fullname,$birthday,$gioitinh)
	{
		$sql = "INSERT into khachhang VALUES(NULL,N'$fullname','$birthday','$gioitinh','$phone','$username','$password','$email',N'$address','kh')";
		$kq = $this->execute($sql);
		return $kq;
	}
	function getlistKhachHang()
	{
		$sql = "SELECT * from khachhang";
		return $this->get_list($sql);

	}
	function getKHByName($name)
	{	
		$sql= "SELECT * from khachhang where taikhoan ='$name'";
		return $this->get_row($sql);

	}
	function dathang($MaKH,$diachi,$ngaydat,$ngaygiao)
	{

		
		$sql = "INSERT into donhang VALUES('$MaKH','$MaKH','$ngaygiao','$ngaydat',NULL,true,'$diachi',N'Tiền mặt')";
		return $this->execute($sql);
	}
	function getlistdonhangbyID($id)
	{
		$sql = "SELECT * from donhang where Madonhang = '$id' ";
		return $this->get_row($sql);
	}
	function gettongsachnxb($ma)
	{
		$sql = "SELECT count(*) from sach where MaNXB = $ma";
		return $this->get_row($sql);
	}
	
}
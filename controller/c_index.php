<?php 
include('model/m_index.php');
class C_index{
	
	function getlistsachmoi($page){
		$m_index = new M_index();
		$limit =6 ;
		$start = ($page-1)*$limit;
		$result = $m_index->getlistsachmoi($start,$limit);
		return $result;

	}
	function getlistchude(){
		$m_index = new M_index();
		$result = $m_index->getlistchude();
		return $result;

	}
	function getlisttacgia(){
		$m_index = new M_index();
		$result = $m_index->getlisttacgia();
		return $result;

	}

	function getlistnhaxuatban(){
		$m_index = new M_index();
		$result = $m_index->getlistnhaxuatban();
		return $result;

	}
	function getTotalRecordSach(){
			$m_index = new M_index();
			$total_record = $m_index->getTotalRecordSach();
			return $total_record;
		

	}
	function getSachByChuDe($machude,$current_page)
	{
		$m_index = new M_index();
		$limit =6 ;
		$start = ($current_page-1)*$limit;
		$result = $m_index->getSachByChuDe($machude,$start,$limit);
		return $result;
	}
	function getChudeByID($machude)
	{
		$m_index = new M_index();
		$result = $m_index->getChudeByID($machude);
		return $result;
	}
	function getTotalRecordSachByChude($machude)
	{
		$m_index = new M_index();
		$result = $m_index->getTotalRecordSachByChude($machude);
		return $result;
	}
	function getSachByID($masach)
	{
		$m_index = new M_index();
		$result = $m_index->getSachByID($masach);
		return $result;
	}
	
	function getTacGiafromThamGia($masach)
	{
		$m_index= new M_index();
		$result = $m_index->getTacGiafromThamGia($masach);
		return $result;
	}
	function getSachByNXB($manxb,$current_page)
	{
		$m_index = new M_index();
		$limit =6 ;
		$start = ($current_page-1)*$limit;
		$result = $m_index->getSachByNXB($manxb,$start,$limit);
		return $result;
	}
	function getNXBByID($manxb)
	{
		$m_index = new M_index();
		$result = $m_index->getNXBByID($manxb);
		return $result;
	}
	function getTotalRecordSachByNXB($manxb)
	{
		$m_index = new M_index();
		$result = $m_index->getTotalRecordSachByNXB($manxb);
		return $result;
	}
	function getSachByTacGia($matacgia,$current_page){
		$m_index = new M_index();
		$limit =6 ;
		$start = ($current_page-1)*$limit;
		$result = $m_index->getSachByTacGia($matacgia,$start,$limit);
		return $result;
	}
	function getTotalRecordSachByTacgia($matacgia)
	{

		$m_index = new M_index();
		$result = $m_index->getTotalRecordSachByTacgia($matacgia);
		return $result;
	}
	function getTacGiaByID($matacgia)
	{
		$m_index = new M_index();
		$result = $m_index->getTacGiaByID($matacgia);
		return $result;
	}
	function DangNhap($username,$password)
	{
		$m_index = new M_index();
		$result = $m_index->DangNhap($username,md5($password));
		return $result;
	}
	function suataikhoan($hoten,$matkhau,$makh,$email)
	{
		$m_index = new M_index();
		$result = $m_index->suataikhoan($hoten,md5($matkhau),$makh,$email);
		return $result;
	}
	function DangKy($username,$password,$email,$phone,$address,$fullname,$birthday,$gioitinh)
	{
		$m_index = new M_index();
		$result = $m_index->DangKy($username,md5($password),$email,$phone,$address,$fullname,$birthday,$gioitinh);
		return $result;

	}
	function getlistKhachHang()
	{
		$m_index = new M_index();
		$result = $m_index->getlistKhachHang();
		return $result;
	}
	function getKHByName($name)
	{
		$m_index = new M_index();
		$result = $m_index->getKHByName($name);
		return $result;
	}
	function dathang($MaKH,$diachi,$ngaydat,$ngaygiao)
	{
		$m_index = new M_index();
		$result = $m_index->dathang($MaKH,$diachi,$ngaydat,$ngaygiao);
		return $result;
	}
	function getlistdonhang($id)
	{
		$m_index = new M_index();
		$result = $m_index->getlistdonhangbyID($id);
		return $result;
	}
	function gettongsachnxb($ma)
	{
		$m_index = new M_index();
		$result = $m_index->gettongsachnxb($ma);
		return $result;
	}
}
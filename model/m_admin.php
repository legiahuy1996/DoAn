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
	function getIDchudebyname($tenchude)
	{
		$sql = "SELECT machude from chude where tenchude = 'Âm nhạc'";
		return $this->get_row($sql);
	}
	function getIDnxbbyname($name)
	{
		$sql = "SELECT manxb from nhaxuatban where TenNXB = '$name'";
		return $this->get_row($sql);
	}
	function getlistnxb()
	{
		$sql = "SELECT * from nhaxuatban";
		return $this->get_list($sql);
	}
	function themsach($tensach,$machude,$manxb,$giaban,$ngay,$name,$mota)
	{
		$sql = "INSERT into sach values('$tensach','$giaban','$ngay','$name','$machude','$manxb','1')" ;
		return $this->execute($sql);
	}
}

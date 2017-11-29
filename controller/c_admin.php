<?php 
include('model/m_admin.php');
class C_admin{
	function getlistsach()
	{
		$m_admin = new M_admin();
		return $m_admin->getlistsach();

	}
	function getlistchude()
	{
		$m_admin = new M_admin();
		return $m_admin->getlistchude();

	}
	function getlistnxb()
	{
		$m_admin = new M_admin();
		return $m_admin->getlistnxb();

	}
	function getIDnxbbyname($name)
	{
		$m_admin = new M_admin();
		return $m_admin->getIDnxbbyname($name);
	}
	function getIDchudebyname($tenchude)
	{
		$m_admin = new M_admin();
		return $m_admin->getIDchudebyname($tenchude);
	}
	function themsach($tensach,$machude,$manxb,$giaban,$name,$mota)
	{
		$m_admin = new M_admin();
		$day = getdate();
		$ngay = $day['mday']."-".$day['mon']."-".$day['year'];
		return $m_admin->themsach($tensach,$machude,$manxb,$giaban,$ngay,$name,$mota);
	}

}

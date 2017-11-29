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
	function themsach($tensach,$tenchude,$tennxb,$giaban,$name,$mota,$ngay)
	{
		$m_admin = new M_admin();
	

		return $m_admin->themsach($tensach,$tenchude,$tennxb,$giaban,$ngay,$name,$mota);
	}
	function xoasach($masach)
	{
		$m_admin = new M_admin();
		return $m_admin->xoasach($masach);
	}
	function suasach($tensach,$tenchude,$tennxb,$giaban,$name,$mota,$ngay,$masach)
	{
		$m_admin = new M_admin();
		return $m_admin->suasach($tensach,$tenchude,$tennxb,$giaban,$name,$mota,$ngay,$masach);
	}
	function getSachByID($masach)
	{
		$m_admin = new M_admin();
		return $m_admin->getSachByID($masach);
	}

}

<?php
include('model/m_admin.php');
if(isset($_POST['submit']))
{
	$m_admin = new M_admin();
$tentacgia = $_POST['tentacgia'];
$diachi = $_POST['diachi'];
$sdt = $_POST['sdt'];
$tieusu=$_POST['tieusu'];

$a= $m_admin->themtacgia($tentacgia,$diachi,$sdt,$tieusu);
header('location:admin_tacgia.php');

}

?>
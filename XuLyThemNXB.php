<?php
include('model/m_admin.php');
$tennxb = $_POST['tennxb'];
$diachi= $_POST['diachi'];
$sdt = $_POST['sdt'];
$m_admin = new M_admin();
$m_admin->themsdt($tennxb,$diachi,$sdt);
header('location:admin_nxb.php');

?>
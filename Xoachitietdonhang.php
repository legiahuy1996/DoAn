<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$mact = $_GET['mact'];
$a = $m_admin->xoachitiet($mact);
header('location:admin_donhang.php');
?>

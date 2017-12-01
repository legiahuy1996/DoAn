<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$makh = $_GET['makh'];
$a = $m_admin->xoakhachhang($makh);
header('location:admin_khachhang.php');
?>
<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$manxb = $_GET['manxb'];
$tennxb = $_POST['tennxb'];
$diachi = $_POST['diachi'];
$SDT = $_POST['SDT'];


$m_admin->suanxb($manxb,$tennxb,$diachi,$SDT);
header('location:admin_nxb.php');
?>
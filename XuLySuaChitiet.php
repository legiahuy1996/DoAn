<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$mact= $_GET['mact'];
$madonhang = $_POST['madonhang'];
$masach = $_POST['masach'];
$soluong = $_POST['soluong'];
$dongia = $_POST['dongia'];
$a = $m_admin->suachitiet($mact,$madonhang,$masach,$soluong,$dongia);
header('location:admin_donhang.php');
?>
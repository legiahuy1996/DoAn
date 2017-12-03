<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$madonhang= $_GET['madonhang'];
$masach = $_POST['masach'];
$soluong = $_POST['soluong'];
$dongia = $_POST['dongia'];
$a = $m_admin->themchitietdonhang($madonhang,$masach,$soluong,$dongia);
header('location:admin_donhang.php');
?>
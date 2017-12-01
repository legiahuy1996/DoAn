<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$matacgia = $_GET['matacgia'];
$tentacgia = $_POST['tentacgia'];
$diachi = $_POST['diachi'];
$dienthoai = $_POST['sdt'];
$tieusu = $_POST['tieusu'];

$a =$m_admin->suatacgia($matacgia,$tentacgia,$tieusu,$diachi,$dienthoai);
header('location:admin_tacgia.php');
?>
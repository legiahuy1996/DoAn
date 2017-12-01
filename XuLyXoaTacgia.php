<?php
$matacgia = $_GET['matacgia'];
include('model/m_admin.php');
$m_admin = new M_admin();
$m_admin->xoatacgia($matacgia);
header('location:admin_tacgia.php');
?>
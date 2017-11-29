<?php
include('model/m_admin.php');
$machude = $_GET['machude'];
$m_admin = new M_admin();
$machude = $m_admin->xoachude($machude);
header('location:admin_chude.php');
?>
<?php
include('model/m_admin.php');
$manxb = $_GET['manxb'];
$m_admin = new M_admin();
 $m_admin->xoanxb($manxb);
header('location:admin_nxb.php');
?>
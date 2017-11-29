<?php
include('controller/c_admin.php');
$masach = $_GET['masach'];
$c_admin = new C_admin();
$result = $c_admin->xoasach($masach);
header('location:admin.php');
 
?>
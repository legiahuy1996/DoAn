<?php
include('model/m_admin.php');
$m_admin = new M_admin();
if(isset($_POST['submit123']))
{
$tennxb = $_POST['tennxb'];
$diachi= $_POST['diachi'];
$sdt = $_POST['sdt'];


$a = $m_admin->themnxb($tennxb,$diachi,$sdt);
header('location:admin_nxb.php'); 

}


?>
<?php
include('model/m_admin.php');
$m_admin = new M_admin();
$machude = $_GET['machude'];
$tenchude = $_POST['tenchude'];

$a =$m_admin->suachude($machude,$tenchude);
header('location:admin_chude.php');
?>
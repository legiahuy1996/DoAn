<?php
include('model/m_admin.php');
$tenchude = $_POST['tenchude'];
$m_admin = new M_admin();
$m_admin->themchude($tenchude);
header('location:admin_chude.php');

?>
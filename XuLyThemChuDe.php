<?php
include('model/m_admin.php');
if(isset($_POST['submit']))
{
	$tenchude = $_POST['tenchude'];
$m_admin = new M_admin();
$m_admin->themchude($tenchude);
header('location:admin_chude.php');
}


?>
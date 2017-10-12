<?php 
session_start();
$id = $_GET['masach'];
unset($_SESSION['giohang'][$id]);
header("location:giohang.php");

?>
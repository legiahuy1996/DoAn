<?php 
session_start();
$id = $_GET['masach'];
$index = $_SERVER['HTTP_REFERER'];
unset($_SESSION['giohang'][$id]);
header('location:'.$_SERVER['HTTP_REFERER'])
?>
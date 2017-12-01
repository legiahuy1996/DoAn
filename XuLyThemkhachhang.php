<?php
session_start();

include('model/m_admin.php');

if(isset($_POST['submit123']))
{
	$m_admin = new M_admin();
$tenkhachhang = $_POST['tenkhachhang'];
$diachi = $_POST['diachi'];
$sdt = $_POST['sdt'];
$taikhoan=$_POST['taikhoan'];
$email = $_POST['email'];
$ngaysinh = $_POST['ngaysinh'];
$gioitinh = $_POST['gioitinh'];
if($gioitinh == "nam")
	$gioitinh = 1;
else
	$gioitinh = 0;
if($_POST['password']==$_POST['passwordAgain'])
{
	$matkhau =md5($_POST['password']);
	// var_dump($gioitinh);
	// var_dump($taikhoan,$matkhau,$email,$sdt,$diachi,$tenkhachhang,$ngaysinh,$gioitinh);
	 $a= $m_admin->DangKy($taikhoan,$matkhau,$email,$sdt,$diachi,$tenkhachhang,$ngaysinh,$gioitinh);
	header('location:admin_khachhang.php');
}
else
{
	$_SESSION['err'] = "Mật khẩu nhập lại không đúng";
	header('location:Themkhachhang.php');
}





}
?>
<?php

$username = $_POST['Username'];
$password = $_POST['password'];
$repassword = $_POST['passwordAgain'];
$fullname = $_POST['fullname'];
$email = $_POST['email'];
$ngaysinh = $_POST['birthdate'];
$phone = $_POST['phone'];
$address=$_POST['address'];
$aray = array();
$aray[]= $username;
$aray[]=$password;
$aray[]=$fullname;
$aray[]=$email;
$aray[]=$ngaysinh;
$aray[]=$phone;
$aray[]=$address;


if($_POST['sex']=='nam')
{

	$_POST['sex']=1;
}
else
{
	$_POST['sex']=2;
}
$gioitinh=$_POST['sex'];
$aray[]=$gioitinh;
$kiemtratrung = $c_index->getlistKhachHang();
foreach ($kiemtratrung as $key => $value) {
	if($value['taikhoan']==$username)
	{
		$_SESSION['errormess']= "Tài khoản đã tồn tại!!";	
	}
	elseif($value['email']==$email)
	{
		$_SESSION['errormess']= "Email đã tồn tại!!";	
	}	
}
if($username == '' && $password == '')
 {

 	$_SESSION['errormess']= "Vui lòng nhập đầy đủ tài khoản và mật khẩu!!";
 	
 }
 if($password != $repassword)
 {
 	$_SESSION['errormess'] = "nhập lại mật khẩu không chính xác!!";
 }
 if($email== '')
 {
 	$_SESSION['errormess'] = "Vui lòng nhập email!!";
 }
 if($ngaysinh== '')
 {
 	$_SESSION['errormess'] = "Vui lòng nhập ngày sinh!!";
 }
 if($address== '')
 {
 	$_SESSION['errormess'] = "Vui lòng nhập địa chỉ!!";
 }
if($phone== '')
 {
 	$_SESSION['errormess'] = "Vui lòng nhập số điện thoại!!";
 }
 else
 {

 	var_dump($aray);
 	$ketqua = $c_index->DangKy($username,$password,$email,$phone,$address,$fullname,$ngaysinh,$gioitinh);
 	if(isset($_SESSION['errormess']))
 	{
 		unset($_SESSION['errormess']);


 	}
 	
 	header('location:index.php');
 	$_SESSION['ketqua'] = true;
 }

?>
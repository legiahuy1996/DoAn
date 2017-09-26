<?php
$username = $_POST['name'];
$password = $_POST['password'];
$repassword = $_POST['passwordAgain'];
$email = $_POST['email'];
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
 else
 {

 	$ketqua = $c_index->DangKy($username,$password,$email);
 	if(isset($_SESSION['errormess']))
 	{
 		unset($_SESSION['errormess']);


 	}

 	header('location:index.php');
 	$_SESSION['ketqua'] = true;
 }

?>
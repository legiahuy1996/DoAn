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
	$_POST['sex']=0;
}
$gioitinh=$_POST['sex'];
$aray[]=$gioitinh;
// var_dump($aray); exit;
$kiemtratrung = $c_index->getlistKhachHang();
$checkfullname =str_replace(" ","", $fullname);
$checkusername =str_replace(" ","", $username);
$checkpassword = str_replace(" ","", $password);
$checksdt =str_replace(" ","", $phone);
$checkdiachi =str_replace(" ","", $address);
$checkemail =str_replace(" ","", $email);
$c = getdate();

	$ngayhientai = $c['year'].'-'.$c['mon'].'-'.$c['mday'];
	$presentday = strtotime($ngayhientai);
	$birthday = strtotime($ngaysinh);

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
if(strlen($checkusername)<=0)
 {

 	$_SESSION['errormess']= "Chưa nhập tài khoản";
 	
 }
 else if(strlen($checkpassword)<=0)
 {
 	$_SESSION['errormess']= "Chưa nhập mật khẩu";
 }
 else if(strlen($checkfullname)<=0)
 {

 	$_SESSION['errormess'] = "Chưa nhập họ tên!!";
 }

 else if($password != $repassword)
 {
 	$_SESSION['errormess'] = "nhập lại mật khẩu không chính xác!!";
 }
 else if(strlen($checkemail)<=0)
 {
 	$_SESSION['errormess'] = "Vui lòng nhập email!!";
 }
 else if($ngaysinh== '')
 {
 	$_SESSION['errormess'] = "Vui lòng nhập ngày sinh!!";
 }
 else if(strlen($checksdt)<=0 )
 {
 	$_SESSION['errormess'] = "Vui lòng nhập địa chỉ!!";
 }
else if(strlen($checksdt<= 0))
{
 	$_SESSION['errormess'] = "Vui lòng nhập số điện thoại!!";
}
// else if($presentday - $birthday <567648000)
// {
// 	$_SESSION['errormess']="Bạn phải lớn hơn 18 tuổi để có thể tham gia mua hàng tại muasach.tk";
// }
else
{
	
// var_dump($presentday - $birthday); exit;
	 	// var_dump($aray);
	
	
		$ketqua = $c_index->DangKy($username,$password,$email,$phone,$address,$fullname,$ngaysinh,$gioitinh);
		if($ketqua)
		{
			if(isset($_SESSION['errormess']))
			{
				unset($_SESSION['errormess']);


			}



			header('location:index.php');
			$_SESSION['ketqua'] = true;
		}
		else
		{

			if(isset($_SESSION['errormess']))
			{
				
				$_SESSION['errormess'] = "Email khong hop le!!";

			}

		}
		
}

?>
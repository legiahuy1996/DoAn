<?php
include('controller/c_admin.php');
$c_admin = new C_admin();
if(isset($_POST["submit"]))
{
	$tensach = $_POST["tensach"];
	$tennxb=$_POST["tennxb"];
	$tenchude=$_POST["chude"];
	$giaban = $_POST["giaban"];
	$mota = $_POST["mota"];
	$arrImg = array("image/png", "image/jpeg", "image/bmp");
	$errFile = $_FILES["hinh"]["error"];
	if ($errFile>0)
		$err .="Lỗi file hình <br>";
	else
	{
		$type = $_FILES["hinh"]["type"];
		if (!in_array($type, $arrImg))
			$err .="Không phải file hình <br>";
		else
		{	
			$temp = $_FILES["hinh"]["tmp_name"];
			$name = $_FILES["hinh"]["name"];
			if (!move_uploaded_file($temp, "HinhAnhSP/".$name))
				$err .="Không thể lưu file<br>";

		}
	}
	

	
	$day = getdate();
		$ngay = $day['year']."-".$day['mon']."-".$day['mday'];
	 $result = $c_admin->themsach($tensach,$tenchude,$tennxb,$giaban,$name,$mota,$ngay);
	 	
		
	 header('location:admin.php');
}
?>

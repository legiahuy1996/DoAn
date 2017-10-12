<?php
session_start();


include('controller/c_index.php');
$c_index = new C_index();
$id = $_GET['id'];
$ketqua = $c_index->getSachByID($id);
$tongso=0;
if(!isset($_SESSION['giohang'][$id]))
{	
	
	$masach = $ketqua['MaSach'];
	$tensach = $ketqua['TenSach'];
	$soluong =1; 
	$Giaban = $ketqua['Giaban'];
	$thanhtien = $soluong * $Giaban;
	$anhbia = $ketqua['AnhBia'];
	$array = array('masach'=>$masach,'tensach'=>$tensach,'soluong'=>$soluong,'Giaban'=>$Giaban,'thanhtien'=>$thanhtien,'anhbia'=>$anhbia);
	$_SESSION['giohang'][$id]=$array;
	
	foreach ($_SESSION['giohang'] as $key => $value) {
	 	$tongso+=$value['soluong'];

	}
	$_SESSION['tongso'] = $tongso;
	echo "(".$_SESSION['tongso'].")";

}
else
{
	$_SESSION['giohang'][$id]['soluong'] ++;
	$_SESSION['giohang'][$id]['thanhtien'] = $_SESSION['giohang'][$id]['Giaban'] *$_SESSION['giohang'][$id]['soluong'];
	foreach ($_SESSION['giohang'] as $key => $value) {
	 	$tongso+=$value['soluong'];
	}
		$_SESSION['tongso'] = $tongso;
echo "(".$_SESSION['tongso'].")";

}


?>
<script type="text/javascript">
	
</script>